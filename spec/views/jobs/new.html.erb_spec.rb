require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      :valor => 1.5,
      :status => "MyString"
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_valor[name=?]", "job[valor]"

      assert_select "input#job_status[name=?]", "job[status]"
    end
  end
end
