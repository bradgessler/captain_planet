module CaptainPlanet
  class Builder
    attr_reader :environments
    
    def self.process(klass,pattern)
      builder = Builder.new(klass)
      
      Dir[pattern].each do |path|
        name = File.basename(path, '.rb')
        config = File.read(path)
        # builder.environments[name] = builder.eval(config)
      end
    end
    
    def initialize(klass=Environment,config=nil,&block)
      @klass = klass
      @environments = {}
      
      # Read from an incoming string, perhaps read from a config file, or a block
      if config
        instance_eval(config)
      elsif block_given?
        instance_eval(&block)
      end
    end
    
    # Add a new environment to the thing or find an existing one.
    def environment(name, config=nil, &block)
      if env = @environments[name.to_s]
        yield env if block_given?
      else
        env = klass.new
        if config
          
        else
          yield env if block_given?
        end
        @environments[name.to_s] = env
      end
    end
    alias_method :env, :environment
    
    def [] key
      environments[key]
    end
    
    # Converts the incoming klass value into something we can instanciate for realz
    def klass
      if @klass.is_a?(Class)
        @klass
      else
        unless /\A(?:::)?([A-Z]\w*(?:::[A-Z]\w*)*)\z/ =~ @klass
          raise NameError, "#{@klass.inspect} is not a valid constant name!"
        end
        
        Object.module_eval("::#{$1}", __FILE__, __LINE__)
      end
    end
  end
end