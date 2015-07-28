class EditDeviseToUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  	  # confirmable	
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at

      t.index :confirmation_token, unique: true
  	end	
  end
end
