class Criticism < ActiveRecord::Base

  belongs_to :critique_receiver

  attr_accessible :comment, :critique_receiver_id

  validates :critique_receiver, :presence =>{:message =>'You should specify the target person!'}
  validates :comment, :presence =>{:message =>"Please give your opinion!"}

  PER_PAGE = 10

  def to_s
    comment
  end
end
