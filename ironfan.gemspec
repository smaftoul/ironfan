# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ironfan"
  s.version = "4.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Infochimps"]
  s.date = "2012-09-24"
  s.description = "Ironfan allows you to orchestrate not just systems but clusters of machines. It includes a powerful layer on top of knife and a collection of cloud cookbooks."
  s.email = "coders@infochimps.com"
  s.extra_rdoc_files = [
    "LICENSE.md",
    "README.md"
  ]
  s.files = [
    ".gitignore",
    ".rspec",
    ".yardopts",
    "CHANGELOG.md",
    "Gemfile",
    "Guardfile",
    "LICENSE.md",
    "README.md",
    "Rakefile",
    "TODO.md",
    "VERSION",
    "chefignore",
    "config/client.rb",
    "config/proxy.pac",
    "config/ubuntu10.04-ironfan.erb",
    "config/ubuntu11.10-ironfan.erb",
    "ironfan.gemspec",
    "lib/chef/knife/bootstrap/centos6.2-ironfan.erb",
    "lib/chef/knife/bootstrap/ubuntu10.04-ironfan.erb",
    "lib/chef/knife/bootstrap/ubuntu11.10-ironfan.erb",
    "lib/chef/knife/cluster_bootstrap.rb",
    "lib/chef/knife/cluster_kick.rb",
    "lib/chef/knife/cluster_kill.rb",
    "lib/chef/knife/cluster_launch.rb",
    "lib/chef/knife/cluster_list.rb",
    "lib/chef/knife/cluster_proxy.rb",
    "lib/chef/knife/cluster_pry.rb",
    "lib/chef/knife/cluster_show.rb",
    "lib/chef/knife/cluster_ssh.rb",
    "lib/chef/knife/cluster_start.rb",
    "lib/chef/knife/cluster_stop.rb",
    "lib/chef/knife/cluster_sync.rb",
    "lib/chef/knife/ironfan_knife_common.rb",
    "lib/chef/knife/ironfan_script.rb",
    "lib/gorillib/resolution.rb",
    "lib/ironfan.rb",
    "lib/ironfan/broker.rb",
    "lib/ironfan/broker/computer.rb",
    "lib/ironfan/broker/drive.rb",
    "lib/ironfan/builder.rb",
    "lib/ironfan/deprecated.rb",
    "lib/ironfan/dsl.rb",
    "lib/ironfan/dsl/cloud.rb",
    "lib/ironfan/dsl/cluster.rb",
    "lib/ironfan/dsl/compute.rb",
    "lib/ironfan/dsl/ec2.rb",
    "lib/ironfan/dsl/facet.rb",
    "lib/ironfan/dsl/role.rb",
    "lib/ironfan/dsl/server.rb",
    "lib/ironfan/dsl/virtualbox.rb",
    "lib/ironfan/dsl/volume.rb",
    "lib/ironfan/headers.rb",
    "lib/ironfan/provider.rb",
    "lib/ironfan/provider/chef.rb",
    "lib/ironfan/provider/chef/client.rb",
    "lib/ironfan/provider/chef/node.rb",
    "lib/ironfan/provider/chef/role.rb",
    "lib/ironfan/provider/ec2.rb",
    "lib/ironfan/provider/ec2/ebs_volume.rb",
    "lib/ironfan/provider/ec2/elastic_ip.rb",
    "lib/ironfan/provider/ec2/key_pair.rb",
    "lib/ironfan/provider/ec2/machine.rb",
    "lib/ironfan/provider/ec2/placement_group.rb",
    "lib/ironfan/provider/ec2/security_group.rb",
    "lib/ironfan/provider/virtualbox.rb",
    "lib/ironfan/provider/virtualbox/machine.rb",
    "lib/ironfan/requirements.rb",
    "spec/ironfan/cluster_spec.rb",
    "spec/ironfan/facet_spec.rb",
    "spec/ironfan/server_slice_spec.rb",
    "spec/ironfan/server_spec.rb",
    "spec/ironfan_spec.rb",
    "spec/spec_helper.rb",
    "spec/spec_helper/dummy_chef.rb",
    "spec/test_config.rb",
    "tasks/chef_config.rake"
  ]
  s.homepage = "http://infochimps.com/labs"
  s.licenses = ["apachev2"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Ironfan allows you to orchestrate not just systems but clusters of machines. It includes a powerful layer on top of knife and a collection of cloud cookbooks."
  s.test_files = ["spec/ironfan_spec.rb", "spec/spec_helper/dummy_chef.rb", "spec/ironfan/cluster_spec.rb", "spec/ironfan/server_slice_spec.rb", "spec/ironfan/server_spec.rb", "spec/ironfan/facet_spec.rb", "spec/spec_helper.rb", "spec/test_config.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef>, [">= 0.10.4"])
      s.add_runtime_dependency(%q<fog>, ["~> 1.2"])
      s.add_runtime_dependency(%q<formatador>, ["~> 0.2"])
      s.add_runtime_dependency(%q<gorillib>, ["~> 0.4.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8"])
      s.add_development_dependency(%q<yard>, [">= 0.7"])
      s.add_development_dependency(%q<redcarpet>, [">= 2.1"])
      s.add_development_dependency(%q<oj>, [">= 1.2"])
      s.add_development_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<chef>, [">= 0.10.4"])
      s.add_dependency(%q<fog>, ["~> 1.2"])
      s.add_dependency(%q<formatador>, ["~> 0.2"])
      s.add_dependency(%q<gorillib>, ["~> 0.4.2"])
      s.add_dependency(%q<bundler>, ["~> 1.1"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.8"])
      s.add_dependency(%q<yard>, [">= 0.7"])
      s.add_dependency(%q<redcarpet>, [">= 2.1"])
      s.add_dependency(%q<oj>, [">= 1.2"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<chef>, [">= 0.10.4"])
    s.add_dependency(%q<fog>, ["~> 1.2"])
    s.add_dependency(%q<formatador>, ["~> 0.2"])
    s.add_dependency(%q<gorillib>, ["~> 0.4.2"])
    s.add_dependency(%q<bundler>, ["~> 1.1"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.8"])
    s.add_dependency(%q<yard>, [">= 0.7"])
    s.add_dependency(%q<redcarpet>, [">= 2.1"])
    s.add_dependency(%q<oj>, [">= 1.2"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end

