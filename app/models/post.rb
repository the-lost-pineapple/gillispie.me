class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments

  def markdown
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(self.body)
  end

end
