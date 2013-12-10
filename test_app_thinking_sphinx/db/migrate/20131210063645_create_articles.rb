class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :subject
      t.text :content
      t.references :author, index: true

      t.timestamps
    end
  end
end
