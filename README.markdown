# Captain Planet

YML sucks. When configs are implemented in YML, a lot of code is written that interprets the YML values into various classes and configuration points in the application. Captain Planet saves the environment by doing away with YML by exposing classes in a way that can be configured with blocks.

## Example Configuration

    class MyEnv < CaptainPlanet::Environment
      attr_accessor :webdav_mount_root, :webdav_url
      
      def initialize
        webdav_mount_root = '/default/'
        webdav_url = 'http://www.com/default/'
      end
    end
    
    Environment = CaptainPlanet::Builder.new(MyEnv, %{
      env 'production' do |prod|
        prod.webdav_mount_root = '/Volumes/localhost'
        prod.webdav_url = 'http://localhost:5000/'
      end
      
      env 'development' do |dev|
        dev.webdav_mount_root = '/Volumes/www.polleverywhere.com'
        dev.webdav_url = 'http://www.polleverywhere.com/'
      end
    })[ENV['ENV'] || 'development']