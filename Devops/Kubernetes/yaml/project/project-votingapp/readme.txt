Here we going to deploy voting app which should be exposed for casting vote.
And after casting vote is pushed to Redis db.
Voting-appworker takes the DATA from Redis db and pushes it back to Postgress db.
Postgres db data is then used to display result by Result app.