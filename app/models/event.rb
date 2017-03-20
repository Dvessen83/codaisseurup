class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :categories
  has_many :photos, dependent: :destroy
  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user

  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 500}
  validates :starts_at, presence: false
  validates :ends_at, presence: false
  validate :end_after_start

  def free?
    price == 0
  end

  def self.order_by_price
    order(:price)
  end

  def self.alphabetical
    order(name: :asc)
  end

  scope :published, -> { where(active: true) }

  scope :starts_before_ends_after, ->(start_date){
    where('? BETWEEN starts_at AND ends_at', start_date)
  }

  scope :starts_on, ->(start_date){
    where('starts_at = ?', start_date)
  }

  scope :ends_on, ->(end_date){
    where('ends_at = ?', end_date)
  }

  private

  def end_after_start
  return if ends_at.blank? || starts_at.blank?

  if ends_at < starts_at
    errors.add(:ends_at, "must be after the start date")
  end
 end



end
