require 'rails_helper'

RSpec.describe "languages/index", type: :view do
  before(:each) do
    assign(:languages, [
      Language.create!(
        :nome => "Nome"
      ),
      Language.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of languages" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
