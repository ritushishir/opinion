class CreateCriticisms < ActiveRecord::Migration
  def change
    create_table :criticisms do |t|
      t.text :comment
      t.integer :critique_receiver_id

      t.timestamps
    end
  end
end
