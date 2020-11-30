class CreateLanguageSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :language_skills do |t|
      t.integer :skill_type
      t.timestamps
    end
  end
end
