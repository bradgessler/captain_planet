module CaptainPlanet
  class Environment
    def initialize
      yield self if block_given?
    end
    
    # Eval a block of config string in the class
    def self.configure(config=nil, &block)
      env = new
      config ? env.instance_eval(config) : env.instance_eval(&block)
      env
    end
  end
end