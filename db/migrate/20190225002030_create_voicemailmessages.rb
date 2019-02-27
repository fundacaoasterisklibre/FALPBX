class CreateVoicemailmessages < ActiveRecord::Migration[5.2]
  def change
    create_table :voicemailmessages do |t|
      t.integer :msgnum, default: 0 # limit: 11
      t.string :dir, limit: 80, default: ''
      t.string :context, limit: 80, default: ''
      t.string :macrocontext, limit: 80, default: ''
      t.string :callerid, limit: 40, default: ''
      t.string :origtime, limit: 40, default: ''
      t.string :duration, limit: 20, default: ''
      t.string :mailboxuser, limit: 80, default: ''
      t.string :mailboxcontext, limit: 80, default: ''
      # t.longblob :recording
      t.timestamps
    end
  end
end
