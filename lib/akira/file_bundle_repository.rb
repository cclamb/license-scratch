
class FileBundleRepository

    def initialize(ctx, repository_location)
      @ctx = ctx
      repository_location = 
        @ctx[:default_repo_location] if repository_location == nil
      process_location repository_location
    end
    
    def process_location(repository_location)
    
    end
    
end
