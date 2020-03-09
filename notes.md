3/1
  Goals:
    -Create homepage - DONE
    -Create new user page - DONE
    -Setup sessions - DONE
    -Implement current_user method

3/2
  Goals:
    -Create user index page -DONE
    -Implement current_user method
    -Create user show page - DONE
    -Allow editing of a user - DONE
    -Create signin method for existing users - DONE
    -Allow logout for existing users - DONE
    -Add optional "developer" column to "user"      database table - DONE
    -Add link from user names on index page to their respective show pages - DONE
    -add form to create a new game
  Update:
    -Completely overhauled database structure, changed to a "user <==> transaction <==> game ==> genre" structure
  Future Notes:
    -User ==> Transaction might be a good opportunity to implement nested routes
    -Due to model relationship, cannot create new game without genre
    -Need to create genre before I can create a new game
    -Might be best to implement creation of new genre into new game form

3/3
  Goals:
    -Get new game to save to the database
    -Create database association between game and genre - DONE
    
3/4
  Goals
    -Get new game to save to the database - DONE
    -Add link from game titles on index page to their respective show pages - DONE
    -Redirect to homepage if not logged in - DONE
  Notes:
    -Game can save to the database from the console, but something is going wrong with the webpage - FIXED

3/5
  Goals
    -Revamp database to create a Develoer object - DONE
    -Allow the creation and show page viewing of a new Developer - DONE
  Notes:
    -'signin' route currently leads to signin exclusively for users. Will need to differentiate signin pages for users and developers, change route names accordingly

3/6
  Goals:
    -Allow a game to save the identity of its developer upon creation - DONE
    -Create a navigation bar for the bottom of the page - DONE
    -Figure out how to include logout path on navigation bar - DONE
    -Implement ability to edit a game - DONE
    -Prevent user from editing a game unless they are its developer - DONE
    -Add link from a game's show page to its edit page - DONE

3/7
  Goals:
    -Prevent user from signing in unless their password matches - DONE

3/8
  Goals:
    -Add method to Transaction model to add a game to a user's games - DONE
    -Purchase method shouldn't work if user doesn't have enough money - DONE
    -Purchasing a game subtracts the price from a user's money and adds it to the developer's money - DONE
    -Each game on the index page shows the game's developer and links to their show page - DONE
    -Signup/login should land on a welcome page, not user show page
    -Add button on game show page to buy the game
    -User show page for non-developers should show the games they've purchased

  3/9
    Goals:
    -Signup/login should land on a welcome page, not user show page
    -Add button on game show page to buy the game
    -User show page for non-developers should show the games they've purchased