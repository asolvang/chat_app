class CreateUserConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :user_conversations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :message_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
