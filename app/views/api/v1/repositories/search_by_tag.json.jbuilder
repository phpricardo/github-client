json.repositories @tags do |tag|
  tag.repositories.each do |repo|
    json.name repo.repository_name
    json.repository_code repo.repository_code
    json.respository_description repo.respository_description
    json.repository_html_url repo.repository_html_url
  end
end