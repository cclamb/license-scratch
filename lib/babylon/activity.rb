require_relative 'subject'
require_relative 'resource'
require_relative 'environment'


module Babylon
  
  class Activity
    
    attr_reader :context
    
    def initialize(tag, &activity)
      @tag = tag
      @context = {:subject => [], :environment => [], :resource => []}
      instance_exec(&activity)
    end
    
    def environment(&b)
      @context[:environment] = Environment.new(&b)
    end
    
    def subject(&b)
      @context[:subject] = Subject.new(&b)
    end
    
    def resource(&b)
      @context[:resource] = Resource.new(&b)
    end
    
    def call
      instance_exec(&@activity)
    end
    
  end
  
end
