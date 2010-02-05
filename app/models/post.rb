class Post < ActiveRecord::Base
  before_save :render_body
  
  def render_body
    self.rendered_body = RDiscount.new(self.body).to_html
  end
end
