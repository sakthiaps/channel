class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.references :tv_channel, null: false
      t.string :name, null: false
      t.string :timing, null: false
      t.boolean :favorite, default: false

      t.timestamps
    end

    add_index :tv_shows, [:tv_channel_id, :name]
  end
end
