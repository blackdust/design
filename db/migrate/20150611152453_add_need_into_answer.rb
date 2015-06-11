class AddNeedIntoAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :need_id, :string
  end
end
