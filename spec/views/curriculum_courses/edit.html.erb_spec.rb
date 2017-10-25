require 'rails_helper'

RSpec.describe "curriculum_courses/edit", type: :view do
  before(:each) do
    @curriculum_course = assign(:curriculum_course, CurriculumCourse.create!())
  end

  it "renders the edit curriculum_course form" do
    render

    assert_select "form[action=?][method=?]", curriculum_course_path(@curriculum_course), "post" do
    end
  end
end
