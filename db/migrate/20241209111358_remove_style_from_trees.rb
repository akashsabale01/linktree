class RemoveStyleFromTrees < ActiveRecord::Migration[7.0]
  def change
    remove_column :trees, :style, :string
  end
end
