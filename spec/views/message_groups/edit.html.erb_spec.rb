require 'rails_helper'

RSpec.describe "message_groups/edit", type: :view do
  before(:each) do
    @message_group = assign(:message_group, MessageGroup.create!(
      name: "MyString",
      user: nil
    ))
  end

  it "renders the edit message_group form" do
    render

    assert_select "form[action=?][method=?]", message_group_path(@message_group), "post" do

      assert_select "input[name=?]", "message_group[name]"

      assert_select "input[name=?]", "message_group[user_id]"
    end
  end
end
