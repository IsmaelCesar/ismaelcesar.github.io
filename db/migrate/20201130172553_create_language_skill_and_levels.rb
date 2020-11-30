class CreateLanguageSkillAndLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :language_skill_and_levels do |t|
      t.references :language, foreign_key: true
      t.references :language_skill, foreign_key: true
      t.references :language_skill_level, foreign_key: true

      t.timestamps
    end
  end
end
