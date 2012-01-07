require 'rspec'

require_relative '../../../lib/babylon/activity'

module Babylon
  
  describe Activity do
    it 'should require a tag an a block on creation' do
      
      is_error = false
      begin
        Activity.new
      rescue ArgumentError
        is_error = true
      end
      is_error.should == true
      
      a = Activity.new(:some_tag) do 
        x = 1
      end
      a.should_not == nil
    end
    
    it 'should divide predicates by subject' do
      a = Activity.new(:some_tag) do
        subject {
          restriction { x = 1}
        }
      end
      s = a.context[:subject]
      s.should_not == nil
      s.size.should == 1
      
      a1 = Activity.new(:some_tag) do
        subject {
          restriction { x = 1 }
          restriction { x = 2 }
          restriction { x = 3 }
        }
      end  
      s = a1.context[:subject]
      s.should_not == nil
      s.size.should == 3
    end
    
    it 'should divide predicates by resource' do
      a = Activity.new(:some_tag) do
        resource {
          restriction { x = 1}
        }
      end
      s = a.context[:resource]
      s.should_not == nil
      s.size.should == 1
      
      a1 = Activity.new(:some_tag) do
        resource {
          restriction { x = 1 }
          restriction { x = 2 }
          restriction { x = 3 }
        }
      end  
      s = a1.context[:resource]
      s.should_not == nil
      s.size.should == 3
    end
    
    it 'should divide predicates by environment' do
      a = Activity.new(:some_tag) do
        environment {
          restriction { x = 1}
        }
      end
      s = a.context[:environment]
      s.should_not == nil
      s.size.should == 1
      
      a1 = Activity.new(:some_tag) do
        environment {
          restriction { x = 1 }
          restriction { x = 2 }
          restriction { x = 3 }
        }
      end  
      s = a1.context[:environment]
      s.should_not == nil
      s.size.should == 3
    end
    
    it 'should handle arbitrary combinations of resources, subjects, and environment clauses' do
      a = Activity.new(:a_tag) do
        subject {
          restriction { x = 1 }
        }
        resource {
          restriction { x = 2 }
          restriction { x = 2 }
        }
        environment {
          restriction { x = 1 }
          restriction { x = 1 }
          restriction { x = 1 }
          restriction { x = 1 }
          restriction { x = 1 }
        }
      end
      s, r, e = a.context[:subject], a.context[:resource], a.context[:environment]
      s.should_not == nil
      r.should_not == nil
      e.should_not == nil
      s.size.should == 1
      r.size.should == 2
      e.size.should == 5
    end
    
  end
  
end

