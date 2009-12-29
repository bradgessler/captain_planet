module CaptainPlanet
  class Builder
    attr_reader :environments
    
    def self.process(klass,pattern)
      builder = Builder.new(klass)
      Dir[pattern].each do |path|
        name = File.basename(path, '.rb')
        config = File.read(path)
        builder[name] = config
      end
      builder
    end
    
    def initialize(klass=Environment)
      @klass = klass
      @environments = {}
    end
    
    # Add a new environment to the thing or find an existing one.
    def environment name, config=nil, &block
      environments[name] = klass.configure(config, &block)
    end
    alias_method :[]=, :environment
    
    def [] name
      environments[name]
    end
    
    # Converts the incoming klass value into something we can instanciate for realz
    def klass
      if @klass.is_a?(Class)
        @klass
      else
        unless /\A(?:::)?([A-Z]\w*(?:::[A-Z]\w*)*)\z/ =~ @klass.to_s
          raise NameError, "#{@klass.inspect} is not a valid constant name!"
        end
        
        Object.module_eval("::#{$1}", __FILE__, __LINE__)
      end
    end
  end
end