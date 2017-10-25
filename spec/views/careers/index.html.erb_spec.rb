require 'rails_helper'

RSpec.describe "careers/index", type: :view do
  before(:each) do
    assign(:careers, [
      Career.create!(
        :nome => "Nome"
      ),
      Career.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of careers" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
