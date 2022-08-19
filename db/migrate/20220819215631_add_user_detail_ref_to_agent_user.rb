class AddUserDetailRefToAgentUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :agent_users, :user_detail, null: false, foreign_key: true
  end
end
