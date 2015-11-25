class Vote < ActiveRecord::Base
  include Positionable

  belongs_to :issue
  belongs_to :user

  scope :by_position, -> (position) { send(position) }
  scope :by_user, -> (user) { find_by(user: user) }
end
