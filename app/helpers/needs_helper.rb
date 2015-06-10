module NeedsHelper
   @urls=[]
  def add_url(url)
    @urls.push(url)
    return JSON.generate(@urls)
  end
 def reset_url
    @urls=[]
 end
end
