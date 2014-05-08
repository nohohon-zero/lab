class AddUrlToApplication < ActiveRecord::Migration
  def change
    add_column :applications, :url, :string
  end
end
