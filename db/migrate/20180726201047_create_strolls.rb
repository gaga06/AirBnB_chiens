class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.references :city, foreign_key: true
      t.references :dog, foreign_key: true
      t.references :dogsitter, foreign_key: true
      t.datetime :date
      t.string :meeting_point
      t.timestamps
    end
  end
end
