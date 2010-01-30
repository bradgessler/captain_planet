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

## Even better!

There are some smart defaults for setting up environments in a project. For example, a folder structure typically mimics that like what's found in rails:

    config
      |- environment.rb
      |- environments
          |- production.rb
          |- development.rb
          |- test.rb

Why not mimic that? That's exactly where I thought too. Just define your configuration class.

    class QTZEnv < CaptainPlanet::Environment
      attr_accessor :webdav_mount_root, :webdav_url, :polling_interval, :default_permalink
  
      def initialize
        self.webdav_mount_root = '/default/'
        self.webdav_url        = 'http://www.com/default/'
        self.polling_interval  = 3.0
      end
    end

Then initialize the Environment with CaptainPlanet.

    Environment = CaptainPlanet::Builder.process(QTZEnv, File.join(File.dirname(__FILE__), './environments/*.rb'))[ENV['ENV'] || 'development']

And finally use anywhere in your application!

    Environment.webdav_mount_root # => '/default/'

The best part? You get full control over how the environment is bootstrapped. Mmm mmm good.
