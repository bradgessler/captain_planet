require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Configurable do
  class MyConfig
    include CaptainPlanet::Configurable
    
    attr_configurable :color do
      "red"
    end
    attr_configurable(:width, :height) { 100 }
  end
  
  before(:each) do
    @config = MyConfig.new
  end
  
  it "should read and set configurable attributes" do
    @config.color 'yellow'
    @config.color.should eql('yellow')
  end
  
  it "should support default values" do
    @config.color.should eql('red')
  end
  
  it "should default multiple attributes" do
    @config.width.should eql(100)
    @config.height.should eql(100)
  end
end