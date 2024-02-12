class ActorsController < ApplicationController
  def index
    render({:template => "actor_templates/list"})
  end
  def show
    actor_details = params.fetch("the_id")

    matching_records = Actor.where({:id => actor_details})

    @the_actor = matching_records[0]

    render({:template => "actor_templates/details"})
  end
end
