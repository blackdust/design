class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :user_id
      t.string :words

      t.timestamps null: false
    end
  end
end
