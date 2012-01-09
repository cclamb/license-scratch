require_relative 'permission'

class Evaluator

  def initialize(ctx)
    @ctx = context
  end
  
  def load_from_file(file_name)
    @permission = Permission.new do
      instance_eval(File.read(file_name))
    end
  end
  
  def evaluate(activity_name)
    activity = @permission.activities[activity_name]
    subject = @ctx[:subject]
    retval = false
    
    # THIS WILL NOT WORK!!!
    activity.subject.each do |pred|
      subject.instance_exec do
        retval = pred.call
      end
    end
  end
  
end
