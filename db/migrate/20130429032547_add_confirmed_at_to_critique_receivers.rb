class AddConfirmedAtToCritiqueReceivers < ActiveRecord::Migration
  def change
    add_column :critique_receivers, :confirmed_at, :datetime
    add_column :critique_receivers, :confirmation_sent_at, :datetime
    add_column :critique_receivers, :confirmation_token, :string
    add_column :critique_receivers, :unconfirmed_email, :string

    add_index  :critique_receivers, :confirmation_token, :unique => true
  end
end
