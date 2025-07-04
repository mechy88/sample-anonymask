class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :Comment
      t.string :Reaction

      t.timestamps
    end
  end
end
