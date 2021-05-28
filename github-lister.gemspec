lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'github-lister/version'

Gem::Specification.new do |spec|
    spec.name          = "github-lister"
    spec.version       = GithubLister::VERSION
    spec.authors       = ["Tim Gurney aka Wolf"]
    spec.email         = ["wolf@tgwolf.com"]

    spec.summary       = "github-lister"
    spec.description   = "github-lister"
    spec.homepage      = "https://github.com/DevelopersToolbox/github-lister"
    spec.license       = "MIT"
    spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/DevelopersToolbox/github-lister"
    spec.metadata["changelog_uri"] = "https://github.com/DevelopersToolbox/github-lister/blob/master/CHANGELOG.md"

    # Specify which files should be added to the gem when it is released.
    # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
    # rubocop:disable Metrics/Layout/ExtraSpacing, Layout/SpaceAroundOperators
    spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
        `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    end
    # rubocop:enable Metrics/Layout/ExtraSpacing, Layout/SpaceAroundOperators

    spec.bindir        = "exe"
    spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]
end
