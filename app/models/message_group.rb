# == Schema Information
#
# Table name: message_groups
#
#  id             :bigint           not null, primary key
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  owner_id       :bigint           not null
#  participant_id :bigint
#
# Indexes
#
#  index_message_groups_on_owner_id        (owner_id)
#  index_message_groups_on_participant_id  (participant_id)
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
class MessageGroup < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_one :user_conversation
  has_many :users, through: :user_conversation
end
