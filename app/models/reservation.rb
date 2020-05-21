class Reservation < ApplicationRecord
  belongs_to :table

  validates :starts_at, date: { before: :ends_at }
  validates :ends_at, date: { after: :starts_at}

  validates :ends_at, date: { before: Proc.new { |obj|
    Time.now.utc.start_day.change(day: obj.table.restaurant.opened_at.hour === 0 ? obj.ends_at.day+1 : obj.ends_at.day,
                                         hour: obj.table.restaurant.closed_at.hour,
                                         min: obj.table.restaurant.closed_at.min,
                                         sec: obj.table.restaurant.closed_at.sec+1)
  }}

  validates :starts_at, :ends_at, :overlap => {:scope => "table_id", :exclude_edges => ["starts_at", "ends_at"]}

end
