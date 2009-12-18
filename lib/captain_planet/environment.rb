module CaptainPlanet
  class Environment
    def initialize(options={})
      yield self if block_given?
    end
  end
end