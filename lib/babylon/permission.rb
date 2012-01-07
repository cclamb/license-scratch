module Babylon

  class Permission
    
    attr_reader :license
    
    def initialize(&license)
      throw :license_needed if license == nil
      @license = license
    end
    
  end
  
  def Babylon.permission(&license)
    Permission.new(&license)
  end
  
end

def permission(&license)
  Babylon.permission(&license)
end