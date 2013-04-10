# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'catarse_campaignmonitor/version'

Gem::Specification.new do |gem|
  gem.name          = "catarse_campaignmonitor"
  gem.version       = CatarseCampaignmonitor::VERSION
  gem.authors       = ["Omar Ramos"]
  gem.email         = ["omar.ramos@gmail.com"]
  gem.description   = %q{Campaignmonitor integration with Catarse}
  gem.summary       = %q{Campaignmonitor integration with Catarse crowdfunding platform}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'createsend'
end
