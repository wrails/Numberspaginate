class CreateNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :numbers do |t|
      t.integer :name
      t.string :name_in_word

      t.timestamps
    end
  end
end
