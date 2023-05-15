Report - NEWSAPP
Janvi Bhalala
B00927127

ABSTRACT
The problem that the news app aims to solve is the inconvenience and inefficiency of having to visit multiple news sources to access news from various countries and categories. This can be time-consuming and overwhelming, especially for individuals who want to stay up-to-date with current events across different regions and topics.
The news app provides a solution by aggregating news from multiple sources within a single screen, making it convenient for users to access news articles from different countries and categories in one place. Additionally, the app allows users to create a personal list of favorite news articles, enabling them to quickly and easily access these articles at any time.
Another challenge the app addresses is the difficulty in sharing news articles with others. With the email sharing feature, users can easily share their favorite news articles with acquaintances, colleagues, or friends, without having to copy and paste links or summaries manually.
By providing a streamlined and efficient way to access and share news articles, the news app aims to simplify the process of staying informed and up-to-date with current events, while also making it easier to share this information with others.

INTRODUCTION
The distinctive feature of the application that sets it apart from other news apps is its ability to fetch top news stories from multiple sources within a single screen. With the integration of a News API, the app provides users with a convenient way to access the most current and noteworthy news articles from a variety of news applications and websites, without having to visit multiple sources.
This feature saves users time and effort by providing them with a one-stop-shop for their daily news needs. Users no longer have to switch between different news applications or websites to get updates on the latest news. They can access all their news in one place and stay up-to-date on current events with ease.
Moreover, the application allows users to add their preferred news items to their personal list of favorites. This feature enables users to create a personalized news feed tailored to their interests, making it easier for them to quickly access their favorite articles at any time.
The app also offers a sharing feature that enables users to share their favorite news articles with their acquaintances, colleagues, or friends by sending the selected news content through email. This feature allows users to share news articles they find interesting or relevant with their contacts, helping to promote informed discussion and facilitate the spread of important news stories.
Overall, the application's distinctive feature, combined with its personalization and sharing features, provides users with a comprehensive and convenient news experience that sets it apart from other news apps on the market.

Technologies:
Languages : Dart
Framework: Flutter
API: NewsAPI
State-management : Provider
Architecture : MVC


Flutter
Flutter is an open-source mobile app development framework created by Google. It is designed to help developers build high-performance, cross-platform mobile applications for both iOS and Android platforms using a single codebase.
One of the most significant advantages of Flutter is that it allows developers to create visually appealing and customizable user interfaces (UI) quickly. This is achieved by using its own set of widgets and tools, which are not only easy to use but also customizable to suit the app's needs.
Flutter also comes with a hot reload feature, which allows developers to make real-time changes to the app's codebase and see the effects immediately. This makes the development process faster and more efficient.
Another essential aspect of Flutter is its ability to offer native app performance. Flutter uses a compiled programming language, which enables it to generate native code for both iOS and Android platforms, resulting in fast app performance and reduced development time.
Additionally, Flutter has a vast community of developers, which provides access to many resources and support from the community. It also offers numerous plugins and packages that help developers add functionalities such as animations, maps, and database integration with ease.

Packages
In Flutter, a package is a collection of Dart files that provide specific features and functionality to a Flutter application. These packages are essentially a set of pre-written code that can be easily imported into your Flutter application to add certain features or functionalities.
Flutter packages can be found in the Flutter package repository, also known as pub.dev. This repository hosts thousands of packages that are available for use in Flutter applications, including packages for animations, maps, camera integration, UI components, and many more.
When a package is added to a Flutter project, the necessary files and dependencies are automatically downloaded and installed, making it easy for developers to add new features to their apps quickly.
Flutter also allows developers to create their packages to share their code with others or reuse their code in other projects. These custom packages can be published to pub.dev for others to use, making it easy to share your code with the Flutter community.

Stateless vs Stateful Widgets
Stateless widgets are widgets that do not change their state during the lifecycle of the application. They are immutable and display information that does not change. For example, a Text widget that displays a static string or an Icon widget that displays a constant icon.
Stateful widgets, on the other hand, are widgets that can change their state during the lifecycle of the application. They are mutable and display information that can change over time. For example, a Checkbox widget that changes its state from selected to unselected when the user taps on it.
Stateful widgets have an associated State object that manages the state of the widget. When the state of a Stateful widget changes, the associated State object is updated, and the widget is rebuilt to reflect the new state.
In general, it's best to use Stateless widgets whenever possible because they are simpler, more efficient, and less prone to errors. However, Stateful widgets are necessary for building more complex user interfaces that require dynamic changes based on user input or other events.

Architecture
MVC (Model-View-Controller) is a software design pattern that separates an application's data, user interface, and control logic into three distinct components. In Flutter, the MVC architecture is a popular choice for building scalable and maintainable applications.



In MVC, the Model represents the application's data and business logic. It encapsulates all the data and the operations that can be performed on that data. In a Flutter application, the Model layer can be implemented using classes or objects that store data and perform operations on that data.
The View represents the user interface of the application. It is responsible for displaying the data to the user and capturing user input. In a Flutter application, the View layer can be implemented using widgets and layouts.
The Controller acts as an intermediary between the Model and View layers. It is responsible for receiving user input from the View and updating the Model accordingly. It also updates the View based on changes to the Model. In a Flutter application, the Controller layer can be implemented using classes that handle user input and update the Model and View layers accordingly.
In Flutter, the implementation of the MVC architecture can vary depending on the specific requirements of the application. However, a typical implementation involves creating separate classes for each of the three components (Model, View, and Controller) and defining their interactions.
By using the MVC architecture, Flutter developers can create applications that are easy to maintain, scale, and modify. It also allows for a separation of concerns between the different components, making it easier to test and debug the application.

StateManagement - PROVIDER
State management is a critical aspect of building complex applications in Flutter. Provider is a Flutter package that simplifies state management by providing a centralized approach to sharing data between different widgets in a Flutter application.
With Provider, all the data is stored in a centralized data store called a "model". This model is responsible for managing the state of the application and making that state accessible to different parts of the application.
The data can be obtained from various sources like network requests, local databases, or even hard-coded values. The model listens for changes in the data and updates the application's state accordingly. When the state changes, any widgets that depend on that state will be automatically updated.
To display data in the application, widgets can subscribe to the model and retrieve the data they need. This is done by using a "provider" widget, which acts as a bridge between the model and the widget tree.
For example, let's say we have a counter application that displays the number of times a button has been pressed. The model would contain the current count value and a function to increment the count. The provider widget would wrap the widget tree that displays the count, allowing any widget that needs to access the count value to retrieve it from the model.
Whenever the user presses the button to increment the count, the model updates the count value and notifies the provider widget. The provider widget then rebuilds the widget tree, causing any widgets that depend on the count value to update and display the new value.

APP OVERVIEW



In this Flutter application, the user can access news articles from various news sources around the world. The app is built using the Provider package, which simplifies state management by providing a centralized approach to sharing data between different widgets in the app.
The data is obtained using the News API, which allows the app to fetch the latest news articles from a variety of sources. The data is then stored in a model, which manages the state of the application and makes the data accessible to different parts of the app. The model is implemented using classes or objects that store the data and perform operations on that data.
Once the data is stored in the model, it is passed to the Provider widget, which acts as a bridge between the model and the widget tree. The widget tree consists of the various screens and widgets that make up the user interface of the app.
On the main screen of the app, the user can view a list of top news articles from various sources. Each article is displayed with a title, summary, and an image. When the user clicks on an article, they are taken to a detail screen where they can read the full article in a web browser.
The app also allows the user to filter news articles by country and category. This is done by using dropdown menus on the main screen, where the user can select the country or category they want to view.
​​
The news app is designed to generate top news articles from various news channels and websites. Using a News API integration, the app fetches the most current and noteworthy news articles from a range of sources, including top news channels, magazines, and newspapers, without the need to visit multiple sources.
Once the app fetches the news articles, it displays them on a single screen, making it convenient for users to view the top news stories from different channels and categories in one place. Each news article is displayed with a title, summary, and an image, allowing users to quickly browse through the articles and select the ones they want to read.
When a user clicks on an article, they are taken to a detail screen where they can read the full article in a web browser. This allows users to access all the information they need from the original source, while also ensuring that the app remains up-to-date with the latest news from various channels.
COUNTRY AND CATEGORY 

The screen is use to view news from different countries and categories so that you find everything in on source.
The user can select a country and a category from two dropdown menus located at the top of the screen. The app fetches news articles from the selected country and category and displays them on the screen.
The user can also browse news articles from different news channels by selecting a news channel from a list of categories located on the left side of the screen. The app fetches news articles from the selected news channel and displays them on the screen.



FULL NEWS



In the detailed screen of the news article, the user interface is designed to display the image of the article at the top, followed by the article content and options to interact with the article.
The image displayed at the top is relevant to the article and helps the user to get a visual understanding of what the article is about. This image can be a photograph, an infographic, or any other image that is relevant to the article.
Below the image, the content of the article is displayed. The content includes the title, summary, and the full article text. The title and summary of the article are displayed prominently, making it easy for the user to understand what the article is about and whether they want to read more.
After the article content, the app provides options for the user to interact with the article. These options include a "Read Full Article" button and an "Add to Favorites" button.
When the user clicks on the "Read Full Article" button, they are taken to a web browser where they can read the entire article. This gives the user access to the complete article, even if it is very long, without having to navigate away from the app.
The "Add to Favorites" button allows the user to save the article to their list of favorite articles. This makes it easy for the user to find the article again later if they want to read it again or share it with someone else.

BROWSER





LIST OF ARTICLE




When a user adds an article to their favorites in the news app, it is saved to a list of their favorite articles. This list can be accessed from the app's main menu or from a dedicated favorites screen.
Once the user has saved several articles to their favorites list, they have the option to share their favorite articles with their contacts via email in a unique way. Instead of simply sending a list of article titles or links, the app allows the user to create a personalized email that includes a summary of each article.
To create the email, the user simply selects the articles they want to share and clicks on the "Share via Email" button. The app then generates an email template with the article summaries and a link to the full article. The user can customize the email by adding a message and selecting the email recipients.
What makes this sharing feature unique is that the app automatically generates a summary of each article that is included in the email. This summary provides a brief overview of the article's content and makes it easy for the recipient to understand what the article is about, without having to read the entire article.
This feature saves the user time and effort in summarizing each article themselves and makes it easier for the recipient to decide whether they want to read the full article or not. It also makes the email more visually appealing and informative, and can help to increase engagement with the shared articles.




EMAIL SCREEN



User can easily share all the details of the news with any of their friends and all of the article from different platform in one news which is so convenient.





Conclusion

The development of the news app using Flutter and NewsAPI has proven to be a successful endeavor. The app has been designed to provide users with a convenient and reliable way to access news from multiple sources within a single screen. With the integration of the NewsAPI, users can access the most current and noteworthy news articles from a variety of news applications and websites, without the need to visit multiple sources.
The app's user interface is designed to be simple and intuitive, with articles displayed in a visually appealing way, including a title, summary, and image. When the user clicks on an article, they are taken to a detail screen where they can read the full article in a web browser. The app also allows users to add their preferred news items to their personal list of favorites, enabling them to quickly and easily access these articles at any time.
One of the key features of the app is its use of the Provider package for state management. This package allows for efficient and reliable management of app data, ensuring that articles are displayed in a timely and accurate manner. The app also leverages the MVC architecture pattern to maintain a clean and organized codebase, making it easy to modify and maintain in the future.
In addition, the app offers a unique feature that allows users to share their favorite news articles with their acquaintances, colleagues, or friends by sending the selected news content through email. The email sharing feature generates a personalized email with a summary of each article, making it easier for the recipient to decide whether they want to read the full article or not.
Overall, the development of the news app using Flutter and NewsAPI has been a success. The app provides a convenient and reliable way for users to access news from multiple sources within a single screen, with a simple and intuitive user interface. Its use of the Provider package and MVC architecture pattern ensures efficient and reliable management of app data, while the email sharing feature provides a unique and valuable way for users to share their favorite news articles with others.















REFERENCES:

Flutter : Flutter

Architecture: MVC Architecture – What is a Model View Controller Framework?

NewsAPI: News API

Provider: provider | Flutter Package
