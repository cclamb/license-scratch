class Bundle

  attr_reader :policy, :content

  def initialize(policy, content)
    @policy = policy
    @content = content
  end

end

class ReferenceBundle < Bundle ; end
class ContentBundle < Bundle ; end
