# Change log
All notable changes to this project will be documented in this file.

## [Unreleased][unreleased]
### Features:
- Added ability to disable pkcs7 key generation with hiera-eyaml
- Added `gem_source` param

### Bugfixes:
- Install compatible version of HighLine when installing hiera-eyaml on Ruby 1.8

## [1.1.1] - 2014-11-21
### Bugfixes:
- Correct handling of `cmdpath` (using an array of paths instead of hardcoded
  path). Also adds `cmdpath` parameter
- Fix permissions on private key (604 was a typo)
- Add "Managed by puppet" header

## [1.1.0] - 2014-10-15
### Features:
- Added `eyaml`, `eyaml_datadir`, & `eyaml_extension` parameters to hiera class
  for configuring hiera-eyaml
- Added `hiera::datadir_manage` parameter to disable datadir management
- Added `hiera::logger` parameter to change logger
- Added `hiera::merge_behavior` parameter to change the hash merge behavior
- Added some spec tests
- Added new readme

### Bugfixes:
- Correct datadir regex `{}` matching

## [1.0.2] - 2014-05-01
- Remove swap files from package

## [1.0.1] - 2014-03-25
### Bugfixes:
- Readme tweak
- Use template instance variables to remove warnings

## [1.0.0] - 2014-02-27
### Features:
- `backends` parameter for an array of hiera backends
- `extra_config` parameter for a string of extra yaml config

### Bugfixes:
- Correct the yaml formatting

## [0.3.1] - 2013-06-17
### Bugfixes:
- Docs!

## [0.3.0] - 2013-06-17
### Features:
- PE + POSS support

### Bugfixes:
- Only ensure datadir if it does not have `%{.*}`

[unreleased]: https://github.com/hunner/puppet-hiera/compare/1.1.1...master
[1.1.1]: https://github.com/hunner/puppet-hiera/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/hunner/puppet-hiera/compare/1.0.2...1.1.0
[1.0.2]: https://github.com/hunner/puppet-hiera/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/hunner/puppet-hiera/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/hunner/puppet-hiera/compare/0.3.1...1.0.0
[0.3.1]: https://github.com/hunner/puppet-hiera/compare/0.3.0...0.3.1
[0.3.0]: https://github.com/hunner/puppet-hiera/compare/0.2.1...0.3.0
