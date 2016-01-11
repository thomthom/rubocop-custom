# encoding: utf-8

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rubocop/custom/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-custom'
  spec.summary = 'Project based custom cops for Rubocop'
  spec.description = 'Project based custom cops for Rubocop.'
  spec.homepage = 'http://github.com/zhubert/rubocop-custom'
  spec.authors = ['Zack Hubert']
  spec.email = ['zhubert@gmail.com']
  spec.licenses = ['MIT']

  spec.version = RuboCop::Custom::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 1.9.3'

  spec.require_paths = ['lib']
  spec.files = Dir[
    'lib/**/*',
    '*.md',
    '*.gemspec',
    'Gemfile'
  ]
  spec.extra_rdoc_files = ['MIT-LICENSE.md', 'README.md']

  spec.add_development_dependency('rubocop', '~> 0.31')
end
