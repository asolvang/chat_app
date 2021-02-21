class AddParticipantsToMessageGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :message_groups, :participant, null: true
  end
end
