use Rack::Static, 
  :urls => ["/img", "/font", "/js", "/css"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.htm', File::RDONLY)
  ]
}