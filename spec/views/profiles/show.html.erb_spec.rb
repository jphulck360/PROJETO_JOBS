require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :perfil => "Perfil"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Perfil/)
  end
end
