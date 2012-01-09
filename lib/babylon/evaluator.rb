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
    values = []
    activity.subject.each do |pred|
      values.push(subject.instance_exec(&pred)
    end
    # HOW TO EVALUTE PREDS?
  end
  
end
