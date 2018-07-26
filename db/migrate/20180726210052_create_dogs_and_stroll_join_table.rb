class CreateDogsAndStrollJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :dogs, :strolls do |t|
      t.references :dog, foreign_key: true
      t.references :strolls, foreign_key: true
      end
  end
end
#cette migration permet d'établir une relation entre 1 promenade
#et plusieurs chiens, puisqu'une babysitter peut promener plusieurs
#chiens à la fois
