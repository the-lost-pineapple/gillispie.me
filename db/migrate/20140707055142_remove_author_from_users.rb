class RemoveAuthorFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :author, :string
  end
end
