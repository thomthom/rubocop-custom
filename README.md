# RuboCop Custom

Let's say you work on a few projects and they all have different style preferences. What do you do if those particulars fall outside of those covered by the excellent RuboCop gem?

Extend it, per project, with custom cops.

## Installation

In your `Gemfile` (perhaps in a custom group)

```
gem 'rubocop-custom', require: false
```

And modify your `.rubocop.yml`.

```
require: rubocop-custom
```

## Custom Cops

Make new cops and put them into `spec/cops`, `app/cops`, or `cops` and they'll be loaded automatically.

For inspiration, check out [RuboCop's cops](https://github.com/bbatsov/rubocop/tree/master/lib/rubocop/cop) and [RuboCop-rspec's cops](https://github.com/nevir/rubocop-rspec/tree/master/lib/rubocop/cop/rspec).

## Acknowledgments

This is based heavily on [rubocop-rspec](https://github.com/nevir/rubocop-rspec).
