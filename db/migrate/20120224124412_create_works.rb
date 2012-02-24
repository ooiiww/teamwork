class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.integer :team_id,		:null => false
      t.integer :user_id,		:null => false
      t.string :title,			:null => false
      t.string :detail,			:null => false
      t.datetime :deadline,		:null => false

      t.timestamps
    end
  end
end
