# Serverless architecture project
Lamba project

## Architecture

User - API Gateway - Lamda (Flask)

## Steps for creation
- Create the lambda function
Insert the name and the
runtime language, here python 3.11

- Start creating a layer for the function
The role of the layer is to add the flask library to the function
But do not finish

- Install flask and the aws-wsgi library in a new folder
flask is to have the website library ; use this command
> pip install flask -t . // been inside the folder created
the role of this aws-wsgi package is to convert the flask format to the lambda function format

- Zip the folder created folder

- Import the library in the lambda function with but before add a layer to the project
precising the layer ARN
> import flask  // in the lamdba code



## How to use this project