require 'rails_helper'

RSpec.describe "curriculum_languages/show", type: :view do
  before(:each) do
    @curriculum_language = assign(:curriculum_language, CurriculumLanguage.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
