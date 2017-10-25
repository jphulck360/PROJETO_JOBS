require 'rails_helper'

RSpec.describe "curriculum_courses/show", type: :view do
  before(:each) do
    @curriculum_course = assign(:curriculum_course, CurriculumCourse.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
