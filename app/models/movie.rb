# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  has_many(:actors, { :class_name => "Actor", :foreign_key => "movie_id", :dependent => :destroy })
  belongs_to(:director, { :required => true, :class_name => "Director", :foreign_key => "director_id" })
end
