Gem::Specification.new do |spec|
  spec.name = 'integration_workflow'
  spec.version = '0.1.0'
  spec.authors = ['Kirill Shevchenko']
  spec.email = ['kirills167@gmail.com']

  spec.summary = 'A Ruby DSL for building integration workflows.'
  spec.description = spec.summary
  spec.homepage = 'https://github.com/kirillshevch/integration_workflow'
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/kirillshevch/integration_workflow'
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end

  spec.require_paths = ['lib']

  spec.add_development_dependency 'rspec'
end
