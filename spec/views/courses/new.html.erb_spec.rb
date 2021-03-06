require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      :nome => "MyString",
      :instituicao => "MyString"
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_nome[name=?]", "course[nome]"

      assert_select "input#course_instituicao[name=?]", "course[instituicao]"
    end
  end
end
