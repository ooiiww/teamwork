class CreateJoinings < ActiveRecord::Migration
  def change
    create_table :joinings do |t|
      t.integer :user_id,		:null => false, :default => 0
      t.integer :team_id,		:null => false, :default => 0
      t.boolean :verifying,		:null => false, :default => true
      t.boolean :manager,		:null => false, :default => false
      t.string :nickname,		:null => false, :default => ""

      t.timestamps
    end
  end
end
