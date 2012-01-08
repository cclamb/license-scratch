module Babylon

  class Permission
    
    attr_reader :activities
    
    def initialize(&license)
      throw :license_needed if license == nil
      @license = license
      @activities = {}
    end
    
    def activity(activity_tag, &activity)
      @activities[activity_tag] = Activity.new(activity_tag, &activity)
    end
    
    def call
      instance_exec(&@license)
    end
    
  end
  
end

def permission(&license)
  Babylon::Permission.new(&license)
end

