class CreatePublicationAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :publication_authors do |t|
      t.references :publication, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
