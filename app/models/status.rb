class Status < ApplicationRecord
  validates :name, presence: true
  validates :h, presence: true
  validates :a, presence: true
  validates :b, presence: true
  validates :c, presence: true
  validates :d, presence: true
  validates :s, presence: true
end
