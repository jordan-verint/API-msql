# Node Express API

This API is simply made to query a mysql database and return it in JSON format this API  is expandable.

## Getting Started

### Installing

This project will be using npm for all packages to get started pull down this project to any location on your local machine. Now ensure you are within the folder in a terminal window and run the following: -

```
npm i
```

Once all Node Modules are downloaded we need to look in to getting a web server running locally simply run: -

```
npm start
```

Click here to open the page [API PAGE](locahost:3000)

At this stage the end point now needs a database this is step 2

## Database Setup

The mySQL database lives within a docker container for ease this can be spun up using Docker compose, Please download [Docker compose](https://docs.docker.com/compose/install/) this will allow you to run the commands below, to check you have docker compose on your machine run `docker-compose -v` if you get a response then perfect your ready!

Making sure you are within the same directory as the project please run: -

```
docker-compose up -d
```

### Populate the Database

Once you have ran the docker compose cmd this will create the instance of the mysql database in a container and a comments database, now we need to add data to the database referncing from a backup file with static data!

```
cat backup.sql | docker exec -i database-container /usr/bin/mysql -u root --password=password1 comments
```
Now once thats done you should now have data in your docker container hit the end point on the localhost [localhost:3000](localhost:3000/comments)

If there is an issue with this instaltion please drop me and email!