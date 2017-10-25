require 'rails_helper'

RSpec.describe "curriculum_languages/new", type: :view do
  before(:each) do
    assign(:curriculum_language, CurriculumLanguage.new())
  end

  it "renders new curriculum_language form" do
    render

    assert_select "form[action=?][method=?]", curriculum_languages_path, "post" do
    end
  end
end
