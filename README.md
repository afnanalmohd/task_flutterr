
<img align="left" width="70" height="full" src="https://github.com/The-Garage-Tech-Team/design_system_flutter/assets/53023171/f9c41919-764e-4727-913b-e7f2f7fccdec" alt="flutterlogo" >


# Offline Mood and Caching Data in Flutter   
<br>
This guide will take you through the process of storing data fetched from a remote API, ensuring it can be displayed even when there is no active internet connection. Additionally, it will cover synchronizing data once the connection is restored. In this guide, I'll be using<a href="https://docs.flutter.dev/get-started/install"> Flutter</a>
and using <a href="https://pub.dev/packages/get">Getx</a> framework for state management.


<br>

##  Contents
- [Getting Started](#started). 
- [Folder Structure](#folder).
- [Add Dependencies](#dependencies).
- [Initialize Get Storage](#initialize).
- [Controller Class](#controller).
- [Display Cached Data in screen](#screen).
- [Technologies](#technologies).






## 🚀  Getting Started <a id="started"></a>

Before installing , make sure you have the following prerequisites installed:

- Flutter: See Flutter's installation guide for instructions on how to <a href="https://docs.flutter.dev/get-started/install">install Flutter</a>.

Once you have the prerequisites installed, follow these steps to install:

1. Clone the project repository to your local machine.
2. Navigate to the root directory of the project.
3. Run `flutter pub get` to install the required dependencies.
4. Run `flutter run` to launch the app.



## 🔎 Folder Structure <a id="folder"></a>

This Project follows the Model-View-Controller (MVC) design pattern. The primary directory structure consists of three main folders: Common, Core, and Features.

```bash
getStorage
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
### a. Common:

 <a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/ba8951b81e92183d62e80e72675f5c24207888df/lib/common"> Common file </a> is directory typically contains code shared throughout the application. Common elements found here include utility classes and custom widgets.


### b. Core

 <a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/ba8951b81e92183d62e80e72675f5c24207888df/lib/core">Core file</a> directory generally holds foundational code and essential business logic for the application. This may encompass functionalities like binding, routing, localization, themes, and other critical components that are used throughout the app. 


### c. Features

 All the <a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/main/lib/feature">features</a> in the app are organized into folders named after each feature. Each of these folders contains related files, including controller, model, service, screen, and widget.

<br>


## Step 1: Add Dependencies <a id="dependencies"></a>

Open the ```pubspec.yaml``` file located in the root of your project, and add the following line under the dependencies section.

```
  get_storage: ^2.1.1
  connectivity_plus: ^5.0.2
```

<br>


## Step 2: Initialize Get Storage  <a id="initialize"></a>

To initialize get storage, we need to call ```GetStorage().init``` in the main function.

```
 Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}
```

<br>

## Step 3: Controller Class <a id="controller"></a>

Before we continue, I assume you have created a model class, a service class, and a screen class and are fetching data from the API. Now, let’s create a controller class to handle the business logic of the app. I have created three functions to handle caching and synchronizing data as follows:
<br>

### a. function refresh

A function refresh to update the UI once the internet connection is restored.
```
  refreshData() async {
    await syncData();
  }
```


### b. function synchronizing data

The main purpose of the ```syncData```  function is to check the internet connection. By using the ```Connectivity Plus``` package.
Initially, the function checks the internet connection. If the connection is off, it displays data from the  GetStorage. Otherwise, it fetches and displays data from the ```getAllWeather``` function.

```
   syncData() async {
    try {
      isLoading = true;
      update();
      var connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        final cachedWeather = getStorage.read('cachedWeather');
        if (cachedWeather != null) {
          weather = cachedWeather;
          update();
        }
      } else {
        await getAllWeather();
      }
    }
    finally {
      isLoading = false;
      update();
    }
  }
```



### c. function get data 

This function is designed to retrieve data either from a remote server or locally, depending on the internet connectivity status. If the connection is successful, it fetches the data and saves it in the getstorge. In case of an error, it checks the getstorge and displays the stored data.

```
  getAllWeather() async {
    try {
      await service.getAllWeather(
        onDone: (value) {
          weather = value;
          getStorage.write('cachedWeather', weather);
          update();
        },
        onError: (String error) {
          final cachedWeather = getStorage.read('cachedWeather');
          if (cachedWeather != null) {
            weather = cachedWeather;
            update();
          }
        },
      );
    }
    finally {
      isLoading = false;
      update();
    }
  }
```

## Step 4: Display Cached Data in screen <a id="screen"></a>

Now that we have cached the data in getStorage, we can display it in our app even when offline or when the API is not accessible.
Call the ```syncData```function to check the internet status. In this UI, there are three cases: first, read from getStorage and display it; second, if there is no internet, cache the data; finally, when the internet is available, update the data.

```
    WeatherController().syncData();
    return GetBuilder<WeatherController>(
      builder: (controller) {
        if (controller.weather == null) {
          final cachedWeather = controller.getStorage.read('cachedWeather');
          if (cachedWeather != null) {
            return CityWidget();
          }
          else {
            return const Text("No internet and no cached data");
          }
        }
        else {
          return CityWidget();
        }
      },
    );
  }

```
<br>


## Note in using simulator <a id="started"></a>

Sometimes, the ```Connectivity Plus``` package may cause issues with CocoaPods. I recommend the following:

1. Navigate to the /ios folder inside your Flutter project.
2. Locate the ```Podfile.lock``` file and uncomment the line ```platform :ios, '12.0' ```(usually in line 2).
3. Run ```flutter clean```.
4. Run ```flutter run```.





## 💼 Technologies  <a id="technologies"></a>

| library  |         Usage 
| :-------- | :------------------------- |
| <a href="https://pub.dev/packages/get">Getx</a> |  State management , Navigation, Dependency Management |
| <a href="https://pub.dev/packages/timer_count_down">Get Storage</a> |Store and Retrieve Data in Memory|
| <a href="https://pub.dev/packages/stop_watch_timer">Connectivity Plus</a> | Discover Network Connectivity |




### Languages:
[![English](https://img.shields.io/badge/Language-English-yellow?style=for-the-badge)](README.md)


## 🦸‍♀️  written by 

**Afnan Almohammadi**
  

