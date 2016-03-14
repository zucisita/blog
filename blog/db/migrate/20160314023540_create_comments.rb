class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :article, index: true
      t.text :body

      t.timestamps null: false
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :articles
  end
end
