import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meal_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1),
          ),
          body2: TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1),
          ),
          title: TextStyle(
            fontSize:20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold
            )
        ),
        ),
      //home: CategoriesScreen(),
      routes: {
        '/': (ctx)=> CategoriesScreen() ,
        CategoryMealScreen.routeName:(ctx) => CategoryMealScreen(),
          },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DeliMeals'),
//       ),
//       body: Center(
//         child: Text('Navigation Time')
//       ),
//      );
//   }
// }
