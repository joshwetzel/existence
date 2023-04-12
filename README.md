[![Gem Version](https://badge.fury.io/rb/existence.svg)](https://badge.fury.io/rb/existence)

# Existence
Existence is a simple Ruby library that exposes Active Support's `present?` and `blank?` methods to the following
classes:
- `Array`
- `FalseClass`
- `Hash`
- `NilClass`
- `String`
- `TrueClass`

It is intended to provide these helper methods to projects that do not include `ActiveSupport`. It is tested against
the latest patch release for each minor version of Ruby 2.

## Installation
In your Gemfile, include the `existence` gem and then `bundle install`.

```ruby
gem 'existence'
```

## Usage
The same patterns used in `ActiveSupport` can be expected with `Existence`.

- An array is present if it has elements, and blank if it does not.
  ```ruby
  [].present? # => false
  [].blank? # => true
  ['test'].present? # => true
  ['test'].blank? # => false
  ```

- `false` is never present and always blank.
  ```ruby
  false.present? # => false
  false.blank? # => true
  ```

- A hash is present if it contains values, and blank if it does not.
  ```ruby
  {}.present? # => false
  {}.blank? # => true
  { test: true }.present? # => true
  { test: true }.blank? # => false
  ```

- `nil` is never present and always blank.
  ```ruby
  nil.present? # => false
  nil.blank? # => true
  ```

- A string is present if it contains non-whitespace characters, and blank if it does not.
  ```ruby
  ''.present? # => false
  ''.blank? # => true
  'test'.present? # => true
  'test'.blank? # => false
  ```

- `true` is always present and never blank.
  ```ruby
  true.present? # => true
  true.blank? # => false
  ```
