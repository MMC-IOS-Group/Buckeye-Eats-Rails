require 'spec_helper'

describe "openings/show" do
  before(:each) do
    @opening = assign(:opening, stub_model(Opening,
      :day_of_week => 1,
      :restaurant_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
