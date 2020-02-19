class CreateFavorite < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :user, null: false
      t.references :tv_show, null: false

      t.timestamps
    end
  end
end
