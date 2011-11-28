
module ClusterChef
  module CookbookUtils

    #
    # Helpers for saving node metadata
    #

    def self.node_changed!
      @node_changed = true
    end
    def node_changed! ; ClusterChef::CookbookUtils.node_changed! ; end

    def self.node_changed?
      !! @node_changed
    end
    def node_changed? ; ClusterChef::CookbookUtils.node_changed? ; end

    class ::Chef ; MIN_VERSION_FOR_SAVE = "0.8.0" ; end

    # Save the node, unless we're in chef-solo mode (or an ancient version)
    def save_node!(node)
      return unless node_changed?
      # taken from ebs_volume cookbook
      if Chef::VERSION !~ /^0\.[1-8]\b/
        if not Chef::Config.solo
          Chef::Log.info('Saving Node!!!!')
          node.save
        else
          Chef::Log.warn("Skipping node save since we are running under chef-solo.  Node attributes will not be persisted.")
        end
      else
        Chef::Log.warn("Skipping node save: Chef version #{Chef::VERSION} (prior to #{Chef::MIN_VERSION_FOR_SAVE}) can't save");
      end
    end

    #
    # Run state helpers
    #

    def run_state_includes?(hsh, state)
      Array(hsh[:run_state]).map(&:to_s).include?('start')
    end

    def startable?(hsh)
      run_state_includes?(hsh, :start)
    end

    #
    # Best public or private IP
    #

  end
end


class Chef::ResourceDefinition ; include ClusterChef::CookbookUtils ; end
class Chef::Resource           ; include ClusterChef::CookbookUtils ; end
class Chef::Recipe             ; include ClusterChef::CookbookUtils ; end
class Chef::Provider::NodeMetadata < Chef::Provider ; include ClusterChef::CookbookUtils ; end
