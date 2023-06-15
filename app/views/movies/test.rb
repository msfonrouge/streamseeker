require "uri"
require "net/http"
require "openssl"
require "json"

url =
  URI(
    "https://api.themoviedb.org/3/discover/movie"
  )

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["accept"] = "application/json"
request[
  "Authorization"
] = "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhNTA4OTZmNzBhOTUxNGUzYmNkZjFhNWRlMzhjZGY1ZSIsInN1YiI6IjY0ODdlZTdlZTM3NWMwMDEzOWMxOTljMiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.LIcy7Y3GnrBivahReFlxBg6rThsMRVQH26xRw9otVTM"

response = http.request(request)

response_body = response.read_body

json_response = JSON.parse(response_body)

results = json_response["results"]

results.each { |movie| puts movie["original_title"] }
