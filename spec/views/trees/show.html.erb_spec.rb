require 'spec_helper'

describe "trees/show" do
  before(:each) do
    @tree = assign(:tree, stub_model(Tree,
      :address => "Address",
      :latitude => 1.5,
      :longitude => 1.5,
      :species => "Species"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Species/)
  end
end
