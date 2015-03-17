class Lesson < ActiveRecord::Base
  belongs_to :section

  validates :name, :presence => true
  validates :text, :presence => true
  validates :number, :presence => true

  def previous
    Lesson.where("number < ?", self.number).first
  end

  def next
    Lesson.where("number > ?", self.number).first
  end
end
