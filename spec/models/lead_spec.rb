require 'rails_helper'

RSpec.describe Lead, :type => :model do
  before do
    @lead = Lead.create!(name: "Sam", company: "ABC Company")  
  end
  
  it "should create a new lead" do
    expect(Lead.count).to eq(1)
  end
  
end
