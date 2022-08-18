class CreateAgentUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :agent_users do |t|
      t.string :business_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
