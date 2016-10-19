# README


# Portfolio Management System  - GA WDI-12 Project 2 By Mike Rubin

The Portfolio Management System project is a full-stack application project  This program will  allow users to create a GA portfolio from the various projects they have completed.   During the course of a student’s WDI program they will create both projects and their portfolios.  This program will gather this information into a data model consisting of Users, Projects and Portfolils and allow a student to create a portfolio to show various projects. Portfolios can be created either from an individuals work or groups of individuals. This will allow work done to be created and shown in various ways allowing portfolios created by category that may fit the requirements of a specific job or employer.

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

* Postgresql releational database
* Ruby on Rails with added sessions for user security
* HTML was used only for structuring content.
* CSS was used for applying all visual styles.


### Installing

To install, clone a copy from github repository the username is merubin the repository is named hanmgan.git


```
git clone git@github.com:merubin/portfolio_management_system.git

```
### Ruby and Database Notes
* Ruby version - 5.0
* A seeds.rb is available to create a starter dataset.


## Approach Taken

The game was written to act a a finite state machine. After the game is started, the game traverses through
various states of play from level zero, or game start, through level six, or Game Over, where the user has lost.  
At each level a check is made to see if a Win has happened.

Associated with each state level is a Hangman level class. The javascript keeps track of the level and changes the game board by removing and adding the old and new class name representative of that level.  This will then adjust the
game-board with the correct picture of the correct body part hanging from the gallows.

A hangman object was created to keep the state of the game, the keyboard and the current words of the game.

The words for the game are stored as content int he HTML file.  Meta tags were used to store words, categories and URL's to images that relate to the current game.  By adding a new meta tag, the game can be expanded.


## Future Features

The game in its current form is feature complete at the GOLD level.  The MVP Bronze for this game was to get one topic and one word list created and working.  The Silver version added multiple categories.  The gold version added the background images.

Future versions could be added to give the user a choice of which category to play from.  In addition, a timer could be used to score how long it took to win.  This could be saved or stored up on the cloud to compete with other users.  Further updates could consolidate the words up on the cloud, so that any list could be shard across all users.


## Authors

* **Mike Rubin** - *Initial work* - [Rubin IT Solutions](http://mike-rubin.com)


## License

This project is licensed under the MIT License.

## Acknowledgments

* Thank you to my teachers, Jesse Shawl, Nick Olds, and Adrain Maseda, who after only six weeks of classes have given me the knowledge to enable this full stack application to be produced.  In addition, I want to thank James Reichard and Andy Kim for help after hours.

* I want to thank those students of WDI-12 for their inspiration and good words to make this program a success.
