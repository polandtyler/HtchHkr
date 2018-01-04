//
//  Constants.swift
//  HtchHkr
//
//  Created by Tyler Poland on 1/3/18.
//  Copyright © 2018 Tyler Poland. All rights reserved.
//

import Foundation

// Firebase General
let USERS = "users"
let DRIVERS = "drivers"
let TRIPS = "trips"
let PROVIDER = "provider"

// Other Identifiers
let ID_DRIVER = "driver"
let ID_PASSENGER = "passenger"
let ID_DESTINATION = "destination"
let ID_PICKUP = "pickup"
let ID_PICKUP_POINT = "pickupPoint"

// Account
let ACCOUNT_IS_DRIVER = "userIsDriver"
let ACCOUNT_PICKUP_MODE_ENABLED = "isPickupModeEnabled"
let ACCOUNT_TYPE_PASSENGER = "PASSENGER"
let ACCOUNT_TYPE_DRIVER = "DRIVER"

// Location
let COORDINATE = "coordinate"

// Trip
let TRIP_COORDINATE = "tripCoordinate"
let TRIP_IS_ACCEPTED = "tripIsAccepted"
let TRIP_IN_PROGRESS = "tripIsInProgress"

// User
let USER_PICKUP_COORDINATE = "pickupCoordinate"
let USER_DESTINATION_COORDINATE = "destinationCoordinate"
let USER_PASSENGER_KEY = "passengerKey"

// Driver
let DRIVER_KEY = "driverKey"
let DRIVER_IS_ON_TRIP = "driverIsOnTrip"

// Map Annotations
let ANNO_DRIVER = "driverAnnotation"
let ANNO_PICKUP = "currentLocationAnnotation"
let ANNO_DESTINATION = "destinationAnnotation"

// Map Regions
let REGION_PICKUP = "pickup"
let REGION_DESTINATION = "destination"

// Storyboards
let MAIN_STORYBOARD = "Main"

// ViewControllers
let VC_LEFT_PANEL = "LeftSidePanelVC"
let VC_HOME = "HomeVC"
let VC_LOGIN = "LoginVC"
let VC_PICKUP = "PickupVC"

// UI Messaging
let MSG_PASSENGER = "PASSENGER"
let MSG_DRIVER = "DRIVER"
let MSG_SIGN_UP_SIGN_IN = "Sign Up / Login"
let MSG_SIGN_OUT = "Sign Out"
let MSG_PICKUP_MODE_ENABLED = "PICKUP MODE ENABLED"
let MSG_PICKUP_MODE_DISABLED = "PICKUP MODE DISABLED"
let MSG_REQUEST_RIDE = "REQUEST RIDE"
let MSG_START_TRIP = "START TRIP"
let MSG_END_TRIP = "END TRIP"
let MSG_GET_DIRECTIONS = "GET DIRECTIONS"
let MSG_CANCEL_TRIP = "CANCEL TRIP"
let MSG_DRIVER_COMING = "DRIVER EN ROUTE"
let MSG_ON_TRIP = "ON TRIP"
let MSG_PASSENGER_PICKUP = "Passenger Pickup Point"
let MSG_PASSENGER_DESTINATION = "Passenger Destination"
let MSG_INPUT_DESTINATION = "Please input a destination"

// Error Msgs
let ERROR_MSG_NO_MATCHES_FOUND = "No results. Please search again for a different location."
let ERROR_MSG_INVALID_EMAIL = "Sorry, the email you've entered appears to be invalid. Please try another email."
let ERROR_MSG_EMAIL_ALREADY_IN_USE = "It appears that email is already in use by another user. Please try again."
let ERROR_MSG_WRONG_PASSWORD = "The password you tried is incorrect. Please try again."
let ERROR_MSG_UNEXPECTED_ERROR = "There has been an unexpected error. Please try again."
