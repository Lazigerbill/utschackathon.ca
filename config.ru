require 'rack/favicon'

use Rack::Static,
  :urls => ["/img", "/js", "/css", "/archived/2017/img", "/archived/2017/js", "/archived/2017/css"],
  :root => "public"

use Rack::Favicon, image: "public/img/favicon.ico"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

map "/archived/2017" do
  run lambda { |env|
  [
    200,
    {
      'Content-Type' => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/archived/2017/index.html', File::RDONLY)
  ]
}
end

map "/archived/2017/schedule" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/archived/2017/schedule/index.html', File::RDONLY)
  ]
}
end

map "/archived/2017/rules" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/archived/2017/rules/index.html', File::RDONLY)
  ]
}
end

map "/archived/2017/register" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/archived/2017/register/index.html', File::RDONLY)
  ]
}
end

map "/archived/2017/resources" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/archived/2017/resources/index.html', File::RDONLY)
  ]
}
end