class SearchTweetsService
  def self.search(search)
    if search.empty?
      Tweet.all
    else
      Tweet.where('text LIKE(?)', "%#{search}%")
      # Tweet.find_by_sql(["select * from tweets where text like ? ", search])
    end
  end
end