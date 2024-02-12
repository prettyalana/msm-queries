class DirectorsController < ApplicationController
  def index
    render({:template => "director_templates/list"})
  end
  def show
    directors_details = params.fetch("the_id")

    matching_records = Director.where({:id => directors_details})

    @the_director = matching_records[0]

    render({:template => "director_templates/details"})
  end
  def junior

    director_dob = Director.where.not({:dob => nil})

    matching_records = director_dob.order({:dob => :desc}) 

    @director_info = matching_records[0]

    render({:template => "director_templates/youngest_director"})
  end
  def senior

    director_dob = Director.where.not({:dob => nil})

    matching_records = director_dob.order({:dob => :asc}) 

    @director_info = matching_records[0]

    render({:template => "director_templates/eldest_director"})
  end
end
