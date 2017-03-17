class AddGuestCountToRegistration < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :guest_count, :integer
  end
end
