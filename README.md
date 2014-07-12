Numbers to words
============

Description
----
##### Technical test for a London tech company
The challenge is to write a Ruby script that outputs every number from 1 (one) to 1,000,000 (one million) into words. I solved this with a recursive implementation.


Technologies used
----
* Ruby
* RSpec

How to test it
----

```sh
git clone git@github.com:sroop/one-million.git
cd one-million
rspec
```

How to run it
----

```sh
irb
require './lib/one_million'
(1..1000000).each { |num| puts number_to_words(num) }
```
