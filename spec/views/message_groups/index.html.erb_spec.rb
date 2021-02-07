require 'rails_helper'

RSpec.describe "message_groups/index", type: :view do
  before(:each) do
    assign(:message_groups, [
      MessageGroup.create!(
        name: "Name",
        user: nil
      ),
      MessageGroup.create!(
        name: "Name",
        user: nil
      )
    ])
  end

  it "renders a list of message_groups" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
