module CaptainPlanet
  class Environment
    # Eval a block of config string in the class
    def self.configure(config=nil, &block)
      env = new
      config ? env.instance_eval(config) : env.instance_eval(&block)
      env
    end
  end
end