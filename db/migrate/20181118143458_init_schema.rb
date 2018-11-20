class InitSchema < ActiveRecord::Migration[5.2]
  def up
    create_table "addresses" do |t|
      t.text "ship"
      t.string "zip"
      t.string "phone"
      t.integer "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["user_id"], name: "index_addresses_on_user_id"
    end
    create_table "admins" do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "admin_name", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["email"], name: "index_admins_on_email", unique: true
      t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    end
    create_table "artists" do |t|
      t.integer "genre_id"
      t.integer "label_id"
      t.string "artist_name"
      t.text "artist_info"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "admin_id"
      t.index ["genre_id"], name: "index_artists_on_genre_id"
      t.index ["label_id"], name: "index_artists_on_label_id"
    end
    create_table "cart_items" do |t|
      t.integer "cart_id"
      t.integer "item_id"
      t.integer "cart_item_count"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["cart_id"], name: "index_cart_items_on_cart_id"
      t.index ["item_id"], name: "index_cart_items_on_item_id"
    end
    create_table "carts" do |t|
      t.integer "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["user_id"], name: "index_carts_on_user_id"
    end
    create_table "discs" do |t|
      t.integer "item_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "disc_order"
      t.index ["disc_order"], name: "index_discs_on_disc_order"
      t.index ["item_id"], name: "index_discs_on_item_id"
    end
    create_table "favs" do |t|
      t.integer "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "item_id"
      t.integer "favs_count"
      t.index ["item_id"], name: "index_favs_on_item_id"
      t.index ["user_id"], name: "index_favs_on_user_id"
    end
    create_table "genres" do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "genre_name"
    end
    create_table "inquiries" do |t|
      t.string "name"
      t.text "email"
      t.text "message"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "user_id"
      t.index ["user_id"], name: "index_inquiries_on_user_id"
    end
    create_table "items" do |t|
      t.string "item_name"
      t.text "item_info"
      t.integer "price"
      t.integer "artist_id"
      t.integer "stock"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.datetime "deleted_at"
      t.string "image"
      t.integer "status", default: 0
      t.integer "favs_count"
      t.index ["artist_id"], name: "index_items_on_artist_id"
      t.index ["deleted_at"], name: "index_items_on_deleted_at"
    end
    create_table "labels" do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "label_name"
    end
    create_table "order_items" do |t|
      t.integer "order_id"
      t.integer "item_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "order_price"
      t.integer "order_item_count"
      t.string "item_name"
      t.text "item_info"
      t.integer "price"
      t.string "image"
      t.index ["item_id"], name: "index_order_items_on_item_id"
      t.index ["order_id"], name: "index_order_items_on_order_id"
    end
    create_table "orders" do |t|
      t.integer "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.datetime "deleted_at"
      t.integer "status", default: 0
      t.text "ship"
      t.integer "address_id"
      t.index ["address_id"], name: "index_orders_on_address_id"
      t.index ["deleted_at"], name: "index_orders_on_deleted_at"
      t.index ["user_id"], name: "index_orders_on_user_id"
    end
    create_table "songs" do |t|
      t.string "song_name"
      t.string "time"
      t.integer "disc_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "song_order"
      t.index ["disc_id"], name: "index_songs_on_disc_id"
      t.index ["song_order"], name: "index_songs_on_song_order"
    end
    create_table "users" do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.integer "gender"
      t.datetime "birthday"
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.datetime "deleted_at"
      t.string "first_name"
      t.string "last_name"
      t.index ["deleted_at"], name: "index_users_on_deleted_at"
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "The initial migration is not revertable"
  end
end
