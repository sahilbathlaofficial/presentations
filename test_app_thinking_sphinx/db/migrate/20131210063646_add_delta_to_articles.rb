class AddDeltaToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :delta, :boolean, :default => true,
      :null => false
  end
end
