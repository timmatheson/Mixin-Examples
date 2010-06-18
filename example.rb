#!/usr/bin/ruby

module MyModule
  def self.included(base)
    base.extend(ClassMethods)
    base.send(:include,InstanceMethods)
  end
  
  module InstanceMethods
    def instance_test
      puts "Hello from the instance module"
    end
  end
  
  module ClassMethods
    def class_test
      puts "Hello from the class module"
    end
  end
end

class Foo
  include MyModule
end

Foo.class_test

Foo.new.instance_test