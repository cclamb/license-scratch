require 'rspec'

require_relative '../../../lib/babylon/permission'

module Babylon
  
  describe Permission do
    
    context 'simple permission evaluation' do
      
      it 'should throw an exception if no block follows the keyword' do
        is_error = false
        begin
          permission
        rescue ArgumentError
          is_error = true
        end
        is_error.should == true
      end
    
      it 'should store the submitted block for later evaluation' do
        block_ctx = false
        p = permission { block_ctx = true }
        p.call
        block_ctx.should == true
      end
    
      it 'should evalute a stored block man arbitrary number of times' do
        block_ctx = 0
        p = permission do
          block_ctx = block_ctx + 1
        end
        p.call
        p.call
        p.call
        block_ctx.should == 3
      end
      
    end
    
    context 'more complex script-like constructs' do
      
      it 'should handle a single activity' do
        p = permission do
          activity(:a1) {
            subject { 
              restriction {}
            }
          }
        end
        p.call
        p.activities.size.should == 1
        p.activities[:a1].context[:subject].size.should == 1
      end
    
      it 'should handle a single activity with arbitrary subject, etc.' do
        p = permission do
          activity(:a1) {
            subject { 
              restriction {}
              restriction {}
            }
            resource { 
              restriction {}
            }
            environment { 
              restriction {}
              restriction {}
              restriction {}
              restriction {}
              restriction {}
              restriction {}
            }
          }
        end
        p.call
        p.activities.size.should == 1
        p.activities[:a1].context[:subject].size.should == 2
        p.activities[:a1].context[:resource].size.should == 1
        p.activities[:a1].context[:environment].size.should == 6
      end
      
      it 'should handle multiple simple activities' do
        p = permission do
          activity(:a0) {
            subject { 
              restriction {}
            }
          }
          activity(:a1) {
            resource { 
              restriction {}
            }
          }
          activity(:a2) {
            environment { 
              restriction {}
            }
          }
        end
        p.call
        p.activities.size.should == 3
        p.activities[:a0].context[:subject].size.should == 1
        p.activities[:a1].context[:resource].size.should == 1
        p.activities[:a2].context[:environment].size.should == 1
      end
      
      it 'should handle multiple activities with arbitrary attributes' do
        p = permission do
          activity(:a0) {
            subject { 
              restriction {}
            }
          }
          activity(:a1) {
            subject { 
              restriction {}
              restriction {}
            }
            resource { 
              restriction {}
            }
            environment { 
              restriction {}
              restriction {}
              restriction {}
              restriction {}
              restriction {}
              restriction {}
            }
          }
          activity(:a2) {
            environment { 
              restriction {}
            }
            subject {
              restriction {}
              restriction {}
            }
          }
        end
        p.call
        p.activities.size.should == 3
        p.activities[:a0].context[:subject].size.should == 1
        p.activities[:a1].context[:subject].size.should == 2
        p.activities[:a1].context[:resource].size.should == 1
        p.activities[:a1].context[:environment].size.should == 6
        p.activities[:a2].context[:subject].size.should == 2
        p.activities[:a2].context[:environment].size.should == 1
      end
      
    end
    
  end

  
end
