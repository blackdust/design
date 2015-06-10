class AddNumberIntoNeeds < ActiveRecord::Migration
  def change
    add_column :needs, :number, :integer
  end
end
