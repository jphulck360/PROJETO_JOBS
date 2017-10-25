require 'rails_helper'

RSpec.describe "experiences/index", type: :view do
  before(:each) do
    assign(:experiences, [
      Experience.create!(
        :empresa => "Empresa",
        :descricao => "Descricao"
      ),
      Experience.create!(
        :empresa => "Empresa",
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of experiences" do
    render
    assert_select "tr>td", :text => "Empresa".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
