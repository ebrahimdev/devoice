class CreateBusinessEntities < ActiveRecord::Migration[8.0]
  def change
    create_table :business_entities do |t|
      t.string :name
      t.text :description
      t.string :type
      t.jsonb :metadata

      t.timestamps
    end
  end
end
