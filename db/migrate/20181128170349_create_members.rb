class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :nickname
      t.integer :low_score
      t.integer :high_out_rate

      t.timestamps
    end
  end
end
