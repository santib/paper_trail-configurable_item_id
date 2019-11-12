# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paper_trail/configurable_item_id/version'

Gem::Specification.new do |spec|
  spec.name          = 'paper_trail-configurable_item_id'
  spec.version       = PaperTrail::ConfigurableItemId::VERSION
  spec.authors       = ['Santiago Bartesaghi']
  spec.email         = ['sbartesaghi@hotmail.com']

  spec.summary       = 'Extension for PaperTrail to customize the item id in the versions table'
  spec.homepage      = 'https://github.com/santib/paper_trail-configurable_item_id'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/santib/paper_trail-configurable_item_id'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.76.0'
end
