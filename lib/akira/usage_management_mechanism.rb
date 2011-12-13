
def on(recipient, action)
  return {:recipient => recipient, :action => action}
end

class UsageManagementMechanism
  
  def initialize(interpreter, context_mgr, ontology_mgr)
    @interpreter = interpreter
    @context_mgr = context_mgr
    @ontology_mgr = ontology_mgr
  end
  
  def can_do?(activity)
    
  end
  
  def execute(bundle_handle, activity)
    
  end
  
  def find_bundle(bundle_descriptor)
  
  end
  
  def bundle_loaded?(bundle_descriptor)
  
  end
  
end
