#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINN_GOALS OPP_GOALS
do
  TEAM01=$($PSQL "SELECT name FROM teams WHERE name = '$WINNER'") #No dejar espacios entre TEAM01=$
    if [[ $WINNER != "winner"  ]]
      then
        if [[ -z $TEAM01  ]]
          then
            INSERT_TEAM01=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')") #No dejar espacios entre INSERT_TEAM01=$
            if
              [[ INSERT_TEAM01 == "INSERT 0 1" ]] #¿Por qué no usar $ adelante de INSERT?TEAM01...?
              then
                echo Inserted into teams, $WINNER
            fi
        fi
    fi

  TEAM02=$($PSQL "SELECT name FROM teams WHERE name = '$OPPONENT'") #No dejar espacios entre INSERT_TEAM02=$
    if [[ $OPPONENT != "opponent"  ]]
      then
        if [[ -z $TEAM02  ]]
          then
            INSERT_TEAM02=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')") #No dejar espacios entre INSERT_TEAM02=$
            if
              [[ $INSERT_TEAM02 == "INSERT 0 1" ]] #¿Por qué acá usa $ adelante de INSERT?TEAM02...?
              then
                echo Inserted into teams, $OPPONENT
            fi
        fi
    fi

  TEAM_ID_W=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  TEAM_ID_O=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  
    if [[ -n $TEAM_ID_W || -n $TEAM_ID_O ]]
      then
        if [[ $YEAR != "year" ]]
          then
            INSERT_GAMES=$($PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', '$TEAM_ID_W', '$TEAM_ID_O', $WINN_GOALS, $OPP_GOALS)")
            if [[ $INSERT_GAMES == "INSERT 0 1" ]] #¿Por qué acá usa $ adelante de INSERT_GAMES...?
              then
                echo Inserted into games, $YEAR
            fi
        fi
    fi
done
