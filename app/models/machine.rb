class Machine < ApplicationRecord
  belongs_to :store

  def open!
    update(open: true)
  end

  def close!
    update(open: false)
  end
end
