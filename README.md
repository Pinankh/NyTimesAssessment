# NyTimesAssessment
TechnologyAssement (Technical Round)
Objective C Project
A simple MVC and Object Oriented project

Running the Project
Open demotask.xcodeproj in Xcode
Build and run!
Dependecies
No dependences required.

Best Practices
MVC Design Pattern
Object Oriented Approach 
Class with Single Responsibility
FolderStructure - Seperation on layers
Asynchronous Network calls

Project Overview
AYTimecontroller - This is the network and api controller with delegate for call dispatch_async wich is Handles the Request for NYTimes API.

Detailsviewcontroller - scene contains detailed News of Ny Times Publish

ViewController - Dispaly Summery data of NY Times Publish information we want to show in the app.

custcell - customcell for newsFNewsFeeds information

Reachability - Check the network and internet available.

Unit Test
NYTimesTests.swift - Unit test class with simple DataModel initializationTest. Note - For this scope only one testcase written more Testcase can be done by mocking urlsession with protocols
