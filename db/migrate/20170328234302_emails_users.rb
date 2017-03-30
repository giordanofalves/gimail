class EmailsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :emails_users, id: false do |t|
      t.belongs_to :email, null: false, index: true
      t.belongs_to :user, null: false, index: true
    end
  end
end
