require 'rails_helper'

RSpec.describe Location, :type => :model do
  
  it "can be instantiated" do
  	location = Location.new
  	expect(location).to be_a Location
  end

  it "can be assigned the name of an arcade" do
  	location = Location.new
  	location.name = '16-Bit Bar'
  	expect(location.name).to eq('16-Bit Bar')
  end

  it "can be created using a factory" do
  	location = FactoryGirl.build(:location)
  	expect(location.name).to eq('Pizza Works')
  end

end
