require 'rails_helper'

RSpec.describe "experiences/edit", type: :view do
  before(:each) do
    @experience = assign(:experience, Experience.create!(
      :empresa => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders the edit experience form" do
    render

    assert_select "form[action=?][method=?]", experience_path(@experience), "post" do

      assert_select "input#experience_empresa[name=?]", "experience[empresa]"

      assert_select "input#experience_descricao[name=?]", "experience[descricao]"
    end
  end
end
