require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :nome => "Nome",
        :instituicao => "Instituicao"
      ),
      Course.create!(
        :nome => "Nome",
        :instituicao => "Instituicao"
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Instituicao".to_s, :count => 2
  end
end
