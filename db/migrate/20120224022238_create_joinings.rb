class CreateJoinings < ActiveRecord::Migration
  def change
    create_table :joinings do |t|
      t.string :nickname,		:null => false, :default => ""
      t.integer :user_id,		:null => false, :default => 0
      t.integer :team_id,		:null => false, :default => 0
      t.boolean :verifying,		:null => false, :default => true
      t.boolean :manager,		:null => false, :default => false

      t.timestamps
    end
  end
end
