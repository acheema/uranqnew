class ChangeStringToText < ActiveRecord::Migration
  def change
  	change_column :links, :description, :text
  end
end
