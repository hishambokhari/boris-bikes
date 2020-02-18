Boris Bike Challenge
Outline | Task | Installation Instructions | Feature Tests | User Stories | Objects & Methods |

Outline
Hello! This is the Week_1 pairing challenge project, Boris Bikes! 🚲

We've been commissioned by Transport for London, the body responsible for delivery of a new bike system, to build the best bike system in London. 🚀

We're going to create a network of docking stations and bikes that anyone can use. By building a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream into a reality.

The Task
Throughout the course of the project we we’re given several User Stories which are listed below. We started to determine which parts of the User Story are Objects and which are Methods. As in all TDD we created a test for a feature that we wanted to manipulate and then wrote the code to pass those tests.

Installation Instructions
Clone the repository from github then change directory into it.

$ git clone git@github.com:BenSheridanEdwards/Boris_Bikes.git
$ cd Boris_Bikes
Load dependencies with bundle.

$ gem install bundle
$ bundle
Load the app in IRB.

$ irb
2.6.3 :001 > load './lib/docking_station.rb'
 => true
 2.6.3 :002 > load './lib/bike.rb'
 => true
Feature Tests (How it works)
2.6.3 :003 > station = DockingStation.new
2.6.3 :004 > bike = Bike.new

# To report your bike as broken, use .report_broken
2.6.3 :005 > bike.report_broken
2.6.3 :006 > bike.working?
 => false

# To dock at station, use .dock on the station and pass the bike as an argument,
# you can then see bikes inside the station with .bikes
# This will fail if the docking station is full

2.6.3 :005 > station.dock(bike)
2.2.3 :008 > station.bike_dock
 => [#<Bike:0x007fdb4d9b5250 @working=true>]


User Stories:

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a person,
So that I can use a bike,
I'd like to get a bike from a docking station.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).


