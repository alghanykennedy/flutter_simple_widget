# flutter_simple_widget

A Deep Dive learn about widget common use in Flutter.

**Source Design:**

- figma: [link](https://www.figma.com/community/file/1047728853861186038)

**Packages using:**

- flutter_svg: [link](https://pub.dev/packages/flutter_svg)
- goole_fonts: [link](https://pub.dev/packages/google_fonts)

## How to Run the App

- Clone the repository
- Ensure you have Flutter installed and set up
- Run `flutter pub get` to fetch the project dependencies
- Use `flutter run` to start the application

### Application structure
                    
```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code.
   
    ├── models                      - It contains class / objects created specifically.
    ├── pages                       - It contains widgets of the screens.
        └── widgets                 - It contains all custom widget classes
    ├── main.dart                   - Starting point of the application.
```

#### Home Pages
![image](https://github.com/alghanykennedy/flutter_simple_widget/assets/82708330/98e6efd0-08de-4bdd-924e-11a25b137aee)

#### Detail Pages
![image](https://github.com/alghanykennedy/flutter_simple_widget/assets/82708330/ca1e8abd-93ef-4ba7-8f56-b9771ee4f773)
