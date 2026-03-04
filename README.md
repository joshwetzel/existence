# Existence

Lightweight presence and blank checks for Ruby without ActiveSupport.

## Installation
```ruby
gem "existence"
```

## Usage
Extends the following classes with presence and blank checks.

### Array
```ruby
[].present?        # => false
["a"].present?     # => true
[].blank?          # => true
["a"].blank?       # => false
```

### Hash
```ruby
{}.present?        # => false
{ a: 1 }.present?  # => true
{}.blank?          # => true
{ a: 1 }.blank?    # => false
```

### String
Blank if empty or whitespace-only.

```ruby
"".present?        # => false
"hello".present?   # => true
"  ".blank?        # => true
"hello".blank?     # => false
```

### Numeric
All numbers are present, including zero.

```ruby
0.present?         # => true
1.present?         # => true
0.blank?           # => false
1.blank?           # => false
```

### Symbol
```ruby
:foo.present?      # => true
:foo.blank?        # => false
```

### NilClass
```ruby
nil.present?       # => false
nil.blank?         # => true
```

### TrueClass / FalseClass
```ruby
true.present?      # => true
true.blank?        # => false
false.present?     # => false
false.blank?       # => true
```
