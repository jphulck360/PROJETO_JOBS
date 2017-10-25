require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :perfil => "Perfil"
      ),
      Profile.create!(
        :perfil => "Perfil"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Perfil".to_s, :count => 2
  end
end
