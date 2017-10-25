require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :nome => "MyString",
      :instituicao => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_nome[name=?]", "course[nome]"

      assert_select "input#course_instituicao[name=?]", "course[instituicao]"
    end
  end
end
