class CreateGameMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :game_members, id: false do |t|
      t.belongs_to :games
      t.belongs_to :members
    end
  end
end
