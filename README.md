<img align="left" width="100" height="full" src="https://www3.0zz0.com/2023/10/12/08/683415928.png" alt="Ivvestlogo" >

# mbshir project

mbshir waiter project was completed by <a href="https://thegarage.sa">TheGarage</a>
 mobile application development team. It is built using <a href="https://docs.flutter.dev/get-started/install"> Flutter</a>.
The team used <a href="https://pub.dev/packages/get">Getx</a> framework for state management. Additionally, it is single Git repository that contains the source code for frontend applications and libraries, as well as the necessary tooling for managing them.


## ✨ Features
✔ Authentication: Implement user signup and password reset with OTP for resetting the password.
✔ The feed page displays all the cards from both the order page and the request page.
✔ Display all user statuses, such as 'paid,' and order statuses, such as 'prepared' or 'served.'.
✔ Display all orders and allow watier to add or edit orders if they have not yet paid.
✔ Display the full menu of the restaurant and allow users to create custom orders.
✔ Display all requests with a timer that starts from 30 seconds and shows the request to the waiter.
✔ In settings, user can change the language, display notifications, and log out of the app.

## Installation 

Before installing , make sure you have the following prerequisites installed:

- Flutter: See Flutter's installation guide for instructions on how to <a href="https://docs.flutter.dev/get-started/install">install Flutter</a>.

Once you have the prerequisites installed, follow these steps to install:

1. Clone the project repository to your local machine.
2. Navigate to the root directory of the project.
3. Run `flutter pub get` to install the required dependencies.
4. Run `flutter run` to launch the app.




## Folder Structure

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


**a. binding:**

<a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/ba8951b81e92183d62e80e72675f5c24207888df/lib/core/binding">Includes the dependency injection for all the controllers.</a>

**b. local:**

<a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/ba8951b81e92183d62e80e72675f5c24207888df/lib/core/localization">Includes translation of all required languag</a>

**c. constant:**

<a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/ba8951b81e92183d62e80e72675f5c24207888df/lib/core/constant">Includes all the strings that will be used often through the app which are the image path's, the endpoint, the external url, the keys for the getStorage and finally the validation format to handel the user input e.g email.</a>

**d. routes:**

<a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/ba8951b81e92183d62e80e72675f5c24207888df/lib/core/route">Includes all the app screens route.</a>

**f. themes:**

<a href="https://github.com/The-Garage-Tech-Team/mbshir/tree/ba8951b81e92183d62e80e72675f5c24207888df/lib/core/theme">All the flutter widgets styles from color to sizes are included in themes folder.</a>


### Features

The feature folder consists of the features mentioned above as the main folders and each includes five folders controller,
model, screen, service, and widget. First, the controller and service consists of all the logical solutions for said feature the controller which is the place where you write all the functions you need for your project.
the service it is where the connection and data manipulation of the API is done. The second main folder in a feature folder 
is the model which is the structure of the data for a said feature, Lastly screen and widget folders for view.





### Languages:
[![English](https://img.shields.io/badge/Language-English-purple?style=for-the-badge)](README.md)



