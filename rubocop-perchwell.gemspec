# frozen_string_literal: true

require_relative 'lib/rubocop/perchwell/version'

Gem::Specification.new do |spec|
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-faker'
  spec.add_development_dependency 'rubocop-ordered_methods'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-rails'
  spec.add_development_dependency 'rubocop-rake'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'rubocop-thread_safety'

  spec.authors                     = ['Martin Streicher']
  spec.bindir                      = 'exe'
  spec.description                 = 'Centralized configuration for Perchwell Rubocop rules.'
  spec.email                       = ['martin.streicher@perchwell.com']
  spec.executables                 = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files =
    Dir.chdir(File.expand_path(__dir__)) do
      `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    end

  spec.homepage                    = 'https://github.com/strikefromspace/rubocop-perchwell'
  spec.license                     = 'MIT'
  spec.metadata['changelog_uri']   = 'https://github.com/strikefromspace/rubocop-perchwell/blob/main/CHANGELOG.md'
  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/strikefromspace/rubocop-perchwell'
  spec.name                        = 'rubocop-perchwell'
  spec.require_paths               = ['lib']
  spec.required_ruby_version       = Gem::Requirement.new('>= 2.6.5')
  spec.summary                     = 'Centralized configuration for Perchwell Rubocop rules.'
  spec.version                     = Rubocop::Perchwell::VERSION
  spec.metadata['rubygems_mfa_required'] = 'true'
end
