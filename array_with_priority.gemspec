# -*- encoding: utf-8 -*-
require File.expand_path('../lib/array_with_priority/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Caius Durling"]
  gem.email         = ["caius@swedishcampground.com"]
  gem.description   = %q{An array with priority groups within it}
  gem.summary       = %q{Lets you add items to an array in priority to each other. Useful if you need to group a and b before c or d, but don't care about the order of a and b.}
  gem.homepage      = "http://github.com/caius/array_with_priority"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "array_with_priority"
  gem.require_paths = ["lib"]
  gem.version       = ArrayWithPriority::VERSION

  gem.add_dependency "active_support", ">= 2.1.0"
  gem.add_development_dependency "rspec", ">= 2.0"
end
