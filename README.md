# exercism

Practice different programming lagnauges on [exercism.io](https://exercism.io/)

![python](https://github.com/hanksudo/exercism/workflows/python.yaml/badge.svg)
![golang](https://github.com/hanksudo/exercism/workflows/golang.yaml/badge.svg)
![rust](https://github.com/hanksudo/exercism/actions/workflows/rust.yaml/badge.svg)
![ruby](https://github.com/hanksudo/exercism/workflows/ruby.yaml/badge.svg)

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
cd go && go list -f '{{.Dir}}' -m | xargs go test --bench --benchmem --cover
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

# Test all
sh ./rust/run-tests.sh
```

## Ruby

```bash
gem install minitest
ruby -r minitest/pride hello_world_test.rb
```

## Swift

```bash
# runs tests 
swift test

# creates an Xcode project
swift package generate-xcodeproj
```
