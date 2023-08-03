class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :subdomain, null: false, unique: true, limit: 20

      t.timestamps
    end
    add_index :tenants, :subdomain
  end
end
