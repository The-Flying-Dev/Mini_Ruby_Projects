# orders Directory

## Contents
```
Classes:
./lib/grubhub_order.rb
./lib/amazon_order.rb
./lib/online_order.rb (Empty file)

Tests:
./spec/grubhub_order_spec.rb
./spec/amazon_order_spec.rb
```

## Running Tests

* Navigate to this directory
* run `rspec`
* You should have 8 passing tests

## Questions
  1. What code is repeated between the two classes? 
  # => The methods confirmation and review
  1. How might we use a mixin to make this code better? 
  # => The mixin will contain the methods that are common to both classes and reduce the amount of code in those classes
