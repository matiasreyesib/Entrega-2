# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

1.event_list_user.joins{users:,event:}.where(user="some_user_id")
2.member.joins{users:,organization:}.where(member.organization_id="organization_id")
3.event_list_organization.joins{organization:,event:}.where(event.private=false)
4.event_list_organization.joins{organization:,event:}.where(event.private=true)
5.participation.event_id="some_event_id"
6.date_option.joins{date_vote:}.where(date_option.event_id="some_event_id")
7.comment.event="some_event_id"
8.comment.user_id="some_user_id"
9.member.organization_id="some_organization".where(rol="Admin")
10.user.admin=true

The main pilar in our DB is the table User, that is where we keep the track of all the registered users,and
where most of the other models makes reference to, so we can keep a clean registry of the user activity.
From one side the user counts with a profile, where the main role is to detaily save most of the user information,
like names, and dob, etc. and we have a simple table for messages, where ther is only one author, but can have
many users as recivers.
The other big entity in our database is the table organization, altought it dosent have a lot of atributes,
it has references as foreign keys to many other tables, many user may belong to an organization trough the
member table that uses user and organization as FK, to make th link between them.
The purpose of the aplication is for users and organizations to create events, so to build a bridge between
the creator of an event,an the event itself, we have a table named, Event_list_user that uses the user id and the
event id as FK, and the equivalent table named, Event_List_organization, that uss organization id and event id as FK
To count the participant present on any event we link the users and the event by the table participation, that once
more uses user id and event id as FK, the difference in this case is that the ralation is 1 to many.
To implenet the option to vote for different dates for a given event we have a table with date atribute in 
it indicating the start and end time of the event, and a reference to the event id, making each element in the
date_option table belong to a particular event, and to keep track of the date voted by a certain user on
a certain event we have tje date_vote table, that has a reference to the date voted for from date_option, and
the id of the user that casted the vote.
At last we have the comment sistem for each event, where one event can have many coments, by many users, and 
at the same time, each comment can have many comment replys, by the comment_reply table, both of this
make reference to the user author of the comment, and where the comment came from

