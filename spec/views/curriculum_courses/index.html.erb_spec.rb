require 'rails_helper'

RSpec.describe "curriculum_courses/index", type: :view do
  before(:each) do
    assign(:curriculum_courses, [
      CurriculumCourse.create!(),
      CurriculumCourse.create!()
    ])
  end

  it "renders a list of curriculum_courses" do
    render
  end
end
