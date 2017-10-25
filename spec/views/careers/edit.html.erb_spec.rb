require 'rails_helper'

RSpec.describe "careers/edit", type: :view do
  before(:each) do
    @career = assign(:career, Career.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit career form" do
    render

    assert_select "form[action=?][method=?]", career_path(@career), "post" do

      assert_select "input#career_nome[name=?]", "career[nome]"
    end
  end
end
