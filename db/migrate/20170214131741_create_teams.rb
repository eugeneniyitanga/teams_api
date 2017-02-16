class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :creature
      t.string :name
      t.string :state
      t.string :sport

      t.timestamps
    end
  end
end
