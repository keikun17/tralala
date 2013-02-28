# Tralala

Mainly for speeding up Rails tests, A gem that exposes and marks the calls that
touches the database.

## Usage

Put `gem 'tralala'` in your `Gemfile` under `:group => 'test'`

### TODO

* gemspec

### Future Features (Readme driven development)

* Record total time for all `ActiveRecord::ConnectionAdapters` related calls
 during test runs (maybe check how NewRelic does it)
