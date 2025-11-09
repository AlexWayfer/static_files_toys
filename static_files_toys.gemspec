# frozen_string_literal: true

require_relative 'lib/static_files_toys/version'

Gem::Specification.new do |spec|
	spec.name          = 'static_files_toys'
	spec.version       = StaticFilesToys::VERSION
	spec.authors       = ['Alexander Popov']
	spec.email         = ['alex.wayfer@gmail.com']

	spec.summary       = 'Toys template for static (public) files of a web-application'
	spec.description   = <<~DESC
		Toys template for static (public) files of a web-application.
	DESC
	spec.license = 'MIT'

	spec.required_ruby_version = '>= 3.0', '< 4'

	github_uri = "https://github.com/AlexWayfer/#{spec.name}"

	spec.homepage = github_uri

	spec.metadata = {
		'bug_tracker_uri' => "#{github_uri}/issues",
		'changelog_uri' => "#{github_uri}/blob/v#{spec.version}/CHANGELOG.md",
		'documentation_uri' => "http://www.rubydoc.info/gems/#{spec.name}/#{spec.version}",
		'homepage_uri' => spec.homepage,
		'rubygems_mfa_required' => 'true',
		'source_code_uri' => github_uri,
		'wiki_uri' => "#{github_uri}/wiki"
	}

	spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

	spec.add_dependency 'highline', '~> 3.0'
	spec.add_dependency 'toys-core', '~> 0.17.0'
end
