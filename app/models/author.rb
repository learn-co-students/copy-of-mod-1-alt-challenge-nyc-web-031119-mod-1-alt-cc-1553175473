class Author
  attr_reader :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select  do |article|
      article.author == self
    end
  end

  def magazines
    self.articles.map do |article|
      article.magazine.name
    end.uniq
  end

  def show_specialties
    self.articles.map do |article|
      article.magazine.category
    end.unqie
  end


  def self.most_active
  end

  def self.most_verbose
    Article.all.inject
  end

end
