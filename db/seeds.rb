# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USERS
user1= User.create!(email:"",password:"",username:"",admin:TRUE)
user2= User.create!(email:"",password:"",username:"",admin:FALSE)
user3= User.create!(email:"",password:"",username:"",admin:FALSE)
user4= User.create!(email:"",password:"",username:"",admin:FALSE)

#PROFILE
profile1=Profile.create!(user_id:user1,name:"Tom",last_name:"LastN1",phone:"12365478",dob:Date.new(2020,01,01),adress:"Calle1")
profile2=Profile.create!(user_id:user2,name:"Bob",last_name:"LastN2",phone:"98732154",dob:Date.new(2020,01,01),adress:"Calle2")
profile3=Profile.create!(user_id:user3,name:"Tim",last_name:"LastN3",phone:"64123987",dob:Date.new(2020,01,01),adress:"Calle3")
profile4=Profile.create!(user_id:user4,name:"Luke",last_name:"LastN4",phone:"82789123",dob:Date.new(2020,01,01),adress:"Calle4")


#MESSAGE
message1=Message.create!(origin:user1,reciver:user2,message:"Hola")

#ORGANIZATION
organization1=Organization.create!(name:"Uandes",description:"",resource:resource1)
organization2=Organization.create!(name:"Google",description:"",resource:resource2)

#MEMBER
member1=Member.create!(user_id:user1,organization_id:organization1,rol:"admin")
member2=Member.create!(user_id:user2,organization_id:organization1,rol:"member")
member3=Member.create!(user_id:user3,organization_id:organization1,rol:"member")
member4=Member.create!(user_id:user1,organization_id:organization2,rol:"member")
member5=Member.create!(user_id:user4,organization_id:organization2,rol:"admin")
member6=Member.create!(user_id:user3,organization_id:organization2,rol:"member")

#EVENT
event1=Event.create!(title:"",description:"",event_flag:FALSE,event_creator:user3,event_date:date_option1,pirvate:TRUE,resource:resource2)
event2=Event.create!(title:"",description:"",event_flag:FALSE,event_creator:user2,event_date:date_option2,pirvate:TRUE,resource:resource4)

#PARTICIPATION
participation1:Participation.create!(user_id:user1,event_id:event1)
participation2:Participation.create!(user_id:user2,event_id:event1)
participation3:Participation.create!(user_id:user3,event_id:event1)
participation4:Participation.create!(user_id:user4,event_id:event1)
participation5:Participation.create!(user_id:user1,event_id:event2)
participation6:Participation.create!(user_id:user2,event_id:event2)

#EVENT_LIST_USER
elu1:EventListUser.create!(user_id:user1,event_id:event1)

#EVENT_LIST_ORGANIZATION
elo1:EventListOrganization.create!(organization_id:organization1,event_id:event2)

#DATE_OPTION
do1=DateOption.create!(start_date:DateTime.new(2020,4,20,4,30),end_date:DateTime.new(2020,4,20,6,30),event_id:event1)
do2=DateOption.create!(start_date:DateTime.new(2020,5,20,4,30),end_date:DateTime.new(2020,5,20,6,30),event_id:event2)
do3=DateOption.create!(start_date:DateTime.new(2020,4,21,4,30),end_date:DateTime.new(2020,4,21,6,30),event_id:event1)
do4=DateOption.create!(start_date:DateTime.new(2020,5,21,4,30),end_date:DateTime.new(2020,5,21,6,30),event_id:event2)

#DATE_VOTE
dv1=DateVote.create!(user_id:user1,casted_vote:do1)
dv2=DateVote.create!(user_id:user2,casted_vote:do1)
dv3=DateVote.create!(user_id:user2,casted_vote:do2)
dv4=DateVote.create!(user_id:user1,casted_vote:do4)
dv5=DateVote.create!(user_id:user3,casted_vote:do3)
dv1=DateVote.create!(user_id:user4,casted_vote:do1)

#RESOURCE
resource1=Resouce.create!(file_type:".pdf",file:"SomeFile1")
resource2=Resouce.create!(file_type:".pdf",file:"SomeFile2")
resource3=Resouce.create!(file_type:".txt",file:"SomeFile3")
resource4=Resouce.create!(file_type:".png",file:"SomeFile4")
resource5=Resouce.create!(file_type:".png",file:"SomeFile5")
resource6=Resouce.create!(file_type:".txt",file:"SomeFile6")

#COMMENT
comment1=Comment.create!(user:user1,comment"nice event",event_id:event1)
comment2=Comment.create!(user:user2,comment"hi",event_id:event1)
comment3=Comment.create!(user:user3,comment"Good Bye",event_id:event2)

#COMMENT_REPLY
comment1=Comment.create!(user:user1,comment"hi",comment_relpy:comment2)
