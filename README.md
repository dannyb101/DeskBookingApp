# DeskBookingApp

This project was completed for a professional client as part of a university project. This was a team project that was conducted using Agile methodologies across 4 sprints including:- Git version control, implementation of user stories, sprint retrospectives/planning and daily stand-up meetings.

The client was a local technology company who's staff primarily work from home but had desk availability for 20% of their staff in a city centre location. Their current solution was an excel spread sheet manged by the office manager. They wanted a solution that could be used by general staff to book desks and to manage their own bookings as well as admin functionality to allow the office manager to manage bookings where necessary. The primary objective was to produce a "fair" solution.

Our soltuion was a web application that used Java, Spring Boot, MySQL, HTML, CSS and Javascript. Users have a unique login which allows them to make a booking for available desks in different locations, look at past/upcoming bookings as well as delete bookings making the desk available for other users.

The solution was "fair" in 3 ways:
  1. Desks are released 7 days in advance at midnight, preventing users from booking far in advance
  2. Users are prevented from booking more than one desk per day, regardless of location
  3. On high traffic days a lottery is implemented preventing users from booking a desk directly but rather being entered into the lottery with desks assigned at random to those in the lottery when it is resolved
