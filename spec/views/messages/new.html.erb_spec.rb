require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(
      :msg => "MyString",
      :status => 1
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input#message_msg[name=?]", "message[msg]"

      assert_select "input#message_status[name=?]", "message[status]"
    end
  end
end
