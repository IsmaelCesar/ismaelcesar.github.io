class AddAuthorOrderToPublicationAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :publication_authors, :author_order, :integer
  end
end
