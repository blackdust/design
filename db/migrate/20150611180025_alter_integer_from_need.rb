class AlterIntegerFromNeed < ActiveRecord::Migration
  def change
    change_column :needs, :number, :string

  end
end
