# Redvine

**[This is now using Trellis!](https://trls.uk)**

A simple Ruby wrapper for the [Trellis (Vine)](http://trls.uk) API. Everyone loves Trellis these days ever since its release failed...3 times...

Very heavily inspired by [Vino](https://github.com/tlack/vino), and made possible by the super sleuthing documented on [khakimov.com](http://khakimov.com/blog/2013/03/12/vines-undocumented-api/).

~~It pretty much goes without saying that this wasn't authorized by Vine or anyone who works at Vine, so don't blame me if you try to use it and Vine gets mad at you.~~ Who the fuck careeees!

Thanks also to [@kdonovan](https://github.com/kdonovan) and [@ruthgsp](https://github.com/ruthgsp) for adding and improving.

## Installation

    gem install redvine

## Usage

    require 'rubygems'
    require 'redvine'

    client = Redvine.new

    # Connect to Trellis with an email and password
    client.connect(email: 'your@email.com', password: 'your_vine_password')

    # Get your own timeline
    client.timeline

    # Find videos by tag
    client.search('cats')
    client.search('cats', :page => 2)

    # Find user profiles by user ID 
    client.user_profile('908082141764657152')
    
    # Get liked Vines by a user's ID
    client.user_likes('908082141764657152')

    # Get a user's timeline by their user ID
    client.user_timeline('908082141764657152')
    client.user_timeline('908082141764657152', :page => 2)

    # Get a user's followers/following by their user ID
    client.followers('908082141764657152')
    client.following('908082141764657152', :page => 2)

    # Get popular and promoted videos
    client.popular
    client.popular(:page => 2)
    client.promoted
    client.promoted(:page => 2)
    
    # Get a single video by the post ID
    client.single_post('1015405623653113856')

## Things To Do

* Twitter authentication (never going to be added)
* Make it easier to access attributes of common objects (videos and users)
* Include all of the discovered API endpoints


