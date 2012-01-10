require_relative 'permission'

module Babylon

  class Evaluator

    def initialize(ctx)
      @ctx = ctx
    end
    
    def load_from_file(file_name)
      @permission = Permission.new do
        instance_eval(File.read(file_name))
      end
    end
    
    def evaluate(activity_name)
      @permission.call
      activity = @permission.activities[activity_name]
      subject = @ctx[:subject]
      values = []
      activity.context[:subject].each do |descriptor|
        result = subject.instance_exec(&descriptor[:predicate])
        name = descriptor[:name]
        values.push([result, name])
      end
      return validate(values)
    end
    
    def validate(results)
      failed_names = []
      retval = true
      results.each do |result|
        retval = retval && result[0]
        failed_names.push(result[1]) if retval == false
      end
      return [retval, failed_names]
    end
    
  end

end
