class CreateAdopters < ActiveRecord::Migration[6.0]
  def change
    create_table :adopters do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
