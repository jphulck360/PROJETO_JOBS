require 'rails_helper'

RSpec.describe "curriculum_courses/new", type: :view do
  before(:each) do
    assign(:curriculum_course, CurriculumCourse.new())
  end

  it "renders new curriculum_course form" do
    render

    assert_select "form[action=?][method=?]", curriculum_courses_path, "post" do
    end
  end
end
