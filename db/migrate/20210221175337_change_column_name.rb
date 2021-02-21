class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :message_groups, :user_id, :owner
  end
end
