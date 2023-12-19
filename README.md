
<img align="left" width="70" height="full" src="https://github.com/The-Garage-Tech-Team/design_system_flutter/assets/53023171/f9c41919-764e-4727-913b-e7f2f7fccdec" alt="flutterlogo" >


# Offline Mood and Caching Data in Flutter  
<br>

This guide will show you how to download and cache files using the Flutter Cache Manager.
**Offline and Caching Data in Flutter** built using <a href="https://docs.flutter.dev/get-started/install"> Flutter</a>.
and using <a href="https://pub.dev/packages/get">Getx</a> framework for state management.
 Additionally, The primary objective of writing.
 Caching API responses is an essential feature for mobile app development. It allows the app to store previously fetched data and display it without having to fetch it again from the server, reducing network usage and improving app performance. In this tutorial, we will learn how to cache API response using Hive, a lightweight NoSQL database for Flutter, manage the app’s state using Bloc, a library that helps to manage the state of a Flutter app by separating the business logic from the presentation layer and display the cached data in our Flutter app.
 

<br>

##  🗺️ Contents 

**Material Components** are a collection of UI widgets and design guidelines, divided into **six components**:
</b></b>







## 🚀  Getting Started Cashing data In Offline Mood

Before installing , make sure you have the following prerequisites installed:

- Flutter: See Flutter's installation guide for instructions on how to <a href="https://docs.flutter.dev/get-started/install">install Flutter</a>.

Once you have the prerequisites installed, follow these steps to install:

1. Clone the project repository to your local machine.
2. Navigate to the root directory of the project.
3. Run `flutter pub get` to install the required dependencies.
4. Run `flutter run` to launch the app.



## 🔎 Folder Structure

This Project follows the Model-View-Controller (MVC) design pattern and uses GetX for state management. The primary directory structure consists of three main folders: Common, Core, and Features.

```bash
mbshir
├─ ios/
├─ android/
├─ assets/
│  ├─ images/
│  ├─ icons/
│  ├─ lottie/
├─ lib/
│  ├─ common/
│  ├─ core/
│  │  ├─ binding/
│  │  ├─ constant/
│  │  ├─ localization/
│  │  ├─ route/
│  │  ├─ theme/
│  ├─ feature/
│  │  ├─ controller/
│  │  ├─ service/
│  │  ├─ model/
│  │  ├─ screen/
│  │  ├─ widget/
│  ├─ main.dart
├─ .env
├─ pubspec.yaml


```
### Common:

 <a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/ba8951b81e92183d62e80e72675f5c24207888df/lib/common"> Common file </a> is directory typically contains code shared throughout the application. Common elements found here include utility classes and custom widgets.


### Core

 <a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/ba8951b81e92183d62e80e72675f5c24207888df/lib/core">Core file</a> directory generally holds foundational code and essential business logic for the application. This may encompass functionalities like binding, routing, localization, themes, and other critical components that are used throughout the app 


### Features

 All the <a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/main/lib/feature">features</a> in the app are organized into folders named after each feature. Each of these folders contains related files, including controller, model, service, screen, and widget



## 💼 Technologies  


| library  |         Usage 
| :-------- | :------------------------- |
| <a href="https://pub.dev/packages/get">Getx</a> |  State management , Navigation, Dependency Management |
| <a href="https://pub.dev/packages/timer_count_down">Get Storage</a> |Store and Retrieve Data in Memory|
| <a href="https://pub.dev/packages/stop_watch_timer">Connectivity Plus</a> | Discover Network Connectivity |




### Languages:
[![English](https://img.shields.io/badge/Language-English-yellow?style=for-the-badge)](README.md)


## 🦸‍♀️  written by 

**Afnan Almohammadi**
  

