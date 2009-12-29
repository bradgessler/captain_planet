class SuperFun < CaptainPlanet::Environment
  attr_accessor :name, :lang
end

SuperFun::Environments = CaptainPlanet::Builder.process(:SuperFun, File.join(File.dirname(__FILE__), 'environments/*.rb' )) # Assum that this stuff works from the root that its being called