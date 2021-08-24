class Show < ActiveRecord::Base

  belongs_to :network

  has_many :characters
  has_many :actors, through: :characters


  def actors_list
    self.actors.all.map {|item| item.first_name + ' ' + item.last_name}
  end


end