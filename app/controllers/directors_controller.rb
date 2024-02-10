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
end
