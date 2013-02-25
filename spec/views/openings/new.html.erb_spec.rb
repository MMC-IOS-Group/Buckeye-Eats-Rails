require 'spec_helper'

describe "openings/new" do
  before(:each) do
    assign(:opening, stub_model(Opening,
      :day_of_week => 1,
      :restaurant_id => 1
    ).as_new_record)
  end

  it "renders new opening form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => openings_path, :method => "post" do
      assert_select "input#opening_day_of_week", :name => "opening[day_of_week]"
      assert_select "input#opening_restaurant_id", :name => "opening[restaurant_id]"
    end
  end
end
