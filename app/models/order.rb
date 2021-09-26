class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  belongs_to :address
  belongs_to :pharmacy

  def self.fake_orders
    where(status: 'fake').order('created_at DESC')
  end

  def self.not_found_orders
    where(status: 'notfound').order('created_at DESC')
  end

  def self.finished_orders
    where(status: 'finished').order('created_at DESC')
  end

  def self.pending_orders
    where(status: 'pending').order('created_at DESC')
  end
end
