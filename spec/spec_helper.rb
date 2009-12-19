$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'captain_planet'
require 'spec'
require 'spec/autorun'

include CaptainPlanet

Spec::Runner.configure do |config|
  
end