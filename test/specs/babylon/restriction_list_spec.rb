require 'rspec'

require_relative '../../../lib/babylon/restriction_list'

module Babylon
  
  describe RestrictionList do
    
    it 'should process a group of restrictions' do
      r = RestrictionList.new do
        restriction { puts 4 }
        restriction { puts 5 }
        restriction { puts 6 }
      end
      r.size.should == 3
    end
    
    it 'should handle no restrictions' do
      r = RestrictionList.new
      r.size.should == 0
    end
    
    it 'should collect defined restrictions for later processing' do
      call_cnt = 0 
      r = RestrictionList.new do
        restriction { call_cnt = call_cnt + 1 }
        restriction { call_cnt = call_cnt + 1 }
        restriction { call_cnt = call_cnt + 1 }
      end
      r.call
      call_cnt.should == 3
      r.call
      call_cnt.should == 6
    end
    
  end
  
end