class Tool < ActiveRecord::Base
  attr_accessible :code, :description, :name

  def as_json(options = {}) super(options.merge(:only => [:id, :code, :description, :name, :created_at]))
  end
end
