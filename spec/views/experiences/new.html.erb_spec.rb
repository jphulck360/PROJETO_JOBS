require 'rails_helper'

RSpec.describe "experiences/new", type: :view do
  before(:each) do
    assign(:experience, Experience.new(
      :empresa => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders new experience form" do
    render

    assert_select "form[action=?][method=?]", experiences_path, "post" do

      assert_select "input#experience_empresa[name=?]", "experience[empresa]"

      assert_select "input#experience_descricao[name=?]", "experience[descricao]"
    end
  end
end
