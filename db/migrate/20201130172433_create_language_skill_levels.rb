class CreateLanguageSkillLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :language_skill_levels do |t|
      t.integer :skill_level_type

      t.timestamps
    end
  end
end
