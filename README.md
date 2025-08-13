


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

---

### Services

1- Local Storage Service
Provides read and write from and to local storage via Flutter Secure Storage package


2- Shared Service
A service used over the application to fetch the required variables according to each usecase.

---

## Other Getx Features

- Utilized GetPage to handle routes
- Generated Locales via Get CLI
- Implemented Dependency Injection via Bindings



## Screen Shots
Splash (Dark mode, Arabic)          |  Spash (Light mode, English)
:-------------------------:|:-------------------------:
![](https://github.com/user-attachments/assets/1975ab5e-c0c9-44dd-aa5a-4530e85c75cf) | ![](https://github.com/user-attachments/assets/11ed3b60-2a36-49a0-9a70-8937b8904087)

Home (Dark mode, Arabic)          |  Home (Light mode, English)
:-------------------------:|:-------------------------:
![](https://github.com/user-attachments/assets/40b40307-c18d-45a2-ac15-e6fd88b44eec) | ![](https://github.com/user-attachments/assets/7562a68f-859e-4d6a-8bbe-139cfa78da83)

Meal Details (English)          |  Meal Details (Arabic)
:-------------------------:|:-------------------------:
![](https://github.com/user-attachments/assets/7c597d5e-8a6a-4fc3-871f-276be1362ec4) | ![](https://github.com/user-attachments/assets/9f2f7150-a9a3-4043-a0aa-536dbd689cfe)

No internet (Arabic)       | No internet (English)   
:-------------------------:|:-------------------------:
![](https://github.com/user-attachments/assets/823ac79c-afdc-4fa4-8ae3-ddfde36b4769) | ![](https://github.com/user-attachments/assets/8d1d8c10-8597-4f91-bcd7-2d416fb0ee3e)

















