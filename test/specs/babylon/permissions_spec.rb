require 'rspec'

require_relative '../../../lib/babylon/permission'

module Babylon

  describe Permission do
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
      p.license.call
      block_ctx.should == true
    end
    
    it 'should evalute a stored block man arbitrary number of times' do
      block_ctx = 0
      p = permission do
        block_ctx = block_ctx + 1
      end
      p.license.call
      p.license.call
      p.license.call
      block_ctx.should == 3
    end
  end
  
end
