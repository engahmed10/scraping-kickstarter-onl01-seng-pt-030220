# require libraries/modules here
require "nokogiri"
require "pry"

def create_project_hash
  # write your code here
  #Each project has a title, an image, a short description, a location and some funding details
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

projects={}
kickstarter.css("li.project.grid_4").each do |project|
<<<<<<< HEAD
  title = project.css("h2.bbcard_name strong a").text

  projects[title] = {
    :image_link  => project.css("div.project-thumbnail a img").attribute("src").value ,
    :description => project.css("p.bbcard_blurb").text ,
    :location => project.css("ul.project-meta span.location-name").text ,
    :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
  }
end
projects

end
#binding.pry
=======
  projects[project]= {}
end
projects
binding.pry


# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css("ul.project-meta span.location-name").text
# percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i

end
>>>>>>> 7457a05ce2666c93e93b068e84c0dd2b0b0989b7
