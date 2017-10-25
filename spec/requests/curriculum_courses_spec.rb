require 'rails_helper'

RSpec.describe "CurriculumCourses", type: :request do
  describe "GET /curriculum_courses" do
    it "works! (now write some real specs)" do
      get curriculum_courses_path
      expect(response).to have_http_status(200)
    end
  end
end
