class QueryHistory < ApplicationRecord
  # query must to be unique
  validates :query, presence: true, uniqueness: true

  # numbers must to be integers greater than 0
  validates :count, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  before_save :set_default_count

  # method to increment counter
  def increment_count
    update(count: count + 1)
  end

  # method to get most 10 searched queries
  def self.most_searched_queries(limit = 10)
    order(count: :desc).limit(limit)
  end

  # initialize counter with 0
  def set_default_count
    self.count ||= 0
  end
end
