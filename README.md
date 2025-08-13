


# Meals App

A Flutter app to view the best meals around the world, using Getx as a state management 

<img width="1536" height="1024" alt="ChatGPT Image Aug 12, 2025, 04_19_04 PM" src="https://github.com/user-attachments/assets/8b7bc7a2-49d0-41ee-bf57-85d689dc6279" />

## API Used

https://www.themealdb.com/api.php


## Features

1- View meals in UI via API

2- Review more about the meals

3- Multi Lanuages (English, Arabic)

4- Supported dark mode

5- Real-time changing to languages and theme modes


## GetX Features

<img width="886" height="582" alt="task1_meals_diagram" src="https://github.com/user-attachments/assets/a6086ce5-ae2e-4340-9070-a8a63a711306" />

### Controllers

1- Splash Controller

Controls the time of splash screen, then navigates to home page

2- Home Controller

 a. Communicates with home provider for abstraction. The home provider fetches data from API, changes and stores the localization and theme modes. 

 b. Handles the three states after fetching the data from provider (Empty, Success, Error)

3- Meal Details Controller

Get the selected meal via Get arguments before initializing the UI

### Services

1- Local Storage Service

Provides read and write from and to local storage via Flutter Secure Storage package

2- Shared Service

A service used over the application to fetch the required variables according to each usecase.

## Other Getx Features

- Utilized GetPage to handle routes
- Generated Locales via Get CLI
- Implemented Dependency Injection via Bindings

## Screen Shots









