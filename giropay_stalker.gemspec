# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "giropay_stalker/version"

Gem::Specification.new do |s|
  s.name        = "giropay_stalker"
  s.version     = GiropayStalker::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Lars Brillert"]
  s.email       = ["lars@railslove.com"]
  s.homepage    = "https://github.com/railslove/giropay_stalker"
  s.summary     = %q{Allows you to easily test a german bank code number for griopay support}
  s.description = %q{Allows you to easily test a german bank code number for griopay support}

  s.add_dependency "nokogiri"
  s.add_dependency "httparty"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
