#Story Time

## Ruby on Rails - Ruby on Rails Basics
A website where users can collectively write amusing stories one sentence at at time from the inspiration of a single image.

By Maldon Meehan & Noah Yasskin

## Description
* 1) User chooses a story or creates a new one.
* 2) User gets an image at random.
* 3) User adds a sentence to the story inspired by the image.
* 4) The sentence contribution is saved with the user's name and image so that future users can read each line and see who contributed it and what image inspired it.

Before you get started, think through your models and database schema. Consider what pages and paths through your application will look like. For images, use Bootstrap glyphicons or Icons8. Images stored in the apps/assets/images folder can be displayed using the image_tag helper.

Here are some user stories to begin. Add additional user stories as you imagine them.

* As a user, I want to see a list of stories (sorted alphabetically by most recently created to oldest) that I may contribute to on the main page so that I can choose where to contribute.
* As a user, I want to add a new story to the list of stories that anyone can contribute to.
* As a user, I want to be able to edit a story's properties (for example, change the title to fix a typo).
* As a user, I want to delete a story if I don't want to see it on the site any more.
* As a user, I want to be able to read a story when I select it, seeing all of the names, images and text for each contribution.
* As a user, I want to be able to contribute to a story by "rolling" the dice for an image and adding a one-sentence contribution (Hint: set a limit to the size of a contribution's text).
* As a user, I want to be able to edit contributions to correct any mistakes or change the content for clarity.
* As a user, I want to destroy my contributions if I don't like them or want them in the story.
* As a user, I want to see all of the icons that I might be able to roll.
Further Exploration

* Generate a login where a global current_user variable is set. Only allow users to update and delete stories and contributions where the user = current_user.
* Generate a login for an administrator that allows them to add, edit and delete all stories and contributions.
* Add comments, ratings or reviews for stories and contributions.
* Add a search for stories/contributions by keywords. Try the textacular gem for text searches. Note that the Textacular gem release has not been updated for Rails 5, but the source has been updated. To reference the latest code for the gem, use this in your Gemfile: gem 'textacular', git: 'git://github.com/textacular/textacular.git'

## Setup/Installation Requirements

```
$ git clone https://github.com/maldonmeehan/story_time.git
```

Install required gems:
```
$ bundle
```

Run Postgres:
```
$ postgres
```

Open a new window and run:
```
$ rake db:create && rake db:migrate && rake db:test:prepare
```
```
$ rails s
```

Navigate to `http://localhost:3000` in your browser of choice.

## Known Bugs

No known bugs at this point

## Support and contact details

If you have any questions please feel free to contact Maldon on github

## Technologies Used

* Ruby on Rails
* Postgres

### License

MIT License

Copyright (c) 2016, **Maldon Meehan, Epicodus** 


