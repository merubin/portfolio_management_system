# README


# Portfolio Management System  - GA WDI-12 Project 2 By Mike Rubin

The Portfolio Management System project is a full-stack application project  This program will  allow users to create a GA portfolio from the various projects they have completed.   During the course of a student’s WDI program they will create both projects and their portfolios.  This program will gather this information into a data model consisting of Users, Projects and Portfolios and allow a student to create a portfolio to show various projects. Portfolios can be created either from an individuals work or groups of individuals. This will allow work done to be created and shown in various ways allowing portfolios created by category that may fit the requirements of a specific job or employer.

### User Stories

* As a employer, a URL can be passed in email or resume that will display a specific portfolio.
* As a user, all data entered is password protected.
* As a user, portfolios can be created, by user, or portfolio's.
* As a user, portfolios can be created from other user projects. Such as a group project.
* As a user, a project may be used in many portfolios.
* As a user, projects may be replicated under different names if necessary to represent different functionality.
* As a user, Project information can be created, viewed, edited, and deleted. (CRUD)
* As a user, User information can be created, viewed, edited, and deleted. (CRUD)
* As a user, Portfolio can be created, viewed, edited, and deleted. (CRUD)
* As a user, if a user has created projects that user cannot be deleted unless the projectes are deleted first.
* As a user, if any Projects are deleted, they are automatically removed from any portfolio's that used them.
* As a user, an easy to use use interface to select projects for a new portfolios.  


### Technologies Used

* Postgresql relational database
* Ruby on Rails with added sessions for user security
* HTML was used only for structuring content.
* CSS was used for applying all visual styles.


### Installing

To install, clone a copy from github repository the username is merubin the repository is named hanmgan.git

### Hosting and Video Demo
The app is hosted with Heroku at:https://portfolio-management-system.herokuapp.com/
There is a video of the app on youtube:https://youtu.be/P6f7e9YgTy0



```
git clone git@github.com:merubin/portfolio_management_system.git

```
### Ruby and Database Notes
* Ruby version - 5.0
* A seeds.rb is available to create a starter dataset.


## Approach Taken

This full-stack application was begun with the end in mind. I reviewed my current portfolio which I have hosted at mike-rubin.com and determined what data model I could represent it by. I built an initial ERD using draw.io and then began to map out the various screens I would need to show the functionality and screen design. The applications features a menu that allows easy access to the various projects or portfolio screens there you can edit and add additional


## Future Features

Currently this application needs work with CSS styling.  A future enhancment would allow for each portfolio to include its own styling pages which would allow for a different style for each portfolio.

## Authors

* **Mike Rubin** - *Initial work* - [Rubin IT Solutions](http://mike-rubin.com)


## License

This project is licensed under the MIT License.

## Acknowledgments

* Thank you to my teachers, Jesse Shawl, Nick Olds, and Adrain Maseda, who after only six weeks of classes have given me the knowledge to enable this full stack application to be produced.  In addition, I want to thank James Reichard and Andy Kim for help after hours.

* I want to thank those students of WDI-12 for their inspiration and good words to make this program a success.
