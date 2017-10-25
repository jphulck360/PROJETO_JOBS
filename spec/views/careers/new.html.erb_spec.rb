require 'rails_helper'

RSpec.describe "careers/new", type: :view do
  before(:each) do
    assign(:career, Career.new(
      :nome => "MyString"
    ))
  end

  it "renders new career form" do
    render

    assert_select "form[action=?][method=?]", careers_path, "post" do

      assert_select "input#career_nome[name=?]", "career[nome]"
    end
  end
end
