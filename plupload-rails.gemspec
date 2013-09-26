# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "plupload/rails/version"

Gem::Specification.new do |s|
  s.name        = "plupload-rails"
  s.version     = Plupload::Rails::VERSION
  s.authors     = ["Corin Langosch"]
  s.email       = ["info@corinlangosch.com"]
  s.homepage    = "https://github.com/gucki/plupload-rails"
  s.summary     = %Q{Integration of Plupload #{Plupload::VERSION} with the Rails asset pipeline}
  s.description = %Q{This gem integrates Plupload #{Plupload::VERSION} with the Rails asset pipeline.}
  s.licenses    = ["MIT", "GPL-2"]

  s.rubyforge_project = "plupload-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "rails", ">= 3.1"
end

