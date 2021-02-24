class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :contact
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end
