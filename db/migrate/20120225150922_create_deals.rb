class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.integer :user_id,		:null => false
      t.integer :work_id,		:null => false
      t.boolean :done,			:null => false, :default => false
      t.string :comment,		:null => false, :default => ""

      t.timestamps
    end
  end
end
