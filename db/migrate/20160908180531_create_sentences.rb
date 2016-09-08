class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.column :user, :string
      t.column :contribution, :string
      t.column :icon, :string
      t.column :story_id, :integer

      t.timestamps
    end
  end
end
