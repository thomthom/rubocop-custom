# RuboCop Custom

This is entirely derivative of [rubocop-rspec](https://github.com/nevir/rubocop-rspec), the primary difference is it's designed to let you host your Cops inside your project rather than in someone's Gem.

## Installation


In your `Gemfile` (or perhaps in a custom group)

```
gem 'rubocop-custom'
```

And modify your `.rubocop.yml`.

```
require: rubocop-custom
```

## Custom Cops

Make new cops and put them into `spec/cops` and they'll be loaded automatically.
