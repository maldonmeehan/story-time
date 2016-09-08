class Sentence < ActiveRecord::Base
  belongs_to :story

  validates :user, :presence => true
  validates :contribution, :presence => true
end
