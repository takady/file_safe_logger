# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'file_safe_logger/version'

Gem::Specification.new do |spec|
  spec.name          = "file_safe_logger"
  spec.version       = FileSafeLogger::VERSION
  spec.authors       = ["Yuichi Takada"]
  spec.email         = ["takadyuichi@gmail.com"]
  spec.summary       = "FileSafeLogger enable you to keep logging even if log file is removed after initialize"
  spec.description   = "FileSafeLogger enable you to keep logging even if log file is removed after initialize"
  spec.homepage      = "https://github.com/takady/file_safe_logger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
