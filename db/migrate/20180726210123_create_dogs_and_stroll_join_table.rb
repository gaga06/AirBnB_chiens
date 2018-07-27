class CreateDogsAndStrollJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :dogs, :strolls do |t|
      t.references :dog, foreign_key: true
      t.references :stroll, foreign_key: true
    end
  end
end
