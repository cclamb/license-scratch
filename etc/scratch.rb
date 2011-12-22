
module Scratch
  
  class Bundle
    
    attr_accessor :license, :content
    
    def initialize
      @license = nil
      @content = nil
      yield self if block_given?
    end
  end
  
  def Scratch.load_repo(dirname)
    names = []
    Dir.foreach(dirname) do |filename|
      names.push(filename) if filename =~ /(\.bnd)/
    end
    
    names.each do |bundlename|
      open(dirname + '/' + bundlename) do |f| 
        bundle_content = f.readlines
        content = {}
        bundle_content.each do |line|
          words = line.scan(/[-_\.\/\w]+/)
          content[:license] = dirname + '/' + words[1] if words[0] == 'license'
          content[:content] = dirname + '/' + words[1] if words[0] == 'content'
        end
      end
    end
     
  end
  
end