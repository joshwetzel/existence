# Existence

Lightweight presence and blank checks for Ruby without ActiveSupport.

## Installation
```ruby
gem "existence"
```

## Usage
```ruby
[].present?        # => false
["a"].present?     # => true
[].blank?          # => true
["a"].blank?       # => false

{}.present?        # => false
{ a: 1 }.present?  # => true
{}.blank?          # => true
{ a: 1 }.blank?    # => false

"".present?        # => false
"hello".present?   # => true
"  ".blank?        # => true  # strips whitespace
"hello".blank?     # => false

nil.present?       # => false
nil.blank?         # => true

0.present?         # => true
1.present?         # => true
0.blank?           # => false
1.blank?           # => false

:foo.present?      # => true
:foo.blank?        # => false

true.present?      # => true
true.blank?        # => false
false.present?     # => false
false.blank?       # => true
```

