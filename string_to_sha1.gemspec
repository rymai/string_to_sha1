# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_to_sha1/version'

Gem::Specification.new do |spec|
  spec.name          = "string_to_sha1"
  spec.version       = StringToSha1::VERSION
  spec.authors       = ["sylvani"]
  spec.email         = ["sylvani@laposte.net"]
  spec.description   = %q{This gem add a facility method to easily convert existing string to SHA1 hash.}
  spec.summary       = %q{Add SHA1 hashing from string}
  spec.homepage      = ""
  spec.license       = "MIT"

  #spec.files         = `git ls-files`.split($/)
  #spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  #spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #spec.add_development_dependency "bundler", "~> 1.3"
  #spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "guard-minitest"
end
