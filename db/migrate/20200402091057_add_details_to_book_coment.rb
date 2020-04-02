class AddDetailsToBookComent < ActiveRecord::Migration[5.2]
  def change
    add_column :book_coments, :user_id, :integer
  end
end
