Welcome to Events Around Town! 

This Sinatra program will allow you to search for upcoming events offered via Ticketmaster in any U.S. city. From a list of events you will be able to get more information such as the venue, location and a link of where to buy tickets. This program is currently unable to search outside of the U.S.

Installation Add this line to your application's Gemfile:

gem 'EventsAroundTown' And then execute:

    $ bundle install 

To open EventsAround, you must first change directories to access the file on the PC where the program is saved. You will need to execute the following in your Terminal:

    $ cd Development 
    $ cd code 
    $ cd EventsAroundTown 

Once in the program execute the text below to begin:

    $ shotgun

You should see something like this in the terminal:
    $ shotgun
    == Shotgun/Thin on http://127.0.0.1:9393/
    Thin web server (v1.6.3 codename Protein Powder)
    Maximum connections set to 1024
    Listening on 127.0.0.1:9393, CTRL+C to stop

Pay attention to the line that says "Listening on 127.0.0.1:9393" as it refers to the url you want to enter in the browser.In the example above, the application will respond to requests at http://127.0.0.1:9393 or, more commonly, localhost:9393.

After entering the url, you will be able to see the Evets Around Town Welcome page, where you can either Sign-in or Login into your profile to search. You will enter a city of your choosing to search.

    ex. Atlanta OR Los Angeles 

You will be directed to a view of the cities upcoming 20 events. From there, you have the ability to choose to get more information about a different event, search events in another city, edit your user profile and delete search entries.

Enjoy using Events Around Town to find your next adventure!






Development After checking out the repo, run bin/setup to install dependencies. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and tags, and push the .gem file to rubygems.org.

Contributing Bug reports and pull requests are welcome on GitHub at https://github.com/[skj1991]/EventsAroundTown. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.