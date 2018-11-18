
# MVC Project
OBJECTIVE C simple MVC and Object Oriented approach project

### Running the Project
1. Open `demotask.xcodeproj` in Xcode
2. Build and run!



### Dependecies
No dependences required.

### Best Practices
* MVC Design Pattern
* Class with Single Responsibility
* FolderStructure - Seperation on layers
* Asynchronous Network calls
* Callbacks using delegate



### Project Overview
 
* `AYTimecontroller.m` - This is the network and api controller with delegate for call dispatch_async wich is Handles the Request for NYTimes API.

* `Detailsviewcontroller.m` - scene contains detailed News of Ny Times Publish

* `ViewController.m` - Dispaly Summery data of NY Times Publish information we want to show in the app.

* `custcell.m` - customcell for newsFNewsFeeds information

* `Reachability.m` - Check the network and internet available.

### Unit Test
* `demotaskTests.m` - Unit test class with simple DataModel initializationTest.
* `demotaskUITests.m` - Unit test UI StoryBoard with simple User Interface initializationTest.
Note - For this scope only one testcase written more Testcase  can be done by mocking urlsession with  protocols

### CodeCoverage
Code Coverage enabled in Xcode and Investigated in report navigator


