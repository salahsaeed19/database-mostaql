# Mostaql Database SQL Script

This repository contains SQL scripts for creating and populating the Mostaql database, a platform for freelancers and projects. The database structure includes tables for users, freelancers, projects, reviews, offers, companies, and more. The scripts showcase the database schema, data insertion, stored procedures, triggers, and views.

## Project Owners

- Salah El-Din Abu Seif
- Abdel-Razzaq El-Dahdouh
- Fathi Shamlakh

## Table of Contents

- [Introduction](#introduction)
- [Database Schema](#database-schema)
- [Sample Data](#sample-data)
- [Stored Procedures](#stored-procedures)
- [Triggers](#triggers)
- [Views](#views)
- [Backup and Restore](#backup-and-restore)
- [Usage](#usage)
- [License](#license)

## Introduction

This SQL script repository presents the structure and functionality of the Mostaql database. The database is designed to manage users, freelancers, projects, reviews, offers, companies, and more. The scripts are written for demonstration purposes and can be adapted for specific requirements.

## Database Schema

The Mostaql database schema includes the following tables:

- `Users`: Holds user information such as ID, first name, last name, email, and more.
- `Freelancer`: Contains details about freelancers, including ID, description, specialization, availability, and more.
- `Projects`: Manages project details like ID, name, skills, description, budget, and associated freelancer.
- `Review`: Stores review information, including user and freelancer IDs, various ratings, comments, and publication date.
- `Offers`: Tracks project offers with details like delivery time, amount, user ID, description, and date published.
- `Company`: Holds company information such as ID, name, specification, number of employees, website, and manager.
- `Files`: Manages files related to projects, with fields for file name, type, and associated project.
- `Favorite`: Stores user-favorite project associations.
- `empolyee_company`: Establishes the relationship between users and companies.

## Sample Data

The SQL script provides sample data insertion for the `Users`, `Freelancer`, `Projects`, `Review`, `Offers`, `Company`, `Files`, and `Favorite` tables. Sample users, freelancers, projects, reviews, offers, companies, files, and favorite associations are inserted for demonstration purposes.

## Stored Procedures

Stored procedures are defined to perform specific actions:

- `AllUsers2`: Retrieves all users from the `Users` table.
- `UserName`: Retrieves user information based on the provided first name.
- `Show_offers`: Displays offers for a specific project with associated freelancer names.
- `Add_user`: Adds a new user with specified details to the `Users` table.

## Triggers

Triggers are used to automatically perform actions in response to events:

- `insert_works`: Displays information about inserted works (triggered after an insert operation on the `Works` table).
- `LowGredit`: Prevents an update on the `Users` table if the credit value is low.

## Views

Views provide customized data presentations:

- `view1`: Displays freelancers with available amounts greater than 10,104.
- `Print_users_arabic`: Shows users who speak Arabic.
- `viewuser`: Combines user names and company specifications.
- `Freelancer_ratting`: Displays freelancer names and their average ratings.
- `Empolyeeies_Company`: Shows user names working in companies.

## Backup and Restore

The SQL script includes commands for backup and restore of the Mostaql database.

## Usage

1. Create a new SQL database in your preferred database management system.
2. Copy and execute the SQL script in your chosen SQL client to define tables, insert data, and set up procedures, triggers, and views.

**Note:** This script is provided as a learning resource and may need modifications to match specific database systems and requirements.

## License

This script is provided under the [MIT License](LICENSE).

