require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

require ~'../fixtures/web_env'

describe Environment do
  it "should eval string" do
    WebEnv.configure(%{
      host 'fun.com'
      root '/www/fun'
    }).host.should eql('fun.com')
  end
  
  it "should eval block" do
    WebEnv.configure {
      host 'fun'
    }.host.should eql('fun')
  end
end