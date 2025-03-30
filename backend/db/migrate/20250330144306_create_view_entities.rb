class CreateViewEntities < ActiveRecord::Migration[8.0]
  def change
    create_table :view_entities do |t|
      t.string :name
      t.text :description
      t.string :type
      t.jsonb :metadata
      t.references :business_entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
