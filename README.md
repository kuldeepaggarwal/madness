## Madness

It is a simple library which:

1. Sorter: Sorts array of numbers by amount of '1' in its binary representation and numbers with identical amount of '1's should be ordered by decimal representation.
2. MaxMultiplier: Finds the combination of 4 digits in a row which gives the max multiplication.

### Prerequisite

* Ruby > 2.2.x

### Steps to setup

1. Clone the repo using `git clone git@github.com:kuldeepaggarwal/madness.git`
2. Run `gem install bundler`(skip if bundler is already present)
2. Run `bundle install`

### Sorter

`Sorter.sort(input, representation: 2, marker: '1', use_original_number: true)`

1. input: This is an array of numbers or anything which needs to be used for operations.
2. representation: Which number representation(binary, decimal, hexadecimal) for sorting. Defaults to `2`
3. marker: This is the value that will be used to count after the representation of a number. Defaults to `1`
4. use_original_number: It is a boolean field which will be denote whether the original value will be used for sorting when 2 inputs have same value after representation. Defaults to `true`

example:

```
Sorter.sort([7, 8, 3, 9]) # => [8, 3, 9, 7]  # 1000, 11, 1001, 111
Sorter.sort([7, 8, 3, 9], use_original_number: false) # => [8, 9, 3, 7]  # 1000, 1001, 11, 111
Sorter.sort([7, 8, 3, 9], marker: '0') # => [3, 7, 9, 8] # 11, 111, 1001, 1000
```

### MaxMultiplier

`MaxMultiplier.new(input, max_matchers: 4, matchers: 48..57, behaviour: :*).calculate`

1. input: This is an array of numbers or anything which needs to be used for operations.
2. max_matchers: Number of matchers before evaluation starts for the input, Defaults to `4`
3. matchers: This is a list of matchers which will test every input by calling `include?` method. Defaults to `48..57`(ASCII range of digits/numbers)
4. behaviour: It is a mathematical operation, in symbol form, that will be performed on a substring after successful matchers. Defaults to `*`

example:

```
MaxMultiplier.new('abc22345def').calculate # => 120(2 * 3 * 4 * 5)
MaxMultiplier.new('abc22345def', max_matchers: 5).calculate # => 240(2 * 2 * 3 * 4 * 5)
MaxMultiplier.new('abc22345def', behaviour: :+).calculate # => 14(2 + 3 + 4 + 5)
```

There is an executable file where you can play with other options(its like Rails console)

```sh
$ bin/madness
2.2.4 :001 > MaxMultiplier.new('abc22345def', behaviour: :+).calculate
 => 14
2.2.4 :002 >
```

### Testing

```shell
$ cd [path-to-project]
$ bundle install
$ bundle exec rspec .
```
