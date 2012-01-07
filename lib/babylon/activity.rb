module Babylon
  
  class Activity
    
    def initialize(tag, &activity)
      @tag = tag
      @activity = activity
    end
    
    def environment(&b)
      #instance_exec(b)
    end
    
    def subject(&b)
      #instance_exec(b)
    end
    
    def restriction(&b)
      
    end
    
    def call
      instance_exec(&@activity)
    end
    
  end
  
end