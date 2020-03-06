# exercism

My solutions on exercism.io [![Build Status](https://travis-ci.org/hanksudo/exercism.svg?branch=master)](https://travis-ci.org/hanksudo/exercism)

## Python

```bash
# Installation
brew install python
pip install -U pytest

# Run test
pytest
```

## Kotlin, Java

```bash
# Installation
brew install openjdk, kotlin, gradle

# Run test
gradle test
```

## JavaScript

```bash
npm install
npm test
```

## Golang

```bash
# Installation
brew install go

# Run test
go test -v --bench . --benchmem
```

## Bash

```bash
# Installation
brew install bats

# Run test
bats *_test.sh
```

## Rust

```bash
# Installation
brew install rust

# Run test
cargo test
cargo test -- --ignored
```

## Ruby

```bash
gem install minitest
ruby -r minitest/pride hello_world_test.rb
```