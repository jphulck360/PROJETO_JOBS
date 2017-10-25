require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :valor => 1.5,
      :status => "MyString"
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_valor[name=?]", "job[valor]"

      assert_select "input#job_status[name=?]", "job[status]"
    end
  end
end
