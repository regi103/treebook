class CreateStatuts < ActiveRecord::Migration
  def change
    create_table :statuts do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
