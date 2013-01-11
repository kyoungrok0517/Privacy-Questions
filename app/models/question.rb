class Question < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :question_type, :photo, :answer
  
  has_attached_file :photo, :styles => {:thumb => ["100x100#", :jpg], :large => ["400x400>", :jpg]},
            :default_style => :thumb,
                    :url => "/:attachment/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/:attachment/:id/:style/:basename.:extension"

  def as_json(options)
    super(:methods => [:resource_url])
  end
  
  def resource_url
    @resource_url = self.photo.url(:large)
  end

end
