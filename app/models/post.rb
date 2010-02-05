class Post < ActiveRecord::Base
  before_save :render_body
  
  validates :title, :presence => true
  validates :body, :presence => true
  
  def render_body
    self.rendered_body = RDiscount.new(self.body).to_html
  end
end
