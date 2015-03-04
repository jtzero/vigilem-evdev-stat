# Vigilem::Evdev::Stat
  Determines the status of whether or not evdev is on this system

## Installation
    $ gem install vigilem-evdev-stat

## Usage
```ruby
  require 'vigilem/evdev/stat'
  
  Vigilem::Evdev::Stat.default.available?
```