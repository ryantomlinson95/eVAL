# eVAL #

***eVAL is a web application that allows for simple classroom peer evaluation***




##Requirements##

- Ruby v2.2.2

- Rails v4.2.2

- Ubuntu 14.04 LTS

- Mozilla Firefox



> **NOTE:**

> - This has only been tested with the above requirements. Other operating systems and other versions of Ruby may also work.



##Getting Started##

After cloning the repository, cd into the project directory.

Next, install all missing gems with:



```

$ bundle install

```

Next, perform a migration with:


```

rake db:migrate

```

Finally, start a server and open firefox to "http://localhost:3000/"


```

rails server

```



##Students##

To sign up as a student, use your osu email for your username and your student ID number for your password.

This number is the 9-digit number found on your BuckID.

###Features###
- Once added to a group, view that group
- Submit evaluations on group members and leave comments about your group members' performance.



##Administrators##

In order to be granted admin status, you must fill out the contact form and let us know that you would like to be an admin.



###Features###
- Create Classes
- Create Groups inside of Classes
- Add students to those groups
- Send out evaluations
- View results for evaluations

##Evaluations##
- Only users with admin status can send out evaluations
- They can only be sent when there are 2 or more students in a group
- Additionally, if a group has any uncompleted evaluations, another set cannot be sent out until they are all completed
- To view the results of these evaluations, click on the results button next to a group on the groups page
- Results are ordered by date submitted

##Upgrades Since Presentation##
The project has been upgraded with the following since the team's presentation:

- Creating classes
- Adding groups to the classes
- Adding members to the groups
- Sending evaluations to students
- Submitting of evalutations by students
- Viewing of results by teachers
- Major CSS Overhaul 

##TA Testing##
> **NOTE:**

> - This section is for TA Testing purposes only. 

To assist in the grading of this project, we have created the following three accounts with admin privelages:
```
email: stuard.4@osu.edu           password: 123456789
email: miller.6227@osu.edu        password: 123456789
email: giles@cse.ohio-state.edu   password: 123456789
```

All the students in the class have also been added using their OSU emails and default password of ```123456789```

If for some reason you do not have admin privelages on your account and need them to test, do the following in the command line:
```
$ rails c
irb(main):001:0> @user = User.last    //Make sure you are trying to give admin privelages to the last user you created
irb(main):002:0> @user.update_attribute :admin, true
irb(main):003:0> ctrl-d
```
