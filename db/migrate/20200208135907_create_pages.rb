class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :author
      t.string :title
      t.integer :date
      t.string :publisher

      t.timestamps
    end
  end
end
