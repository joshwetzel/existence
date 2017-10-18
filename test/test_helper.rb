require 'coveralls'
require 'existence'
require 'minitest/autorun'

Coveralls.wear!
SimpleCov.start { add_filter '/test' }
