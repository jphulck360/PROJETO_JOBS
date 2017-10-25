require 'rails_helper'

RSpec.describe "phones/index", type: :view do
  before(:each) do
    assign(:phones, [
      Phone.create!(
        :telefone => "Telefone"
      ),
      Phone.create!(
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of phones" do
    render
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
