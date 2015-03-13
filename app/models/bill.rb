class Bill < ActiveRecord::Base
  belongs_to :user
  has_many :items, :dependent => :destroy
  accepts_nested_attributes_for :items, :reject_if => lambda { |a| a[:article].blank? }
end
