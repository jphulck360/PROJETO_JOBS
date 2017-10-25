require 'rails_helper'

RSpec.describe "phones/show", type: :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!(
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Telefone/)
  end
end
