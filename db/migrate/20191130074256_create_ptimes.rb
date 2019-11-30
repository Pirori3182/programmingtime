class CreatePtimes < ActiveRecord::Migration[5.2]
  def change
    create_table :ptimes do |t|
      t.string      :programmingtime
      t.datetime    :datetime
      t.timestamps  null: true
    end
  end
end
