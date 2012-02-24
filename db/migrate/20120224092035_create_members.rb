class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :user_id,		:null => false, :default => 0
      t.integer :team_id,		:null => false, :default => 0
      t.string :nickname,		:null => false, :default => ""
      t.boolean :verifying,		:null => false, :default => true
      t.boolean :manager,		:null => false, :default => false

      t.timestamps
    end
  end
end
