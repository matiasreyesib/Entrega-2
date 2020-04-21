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



