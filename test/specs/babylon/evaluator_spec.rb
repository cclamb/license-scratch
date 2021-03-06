require 'rspec'

require_relative '../../../lib/babylon/evaluator'

class Clearance
  UNCLASSIFIED = -1
  CONFIDENTIAL = 1
  SECRET = 2
  TOP_SECRET = 3
end

Classification = Clearance

class Device
  WORKSTATION = :workstation
  BLACKBERRY = :blackberry
  I_PHONE = :iphone
end

class TestSubject
  attr_reader :clearance
  def initialize(clearance)
    @clearance = clearance
  end
end

class TestResource
  attr_reader :classification
  def initialize(classification)
    @classification = classification
  end
end

class TestEnvironment
  attr_reader :device
  def initialize(device)
    @device = device
  end
end

module Babylon
  
  describe Evaluator do
  
    before(:each) do
      @pass_ctx = { 
        :subject => TestSubject.new(Clearance::SECRET),
        :resource => TestResource.new(Classification::UNCLASSIFIED),
        :environment => TestEnvironment.new(Device::WORKSTATION)
      }
      @fail_ctx = { 
        :subject => TestSubject.new(Clearance::UNCLASSIFIED),
        :resource => TestResource.new(Classification::UNCLASSIFIED),
        :environment => TestEnvironment.new(Device::WORKSTATION)
      }
    end
  
    context 'executing in a local context' do
    
      it 'should load a license in a file' do
        e = Evaluator.new(@pass_ctx)
        e.load_from_file('etc/licenses/test.lic')
      end
      
      it 'should evaluate a license against a supplied context' do
        e = Evaluator.new(@pass_ctx)
        e.load_from_file('etc/licenses/test.lic')
        result, rationale = e.evaluate(:test)
        result.should == true   
        e = Evaluator.new(@fail_ctx)
        e.load_from_file('etc/licenses/test.lic')
        result, rationale = e.evaluate(:test)
        result.should == false    
      end
      
      it 'should return metadata about the license on failure' do
        e = Evaluator.new(@fail_ctx)
        e.load_from_file('etc/licenses/test.lic')
        result, rationale = e.evaluate(:test)
        result.should == false
        rationale[0].should == 'metadata'
      end
      
    end
    
    context 'executing in a distributed environment' do
      it 'should load a URI'
    end
    
  end
  
end
