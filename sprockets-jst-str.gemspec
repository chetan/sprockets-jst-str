# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jst_str/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chetan Sarva"]
  gem.email         = ["chetan@pixelcop.net"]
  gem.description   = %q{Slurps template into a JavaScript string for use with Sprockets JST functionality}
  gem.summary       = %q{Slurps template into a JavaScript string for use with Sprockets JST functionality}
  gem.homepage      = "https://github.com/chetan/jst_str"

  gem.files         = Dir[ "lib/**/*.rb" ]
  gem.test_files    = Dir[ "test/**/*.rb" ]
  gem.name          = "jst_str"
  gem.require_paths = ["lib"]
  gem.version       = JstStr::VERSION

  gem.add_runtime_dependency "tilt", ">= 1.3.3"
  gem.add_runtime_dependency "sprockets", ">= 2.0.3"
end
