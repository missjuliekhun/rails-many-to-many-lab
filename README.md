# Schedoc (sk-DOC)

## Help Dr. Scully's Receptionist

Your task is to create a scheduling app for the new receptionist at Dr. Scully's practice. Another developer had started building out the interface and application, but got sucked into a code challenge black hole from which they have not emerged since...

The prior developer created CRUD functionality for doctors and patients, but there is no ActiveRecord association between them.

In fact, there is supposed to be a join model linking doctors and patients, so that the receptionist can schedule appointments. Not only should this join model associate a certain doctor with a certain patient, but it should do so at a specific time (the time at which the appointment is to be scheduled).

## Problem Domain

At Dr. Scully's practice, there is an assortment of doctors, each with their own specialty. The many patients of Dr. Scully's practice have various ailments and have to see different doctors on different occasions. Each patient potentially has multiple doctors that they will need to see.

## Specifications

Ultimately, you will have to create a join model (appointments/checkups/visits/etc) that creates many-to-many associations between doctors and patients.

You will have to write or generate migrations for this join model that references the models being joined. You will also have to include the time of the appointment/checkup/visit/whatever-you-named-it as well ([Check out the bottom of section 3.1](http://guides.rubyonrails.org/v2.3/migrations.html)).

## State of the Existing App

You will need rake DCMS (`rake db:drop db:create db:migrate db:seed`) after cloning-down your fork.

The models have no active record associations, nor is there a join model. Your task is to create a join model, create migrations that link the models and add the appropriate columns to the join model, set up the ActiveRecord associations in the models (`app/models/doctors.rb` & `app/models/patients.rb`), and alter seed data to create some appointments.

Then, create CRUD functionality, controller and corresponding views for this join-model.

## Bronze

- Plan your database using an ERD diagram
- Create the join model and appropriate database table(s)
- Set up the ActiveRecord associations between the models
- Alter the seed data to create some appointments
- Create CRUD functionality to create appointments (controller and views for appointments)
- Using Rspec, write at least one test to cover a piece of functionality or logic in your app

## Silver

- Write at least 3 tests
- Create a login system for users of the app to schedule appointments, and save the appointments so that they are tied to a specific user. (Hint: Devise)

## Gold

- Write 10 or more tests
- Continue building your login system so doctors and patients can log in. 
 - Doctors are admins and can change appointment times, but users can only view appointments. 
 - Users cannot view the appointment details of any other patient, only their own.
- Create profile pages for the users
- Add the ability for users to upload an image to their profile page





