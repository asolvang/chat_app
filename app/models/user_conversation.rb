# == Schema Information
#
# Table name: user_conversations
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  message_group_id :bigint           not null
#  user_id          :bigint           not null
#
# Indexes
#
#  index_user_conversations_on_message_group_id  (message_group_id)
#  index_user_conversations_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (message_group_id => message_groups.id)
#  fk_rails_...  (user_id => users.id)
#
class UserConversation < ApplicationRecord
  belongs_to :user
  belongs_to :message_group
end
