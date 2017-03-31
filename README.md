# Gimail
A Giordano's mail system.

[![Build Status](https://travis-ci.org/giordanofalves/gimail.svg?branch=master)](https://travis-ci.org/giordanofalves/gimail) [![Code Climate](https://codeclimate.com/github/giordanofalves/gimail/badges/gpa.svg)](https://codeclimate.com/github/giordanofalves/gimail) [![Test Coverage](https://codeclimate.com/github/giordanofalves/gimail/badges/coverage.svg)](https://codeclimate.com/github/giordanofalves/gimail/coverage)

* Ruby version: 2.4.0
* Rails version: 5.0.2

## Synopsis
I created this project to a job test.
You can access this project here: [https://gimail.herokuapp.com](https://gimail.herokuapp.com)

My goals are:

* A beautiful code
* Min 95% code covered by specs
* Use great tools like Travis CI, Code Climate and SimpleCov
* A good layout(my weakness)
* Publish this project in heroku server
* User register
* User log in
* An email interface that:
  * Lists a user's emails
  * Allows the user to compose an email containing:
    * A subject
    * A Body
    * A list of other users in the system (many-to-many) that the user can select to send the email to.
    * Send the email using MailGun (send the email through mail guns free service)



## Installing

```console
git clone https://github.com/giordanofalves/gimail.git
cp config/database.yml.example config/database.yml
cp config/secrets.yml.example config/secrets.yml
bundle install
```
Update your database credentials in secrets.yml file.

## System dependencies
### Mailgun API

###### How to get a key
  Access [www.mailgun.com](https://www.mailgun.com) and click in Try Mailgun Now.
  Signup a new free account and get your keys access.

###### Config Mailgun API in Gimail
  Edit a file [config/secrets.yml](https://github.com/giordanofalves/gimail/blob/master/config/secrets.yml) and add yout credentials.

  ```
    default: &mail
      mailgun:
        api_key: "YOUR API KEY"
        domain: "YOUR DOMAIN"
  ```
###### Add Authorized Recipients !IMPORTANT!

If you do not get a domain, you need to add authorized recipients. Only after this you can send email to others emails.

In your domain settings click in "Manage Authorized Recipients". Add a new email and wait this email accept the invite.

## Database creation
```console
  bundle exec rails db:setup
```
## How to run the test suite
```console
rspec ./spec
```
