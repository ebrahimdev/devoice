class CreateTransformationRules < ActiveRecord::Migration[8.0]
  def change
    create_table :transformation_rules do |t|
      t.string :name
      t.text :description
      t.string :source_type
      t.string :target_type
      t.jsonb :rules

      t.timestamps
    end
  end
end
