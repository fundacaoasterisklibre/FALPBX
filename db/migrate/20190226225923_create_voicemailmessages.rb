class CreateVoicemailmessages < ActiveRecord::Migration[5.2]
  def change
    create_table :voicemailmessages do |t|

      t.timestamps
    end
  end
end
