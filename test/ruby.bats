#!/usr/bin/env bats

@test "It should use Ruby 2.0.0-p353" {
  ruby -v | grep 2.0.0p353
}

@test "It should execute Ruby code" {
  ruby -e "puts 'Hello'" | grep Hello
}

@test "It should install Bundler" {
  which bundler
}
