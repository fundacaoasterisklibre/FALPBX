class CreateVoicemailboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :voicemailboxes do |t|
      t.string :customer_id, limit: 11, null: false
      t.string :context, limit: 50, default: '0'
      t.string :mailbox, limit: 11, null: false
      t.integer :password, limit: 5, default: '0'
      t.string :fullname, limit: 150, null: false
      t.string :email, limit: 50, null: false
      t.string :pager, limit: 50, default: ''
      t.string :tz, limit: 10, default: 'central'
      t.string :attach, limit: 4, default: 'yes'
      t.string :saycid, limit: 4, default: 'yes'
      t.string :dialout, limit: 10, default: ''
      t.string :callback, limit: 10, default: ''
      t.string :review, limit: 4, default: 'no'
      t.string :operator, limit: 4, default: 'no'
      t.string :envelope, limit: 4, default: 'no'
      t.string :sayduration, limit: 4, default: 'no'
      t.integer :saydurationm, limit: 4, default: 1
      t.string :sendvoicemail, limit: 4, default: 'no'
      t.string :remove, limit: 4, default: 'no' #remove substitui delete, pq delete é definido pelo Active Record.
      t.integer :nextaftercmd, limit: 4, default: 'yes'
      t.integer :forcename, limit: 4, default: 'no'
      t.integer :forcegreetings, limit: 4, default: 'no'
      t.string :hidefromdir, limit: 4, default: 'yes'
      
      t.timestamps
    end
  end
end
