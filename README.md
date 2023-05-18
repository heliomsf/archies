# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

I want to build a website that works as an architecture catalog, organized by location (coordinates, neighbourhoods, cities, countries) and where buildings are shown as cards, airbnb style. Users will be able to create, read, update and delete buildings, add pictures to existing buildings, create, read, update and delete their reviews and rate the buildings with 1 to 5 stars. I'll be using Rails as a framework, and PostgreSQL for the database, as well as Git for version control.
Steps:
Set up development environment by installing Rails, PostgreSQL, and Git.
Create a new Rails application using the rails new command.
Generate a Buildings model with attributes for name, address, coordinates, neighborhood, city, and country.
Generate a Reviews model with attributes for content, rating, and a foreign key to the Buildings model.
Generate a Users model with attributes for email and password.
Set up associations between the Buildings, Reviews, and Users models.
Create controllers for Buildings, Reviews, and Users.
Create views for Buildings, Reviews, and Users.
Implement CRUD functionality for Buildings, Reviews, and Users.
Implement image uploading functionality for Buildings.
Implement star rating functionality for Reviews.
Implement search functionality for Buildings by location.
Deploy application to a hosting service like Heroku.