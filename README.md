# Cocao_MacOS_App v0.1
## Authors
@Tozturk18 - Ozgur Tuna Ozturk - tunaozturk2001@hotmail.com. <br>
Last edited on April 29, 2024.

## Description
Hello there! Welcome to my repository, where I'm diving into Objective-C! Here, I'll be exploring programming MacOS apps without relying on any development environments like XCode.
<br><br>
I'm well-versed in various programming languages, including C, C++, C#, JavaScript (and web development), Python, Matlab, R, PHP, x86-64 & x8 Assembly, and more. Despite my familiarity with these languages, I often find myself gravitating towards C due to its simplicity, power, control, and versatility. From Embedded Systems to Numerical Analysis tools and PCB BLDC Motor generators, I've employed C in numerous projects. However, while C is fantastic for my backend needs, it confines me to the Terminal app for user interfaces.
<br><br>
For every problem, there is a solution! I could tunnel the output from my C code to an app made with Swift in XCode. But there's a catch: XCode demands a whopping 12GB of space (24 GB if you count the package extraction). My trusty 2018 Macbook Air, with its 128GB Storage, 1.6 GHz Dual-Core Intel i5 CPU, and 8GB LPDDR3 RAM, just can't spare that kind of room. With a demanding workload spanning Physics, Computer Science, Mechanical Engineering, and Electrical Engineering, I've barely got any space left for essentials—let alone XCode. (I have only a few megabytes left, I can barely watch Youtube.)
<br><br>
But I like to always challenge myself! Instead of taking the conventional route with XCode and Swift, I've opted to write Objective-C code to run my programs natively. As I delve into Objective-C, I've quickly discovered that its name is a bit misleading (it's not as similar to C as I expected). Nevertheless, I've already crafted some helper classes that allow me to create polygons, texts, buttons, and more.
<br><br>
I'm a hands-on learner, so I'm starting by designing some simple UIs for my existing C apps. From there, I plan to tackle classics like Pong, Tetris, and Pac-Man, and who knows—maybe even venture into replicating more complex 3D games like Minecraft!

## Installation
To install this repository you can either download it as a .ZIP file from Github website or you can clone it. To clone it open your terminal and go to the directory you want to save this repository at and run the command below.
### Cloning Repository
```%
% git clone https://github.com/Tozturk18/Cocao_MacOS_App.git
```
(If the code above fails it might be because you don't have git, to install git you can install XCode command line tools package as shown [below](#install-the-xcode-command-line-tools).)
<br><br>
Once the repository is installed, this repository comes with a Makefile. You can use the Makefile to quickly compile and generate the app.<br>
To run the Makefile all you need to do is head to the directory containing the current repository.

### Change the Directory to the repository
```%
% cd /path_to_dir/Cocao_MacOS_App
```
Once you changed your directory to the folder containing this repository, please run the make command below to compile the code and generate an executable.

### Compile the repository
```%
% make
```
This command might result in an error. In that case please check the makefile to make sure you have the Clang command that comes with the XCode Command Line Tools. Clang is the compiler (similar to gcc or g++) for Objective-C. To download XCode Command Line tools, run the command below:

### Install the XCode Command Line Tools
```%
% xcode-select --install
```
If it still gives an error please contact me @Tozturk18 at tunaozturk2001@hotmail.com.
<br><br>
(To remove the executables and get a clean slate you can run the make clean command)

### Removing Executables
```%
% make clean
```
(Note: This repository only works with MacOS)

## Usage
This repository comes with a main.m that contains an example script of what this repository can do. Currently, This repository can create polygons, text, and buttons. So the main.m creates a button that generates random irregular polygons when pressed.

### Running the program
Once you run the make command as shown [above](#compile-the-repository) you should get 2 executables. One is called [app](app) and the other one is [test](test.app). App is an executable that runs on Terminal, this allows for displaying print statements to the console (terminal). Meanwhile file named "test" is an actual MacOS app that runs when you double-click on it.
### Use cases
This program comes with support for button actions such as MouseDown, MouseUp, MouseEnter, MouseExit. This program also supports text generation, circles, rectangles, and regular and irregular polygons.
<br>
Moreover, each class in the Utilities folder helps compartmentalize jobs.
* <b>App Delegate Initializer</b>
    - Adds controls for terminating the app
* <b>Button Action Handler</b>
    - Handles the button MouseDown action.
    - Includes functions to run whenever the button is pressed
* <b>Button View</b>
    - Generates a button with given parameters:
        - (NSString) Title : The title of the button
        - (NSRect) Frame : The location and size of the button
        - (NSColor) BackgroundColor : Color of the button
        - (NSColor) TitleColor : Color of the button text
    - Links a button action with MouseDown event
* <b>Circle View</b>
    - Generates a circle with given parameters:
        - (NSRect) Frame : The location and size of the circle
        - (NSColor) Color: The color of the circle
        - (NSColor) StrokeColor : The color of the stroke
        - (CGFloat) StrokeWidth : The width of the stroke
* <b>Polygon View</b>
    - Generates a regular polygon with given parameters:
        - (NSRect) Frame : The location and size of the polygon
        - (NSInteger) Sides: The number of sides of the polygon
        - (NSColor) Color : The color of the polygon
        - (NSColor) StrokeColor : The color of the stroke
        - (CGFloat) StrokeWidth : The width of the stroke
* <b>Rect View</b>
    - Generates a rectangle with given parameters:
        - (NSRect) Frame : The location and size of the circle
        - (NSColor) Color : The color of the rectangle
        - (NSColor) StrokeColor : The color of the stroke
        - (CGFloat) StrokeWidth : The width of the stroke
* <b>Shape View</b>
    - Generates an irregular polygon with given parameters:
        - (NSArray<Vector 2>) Vertices : The array containing all the vertices of the shape
        - (NSColor) Color : The color of the shape
        - (NSColor) StrokeColor : The color of the stroke
        - (CGFloat) StrokeWidth : The width of the stroke
* <b>Text View</b>
    - Generate a text with given parameters
        - (NSString) Text : The text
        - (NSRect) Frame : The location and size of the text
        - (NSFont) Font : The font of the text
        - (NSColor) TextColor : The color of the text
        - (NSColor) BackgroundColor : The background color of the text
* <b>Vector2</b>
    - Generates a Vector2 object containing the X and Y position of a vertex with given parameters:
        - (CGFloat) X : The X coordinate
        - (CGFloat) Y : The Y coordinate
* <b>Vector3</b>
    - Generates a Vector3 object containing the X, Y, and Z position of a vertex with given parameters:
        - (CGFloat) X : The X coordinate
        - (CGFloat) Y : The Y coordinate
        - (CGFloat) Z : The Z coordinate
* <b>Window Initializer</b>
    - Generates a new window where everything can be displayed with given parameters:
        - (NSRect) Frame : The window location and size
        - (NSString) Title : The window title

## Contributing
If you want to contribute to this repository you can either fork and try to do stuff on your own. If you are willing to work with me and become a part of this project please contact me and I can add you as a collaborator. 
### Adding Issues
While adding issues please use friendly wording and provide a good title with a nice detailed description. Also please select a label that associates with the issue. An issue can range from a bug report to advice for an improvement in the code. I am a beginner in Objective-C so I would appreciate any kind of contribution.
### Pull requests
If you created a fork or a branch and want to merge it with the main (master) branch, then you will have to generate a pull request. The repository contains a .YML file used to check the branch before merging with main. Apart from the .YML check on the branch, the pull request requires one review before merging.

## License
This project is licensed under the MIT License - see the [LICENSE.md](./LICENSE) file for details.
