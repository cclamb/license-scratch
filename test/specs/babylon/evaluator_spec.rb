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

class Subject
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
      @ctx = { 
        :subject => Subject.new,
        :resource => Resource.new,
        :environment => Environment.new
      }
    end
  
    context 'executing in a local context' do
      it 'should load a license in a file' do
        fail
        e = Evaluator.new(ctx)
        e.load_from_file('etc/licenses/test.lic')
        result = e.evaluate(:test)
        result.should == true
      end
      
      it 'should evaluate that license against a supplied context'
    end
    context 'executing in a distributed environment' do
      it 'should load a URI'
    end
  end
  
end
