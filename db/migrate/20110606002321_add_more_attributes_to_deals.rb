class AddMoreAttributesToDeals < ActiveRecord::Migration
  def self.up
    add_column :deals, :profile_image, :text
    add_column :deals, :deal_number, :string
    add_column :deals, :purchase_date, :datetime
    add_column :deals, :expiration_date, :datetime
    add_column :deals, :value, :integer
    add_column :deals, :discount, :integer
    add_column :deals, :you_save, :integer
  end

  def self.down
    remove_column :deals, :you_save
    remove_column :deals, :discount
    remove_column :deals, :value
    remove_column :deals, :expiration_date
    remove_column :deals, :purchase_date
    remove_column :deals, :deal_number
    remove_column :deals, :profile_image
  end
end
