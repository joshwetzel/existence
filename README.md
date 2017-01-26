[![Gem Version](https://badge.fury.io/rb/existence.svg)](https://badge.fury.io/rb/existence)
[![Build Status](https://travis-ci.org/joshwetzel/existence.svg?branch=master)]
  (https://travis-ci.org/joshwetzel/existence)

# Existence
Existence is a simple Ruby library that exposes Active Support's `present?` and `blank?` methods to `Array`,
`FalseClass`, `Hash`, `NilClass`, and `TrueClass`. It is intended to provide these helper methods to projects that do
not include `ActiveSupport`. It is tested against the latest patch release for each minor version of Ruby 2.

## Installation
In your Gemfile, include the `existence` gem and then `bundle install`.

```ruby
gem 'existence'
```

## Usage
The same patterns used in `ActiveSupport` can be expected with `Existence`.

### `Array`
An array is `present?` if it has elements, and `blank?` if it does not.

```ruby
[].present? # => false
['test'].present? # => true
[].blank? # => true
['test'].blank? # => false
```

### `FalseClass`
`false` is never `present?` and always `blank?`.

```ruby
false.present? # => false
false.blank? # => true
```

### `Hash`
A hash is `present?` if it contains values, and `blank?` if it does not.

```ruby
{}.present? # => false
{ test: true }.present? # => true
{}.blank? # => true
{ test: true }.blank? # => false
```

### `NilClass`
`nil` is never `present?` and always `blank?`.

```ruby
nil.present? # => false
nil.blank? # => true
```

### `TrueClass`
`true` is always `present?` and never `blank?`.

```ruby
true.present? # => true
true.blank? # => false
```
