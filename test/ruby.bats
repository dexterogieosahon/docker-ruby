#!/usr/bin/env bats

@test "It should use Ruby 2.0.0-p353" {
  docker run quay.io/aptible/ruby -v | grep 2.0.0p353
}

@test "It should run with -h as a default argument" {
  docker run quay.io/aptible/ruby | grep Usage:
}

@test "It should execute Ruby code" {
  docker run quay.io/aptible/ruby -e "puts 'Hello'" | grep Hello
}
