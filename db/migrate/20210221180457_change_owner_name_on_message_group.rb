class ChangeOwnerNameOnMessageGroup < ActiveRecord::Migration[6.1]
  def change
    rename_column :message_groups, :owner, :owner_id
  end
end
