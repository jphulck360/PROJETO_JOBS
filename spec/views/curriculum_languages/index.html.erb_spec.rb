require 'rails_helper'

RSpec.describe "curriculum_languages/index", type: :view do
  before(:each) do
    assign(:curriculum_languages, [
      CurriculumLanguage.create!(),
      CurriculumLanguage.create!()
    ])
  end

  it "renders a list of curriculum_languages" do
    render
  end
end
