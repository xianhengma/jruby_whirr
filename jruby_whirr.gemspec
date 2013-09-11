# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jruby_whirr/version'

Gem::Specification.new do |spec|
  spec.name          = "jruby_whirr"
  spec.version       = JrubyWhirr::VERSION
  spec.authors       = ["Xianheng Ma"]
  spec.email         = ["xianheng.ma@gmail.com"]
  spec.description   = %q{jruby_whirr is a Jruby gem of Apache Whirr}
  spec.summary       = %q{jruby_whirr is a Jruby gem of Apache Whirr. Apache Whirr is a set of libraries for running cloud services.

Whirr provides:
A cloud-neutral way to run services. You don't have to worry about the idiosyncrasies of each provider. 
A common service API. The details of provisioning are particular to the service. 
Smart defaults for services. You can get a properly configured system running quickly, while still being able to override settings as needed. }
  spec.homepage      = "http://xianhengma.github.io/jruby_whirr"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
