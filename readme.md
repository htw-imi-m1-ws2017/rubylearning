
[![Build Status](https://travis-ci.org/htw-imi-m1-ws2017/rubylearning.svg?branch=master)](https://travis-ci.org/htw-imi-m1-ws2017/rubylearning)

# Rubylearning Project


This is a project that illustrates learning a programming language by writing unit tests.

The idea is to explore the language by writing tests - if the tests pass, your
example code is correct. See about/arrays.rb for an example.

to run all examples (test cases), simply type

    rake

or

    rspec about/\*.rb

You can run individual files with

    rspec about/<filename>.rb

## Getting started

### Installation

You need ruby installed.

First, you need to install the necessary dependencies using [bundler](http://bundler.io/).
If you haven't already installed the bundler gem, run

    gem install bundler

Then, run

    bundle

This will install all gems listed in `Gemfile` and creates Gemfile.lock stating the actual versions of the installed gems.

If you're using RVM, there's also a .ruby-gemset and .ruby-version file in the
repository so RVM should switch to the proper gemset when you change into the
directory.
