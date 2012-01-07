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
      
      a = Activity.new(:some_tag) { 
        x = y
      }
      a.should_not == nil
    end
    
    it 'should divide predicates by subject'
    it 'should divide predicates by resource'
    it 'should divide predicates by environment'
  end
  
end

