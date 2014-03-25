#!/usr/bin/env bats

@test "It should use Ruby 1.9.3-p545" {
  ruby -v | grep 1.9.3p545
}

@test "It should execute Ruby code" {
  ruby -e "puts 'Hello'" | grep Hello
}

@test "It should install Bundler" {
  which bundler
}
