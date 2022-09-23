# Static Files Toys

[![Cirrus CI - Base Branch Build Status](https://img.shields.io/cirrus/github/AlexWayfer/static_files_toys?style=flat-square)](https://cirrus-ci.com/github/AlexWayfer/static_files_toys)
[![Codecov branch](https://img.shields.io/codecov/c/github/AlexWayfer/static_files_toys/main.svg?style=flat-square)](https://codecov.io/gh/AlexWayfer/static_files_toys)
[![Code Climate](https://img.shields.io/codeclimate/maintainability/AlexWayfer/static_files_toys.svg?style=flat-square)](https://codeclimate.com/github/AlexWayfer/static_files_toys)
[![Depfu](https://img.shields.io/depfu/AlexWayfer/benchmark_toys?style=flat-square)](https://depfu.com/repos/github/AlexWayfer/static_files_toys)
[![Inline docs](https://inch-ci.org/github/AlexWayfer/static_files_toys.svg?branch=main)](https://inch-ci.org/github/AlexWayfer/static_files_toys)
[![license](https://img.shields.io/github/license/AlexWayfer/static_files_toys.svg?style=flat-square)](https://github.com/AlexWayfer/static_files_toys/blob/main/LICENSE.txt)
[![Gem](https://img.shields.io/gem/v/static_files_toys.svg?style=flat-square)](https://rubygems.org/gems/static_files_toys)

Toys template for static (public) files of a web-application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'static_files_toys'
```

And then execute:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install static_files_toys
```

## Usage

```ruby
require 'static_files_toys'
expand StaticFilesToys::Template
```

## Development

After checking out the repo, run `bundle install` to install dependencies.

Then, run `toys rspec` to run the tests.

To install this gem onto your local machine, run `toys gem install`.

To release a new version, run `toys gem release %version%`.
See how it works [here](https://github.com/AlexWayfer/gem_toys#release).

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/AlexWayfer/static_files_toys).

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
