require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :valor => 2.5,
        :status => "Status"
      ),
      Job.create!(
        :valor => 2.5,
        :status => "Status"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
