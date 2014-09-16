class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :title
      t.text :body
      t.integer :rank
      t.integer :point_id
      t.integer :outline_id
      t.timestamps
    end
  end
end
