$LOAD_PATH.unshift File.dirname(__FILE__)

module CaptainPlanet
  autoload :Environment,  'captain_planet/environment'
  autoload :Builder,      'captain_planet/builder'
  autoload :Configurable, 'captain_planet/configurable'
end