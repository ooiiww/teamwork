class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :user_id,		:null => false, :default => 0
      t.string :name,			:null => false, :default => ""
      t.string :description,	:null => false, :default => ""
      t.boolean :private,		:null => false, :default => false
      t.boolean :recruiting,	:null => false, :default => true
      t.boolean :dismissed,		:null => false, :default => false

      t.timestamps
    end
  end
end
