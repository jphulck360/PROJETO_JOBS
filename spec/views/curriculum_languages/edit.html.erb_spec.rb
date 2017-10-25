require 'rails_helper'

RSpec.describe "curriculum_languages/edit", type: :view do
  before(:each) do
    @curriculum_language = assign(:curriculum_language, CurriculumLanguage.create!())
  end

  it "renders the edit curriculum_language form" do
    render

    assert_select "form[action=?][method=?]", curriculum_language_path(@curriculum_language), "post" do
    end
  end
end
