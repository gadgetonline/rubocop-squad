# The rubocop-perchwell Gem

The `rubocop-perchwell` gem provides a standard, baseline _Rubocop_ configuration for
all Ruby development at Perchwell. It defines a set of rules in its _.rubocop.yml_ and
wraps its dependencies, other Rubocop gems, into a single package.

`rubocop-perchwell` contains these cops:
* `rubocop-faker`
* `rubocop-ordered_methods`
* `rubocop-performance`
* `rubocop-rails`
* `rubocop-rake`
* `rubocop-rspec`
* `rubocop-thread_safety`

You can review the baseline configuration in this gem's [_.rubocop.yml_ file](https://github.com/RivingtonHoldings/rubocop-perchwell/blob/main/.rubocop.yml).

## Installation

Installation in any Ruby project is a snap. You can add
the `rubocop-perchwell` Rubocop configuration and its tools with
three lines of code.

First, add this line to your application's _Gemfile_...

```ruby
gem 'rubocop-perchwell', git: 'https://github.com/strikefromspace/rubocop-perchwell', branch: 'main'
```

... and then execute `bundle` in the shell:

```shell
bundle install
```

Next, create the file _.rubocop.yml_ in your project root directory and add this content:

```yaml
inherit_gem:
  rubocop-perchwell: .rubocop.yml
```

Rubocop configurations added via `inherit_gem` are prepended to the `inherit_from` directive. `inherit_gem` configurations are loaded first, followed by `inherit_from` (overriding the configurations from the gems). The remaining directives in the configuration file supersede any of the inherited configurations. (This means the configurations inherited from one or more gems have the lowest precedence of inheritance.)

## Usage

To find and fix _Rubocop_ violations in your code, run `rubocop -A` in your shell:

```shell
rubocop -A
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.

To install this gem onto your local machine, run `bundle exec rake install`.

To release a new version of this gem, update the version number in `version.rb` and run `bundle exec rake release`
to create a _git_ tag for the version and push all commits and tags to origin.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/strikefromspace/rubocop-perchwell.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
