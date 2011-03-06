require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

require 'fixtures/super_app/environment'

describe Builder, "processor" do
  it "should detect environments" do
    SuperFun::Environments.environments.keys.should include(*%w[production development test])
  end
  
  it "should read infered environment settings" do
    SuperFun::Environments['production'].lang.should eql('German')
  end
end