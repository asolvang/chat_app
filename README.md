# Chat_app

Simple demo og Hotwire, Stimulus.js in the form of a "messenger" type chat app.

Uses:
Hotwire (not implemented yet for realtime updates of messages)
Stimulus
Webpacker
Tailwind
Devise
Sidekick (not implemented yet for messages handling)
Postgres

To install:
Download and run 
rails db:crate
rails db:migrate

To run:
Terminal 1: foreman start -f Procfile.dev 
Terminal 2: rails s