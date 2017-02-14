# Blocipedia (Wikipedia replica) Web App

### This repository handles the code for the Blocipedia Web App

Homepage:
![Blocipedia Homepage](./app/assets/images/blocipedia.PNG)

Blocipedia is a Wikipedia-replica web app built on the Ruby on Rails framework. 

### Features:
* User authentication and authorization
* Purchasing an account upgrade through Stripe API integration
* Creating and editing markdown-friendly wikis
* 'Premium' users can designate wikis to be private in which case only other premium users or selected collaborators can view

#### Key RubyGems used:
* bootstrap (css styling)
* stripe (payment management)
* devise (user authentication + authorization)
* redcarpet (markdown conversion)
* rspec-rails (TDD)
* faker (development data generation)
* factory_girl_rails (development model instance generation)

Rails Version: 4.2.5