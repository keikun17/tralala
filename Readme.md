# Tralala

Mainly for speeding up Rails tests, A gem that exposes and marks the calls that
touches the database.

## Usage

dump in your your `lib` for now, then plop a `require 'tralala'` in your `test_helper.rb` /
`spec_helper.rb`

### TODO

* gemspec

### Future Features (Readme driven development)

* Record total time for all `ActiveRecord::ConnectionAdapters` related calls
 during test runs (maybe check how NewRelic does it)
