### planit
PLANIT operates as an ecommerce platform, facilitating product management for business administrators and enabling customers to make purchases through its Android and iOS applications. You can access the platform via the web link provided: https://planit.club/. Developed using the Flutter/Bloc Framework, this iteration marks the third generation of the PLANIT app, leveraging Domain-Driven Design Architecture. For further insights into Domain-Driven Design in Flutter, feel free to explore the following resource: https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/.

### Requirements
To effectively work with the Flutter framework and streamline your development process, ensure you have the following tools installed:

- [Visual Studio Code (Vscode)](https://code.visualstudio.com/)
- [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [Flutter Version Management (FVM)](https://fvm.app/docs/getting_started/installation)

### Setup Instructions
To set up your development environment for the project, follow these steps:

1. Install [Lefthook](https://github.com/evilmartians/lefthook) by running the command: 
   ```
   brew install lefthook
   ```
2. Install [Flutter Version Management (FVM)](https://fvm.app/docs/getting_started/installation).
3. Clone the project repository using Git.
4. Open the project in Visual Studio Code (Vscode) and navigate to the `.fvm/fvm_config.json` file. Check the value of `"flutterSdkVersion"` inside and use the following command to select the Flutter SDK version:
   ```
   fvm use <flutterSdkVersion_you_saw>
   ```
5. Configure Git to perform pull actions with rebase by executing the command:
   ```
   git config --global pull.rebase true
   ```
6. Restart Visual Studio Code for the changes to take effect.