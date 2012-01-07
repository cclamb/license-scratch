require_relative 'restriction_list'

module Babylon
  
  class Activity
    
    attr_reader :context
    
    def initialize(tag, &activity)
      @tag = tag
      @context = {}
      instance_exec(&activity)
    end
    
    def environment(&b)
      @context[:environment] = RestrictionList.new(&b)
    end
    
    def subject(&b)
      @context[:subject] = RestrictionList.new(&b)
    end
    
    def resource(&b)
      @context[:resource] = RestrictionList.new(&b)
    end
    
    def call
      instance_exec(&@activity)
    end
    
  end
  
end