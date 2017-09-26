require 'sinatra'
require 'slim'

get '/' do
  slim :index
end

__END__

@@layout
doctype html
html
  head
    meta charset="utf-8"
    title Hello
    link rel="stylesheet" media="screen, projection" href="/styles.css"
  body
    h1 Hello there
    == yield

@@index
h2 My Tasks
ul.tasks
  li Get Milk
