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
  Notes:
    -Game can save to the database from the console, but something is going wrong with the webpage