class CreateSubComments < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_comments do |t|
      t.string :content
      t.references :subcom, polymorphic: true, index: true
      t.timestamps
    end
  end
end
