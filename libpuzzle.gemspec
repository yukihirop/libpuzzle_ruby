# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "libpuzzle/version"

Gem::Specification.new do |spec|
  spec.name          = "libpuzzle"
  spec.version       = Libpuzzle::VERSION
  spec.authors       = ["yukihirop"]
  spec.email         = ["te108186@gmail.com"]
  spec.summary       = 'A library to find similar pictures with libpuzzle'
  spec.description   = 'This is a C extension fro libpuzzle to find similar pictures with easy API'
  spec.homepage      = "https://github.com/tonytonyhan/libpuzzle_ruby"
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end
  spec.files         = Dir['lib/**/*.rb', 'ext/**/*.{h,c}']
  spec.extensions    = Dir['ext/extconf.rb']
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler", "~> 0.9.5"
  spec.add_development_dependency "minitest", "~> 5.7.0"
  spec.add_development_dependency "byebug", "~> 5.0.0" if RUBY_VERSION >= '2.0'
end
