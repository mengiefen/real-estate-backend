class CreateAgentUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :agent_users do |t|
      t.string :business_name

      t.timestamps
    end
  end
end
