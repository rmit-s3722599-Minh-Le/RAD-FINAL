class ZoneController < ApplicationController
  def new
  end
  def index
    @zones = Zone.all
  end
end
