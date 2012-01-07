module Babylon
  
  class RestrictionList < Array
    
    def initialize(&restriction_block)
      instance_exec(&restriction_block) if block_given?
    end
    
    def restriction(&restriction)
      push(restriction)
    end
    
    def call
      each { |block| block.call }
    end
    
  end
  
end