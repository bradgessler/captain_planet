require File.join(File.dirname(__FILE__), './../vendor/gems/environment')
require 'dirge'

module CaptainPlanet
  autoload :ConfigurableAttributes,   ~'captain_planet/configurable_attributes'
  autoload :Environment,              ~'captain_planet/environment'
  autoload :Builder,                  ~'captain_planet/builder'
end