class AlterFromAnswer < ActiveRecord::Migration
  def change
    change_column :answers, :need_id, :integer
  end
end
