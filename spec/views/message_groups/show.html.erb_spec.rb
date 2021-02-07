require 'rails_helper'

RSpec.describe "message_groups/show", type: :view do
  before(:each) do
    @message_group = assign(:message_group, MessageGroup.create!(
      name: "Name",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
