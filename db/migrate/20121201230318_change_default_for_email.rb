class ChangeDefaultForEmail < ActiveRecord::Migration
  def change
	#change column <table> <field> <type> <option> <more options>
	change_column :users, :email, :string, :null => false, :default => ""
  end

end
