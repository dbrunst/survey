class Responses < ActiveRecord::Migration[6.1]
  def change
    create_table :responses do |t|
      t.integer :user_survey_id
      t.boolean :response

      t.timestamps
    end
  end
end
