require 'rails_helper'

RSpec.describe "careers/show", type: :view do
  before(:each) do
    @career = assign(:career, Career.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
