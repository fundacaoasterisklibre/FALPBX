class CreateCallqueues < ActiveRecord::Migration[5.2]
  def change
    create_table :callqueues do |t|
      t.string :name, limit: 128
      t.string :musiconhold, limit: 128
      t.string :announce, limit: 128
      t.integer :timeout # limit: 11 em todos o integer
      t.boolean :monitor_join
      t.string :monitor_format, limit: 128
      t.string :queue_youarenext, limit: 128
      t.string :queue_thereare, limit: 128
      t.string :queue_callswaiting, limit: 128
      t.string :queue_holdtime, limit: 128
      t.string :queue_minutes, limit: 128
      t.string :queue_seconds, limit: 128
      t.string :queue_lessthan, limit: 128
      t.string :queue_thankyou, limit: 128
      t.string :queue_reporthold, limit: 128
      t.integer :announce_frequency
      t.integer :announce_round_seconds
      t.string :announce_holdtime, limit: 128
      t.integer :retry
      t.integer :wrapuptime
      t.integer :maxlen
      t.integer :servicelevel
      t.string :strategy, limit: 128
      t.string :joinempty, limit: 128
      t.string :leavewhenempty, limit: 128
      t.boolean :eventmemberstatus, :boolean
      t.boolean :eventwhencalled, :boolean
      t.boolean :reportholdtime, :boolean
      t.integer :memberdelay
      t.integer :weight
      t.boolean :timeoutrestart

      t.timestamps
    end
  end
end
