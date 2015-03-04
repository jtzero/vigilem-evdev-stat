require 'vigilem/core/stat'

module Vigilem
module Evdev
  class Stat < Core::Stat
    attr_writer :event_dir
    
    # 
    # 
    def initialize(gem_name='vigilem-evdev', opts={}, &api_check)
      system_name = 'evdev'
      opts[:path] ||= event_dir
      if block_given?
        super(system_name, gem_name, opts, &api_check)
      else
        super(system_name, gem_name, opts) do
          Dir.exists?(opts[:path]) and Dir["#{opts[:path]}#{File::SEPARATOR}event*"].any?
        end
      end
    end
    
    # 
    # @return [String]
    def event_dir
      @event_path ||= "#{File::SEPARATOR}#{File.join(%w(dev input))}"
    end
    
    # 
    # 
    def self.default
      @default ||= Vigilem::Evdev::Stat.new
    end
  end
end
end

Vigilem::Evdev::Stat.default
