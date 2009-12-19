class SuperFun < CaptainPlanet::Environment
  attribute :language do
    []
  end
  attribute :name do
    "Country"
  end
end

Environment = CaptainPlanet.resolve # Assum that this stuff works from the root that its being called