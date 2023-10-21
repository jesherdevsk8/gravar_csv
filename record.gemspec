# frozen_string_literal: true

require_relative 'lib/record/version'

Gem::Specification.new do |spec|
  spec.name = 'Record'
  spec.version = Record::VERSION
  spec.authors = ['Jesher']
  spec.email = ['jesherdevsk8@gmail.com']

  spec.summary = 'Record erros to csv file'
  spec.description = 'I just created this gem to write erros on csv'
  spec.homepage = ''
  spec.license = 'MIT'
  spec.required_ruby_version = '~> 3.2'

  spec.metadata['allowed_push_host'] = "TODO: Set to your gem server 'https://example.com'"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'bin'
  spec.executables = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rake', '~> 13.0'
  spec.add_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'rubocop', '~> 1.21'
end
