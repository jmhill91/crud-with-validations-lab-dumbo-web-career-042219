class Song < ApplicationRecord
  validates :title, presence: true
  validates :released, inclusion: { in: [true, false] }
  validates :artist_name, presence: true
  validate :is_released

  def is_released
    if released == true
      self.song_released_this_year
    else
    end
  end

  def song_released_this_year
    unless release_year <= Time.current.year
      errors.add(:realease_year, "Must be before current year" )
    end
  end

  # def repeat_year
  # end

end
