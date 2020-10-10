# morpractice
-----------
### Setting up local image for connection
1.  Clone the Repo
2.  Create the DB Secrets file.  morpractice/db/secrets.txt
3.  Create the Front-End Secrets file.  morepractice/frontend/admin-password.txt
4.  Launch the Docker image.  `docker-compose up`

### REST Endpoints for website
- /api/2020-10-10/jobs.cfc?method=getAll
  - Arguments : None
  - Methods : POST or GET
  - Results : JSON Array of Jobs
- /api/2020-10-10/jobs.cfc?method=getJob
  - Arguments : int JobID
  - Methods : POST
  - Results : JSON Object of Job
- /api/2020-10-10/questions.cfc?method=getQuestion
  - Aruments : int questionID
  - Methods : POST
  - Results : JSON Object of the specific question
- /api/2020-10-10/questions.cfc?method=getAll
  - Arguments : None
  - Methods : POST or GET
  - Results : JSON Array of all the questions
- /api/2020-10-10/telephoneIntegration.cfc?method=startRoboInterview
  - Arugments : None
  - Methods : POST
  - Results : None  (will call user)
  
