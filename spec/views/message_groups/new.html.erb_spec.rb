require 'rails_helper'

RSpec.describe "message_groups/new", type: :view do
  before(:each) do
    assign(:message_group, MessageGroup.new(
      name: "MyString",
      user: nil
    ))
  end

  it "renders new message_group form" do
    render

    assert_select "form[action=?][method=?]", message_groups_path, "post" do

      assert_select "input[name=?]", "message_group[name]"

      assert_select "input[name=?]", "message_group[user_id]"
    end
  end
end
