require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :text }
  it { should validate_presence_of :number}
  it { should belong_to :section }

  context '#next' do
    it 'returns the next lesson after the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :text => 'text', :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :text => 'text', :number => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end
end
