require 'spec_helper'

describe "openings/edit" do
  before(:each) do
    @opening = assign(:opening, stub_model(Opening,
      :day_of_week => 1,
      :restaurant_id => 1
    ))
  end

  it "renders the edit opening form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => openings_path(@opening), :method => "post" do
      assert_select "input#opening_day_of_week", :name => "opening[day_of_week]"
      assert_select "input#opening_restaurant_id", :name => "opening[restaurant_id]"
    end
  end
end
