class GroupsController < ApplicationController
  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new
    
  end

  def index
  end

  def show
  end
end
