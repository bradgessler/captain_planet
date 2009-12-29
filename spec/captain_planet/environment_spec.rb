require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

require ~'../fixtures/web_env'

describe Environment do
  it "should eval string" do
    WebEnv.configure(%{
      env.host = 'fun.com'
      env.root = '/www/fun'
    }).host.should eql('fun.com')
  end
  
  it "should eval block" do
    WebEnv.configure { |env|
      env.host = 'fun'
    }.host.should eql('fun')
  end
end