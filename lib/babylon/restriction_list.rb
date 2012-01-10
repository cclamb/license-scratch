module Babylon
  
  class RestrictionList < Array
    
    def initialize(&restriction_block)
      instance_exec(&restriction_block) if block_given?
    end
    
    def restriction(*args, &restriction)
      push({ :name => args[0], :predicate => restriction})
    end
    
    def call
      each { |block| block[:predicate].call }
    end
    
  end
  
end
