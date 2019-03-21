class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    self.articles.map do |article|
      article.title
    end
  end

  def word_count
    self.articles.inject(0) do |sum, article|
      sum + article.content.split.length
    end
  end

  def self.find_by_name(name)
    Article.all.find do |article|
      article.magazine.name == name
    end
  end
end
