class CreateMuttees < ActiveRecord::Migration[5.1]
  def change
    create_table :muttees do |t|
      t.string :title
      t.string :mutter

      t.timestamps
    end
  end
end
