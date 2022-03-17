class UserSurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :user_surveys do |t|
      t.text :question

      t.timestamps
    end
  end
end
