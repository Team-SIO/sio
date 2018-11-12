class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.text :message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
