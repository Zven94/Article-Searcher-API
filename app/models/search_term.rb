class SearchTerm < ApplicationRecord

  #term must to be unique
  validates :term, presence: true, uniqueness: true

  #numbers must to be integers greater than 0
  validates :searched_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  before_save :set_default_searched_counter

  # method to increment counter
  def increment_searched_counter
    update(searched_counter: searched_counter + 1)
  end

  #method to get most 10 searched terms
  def self.most_searched_terms(limit = 10)
    terms = order(searched_counter: :desc).limit(limit)
  end

  #initialize counter with 0
  def set_default_searched_counter
    self.searched_counter ||= 0
  end
end
