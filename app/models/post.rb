class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories
  
  
  def categories_attributes=(cat)
    cat.values.each do |cat|
      cat = Category.find_or_create_by(cat)
      self.categories << cat
    end
  end
  
  def user_attriburtes=(user_a)
    user_a.values.each do |user_a|
      user = User.find_or_create_by(user_a)
      self.post.comment
      self.user << user
    end
  
  

end
