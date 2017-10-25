require "rails_helper"

RSpec.describe CurriculumCoursesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/curriculum_courses").to route_to("curriculum_courses#index")
    end

    it "routes to #new" do
      expect(:get => "/curriculum_courses/new").to route_to("curriculum_courses#new")
    end

    it "routes to #show" do
      expect(:get => "/curriculum_courses/1").to route_to("curriculum_courses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/curriculum_courses/1/edit").to route_to("curriculum_courses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/curriculum_courses").to route_to("curriculum_courses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/curriculum_courses/1").to route_to("curriculum_courses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/curriculum_courses/1").to route_to("curriculum_courses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/curriculum_courses/1").to route_to("curriculum_courses#destroy", :id => "1")
    end

  end
end
