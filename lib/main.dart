// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:practice/Animation/animated_opacity.dart';
import 'package:practice/Animation/cross_fadeAnimation.dart';
import 'package:practice/Animation/foo_Animation.dart';
import 'package:practice/Animation/hero_animation.dart';
import 'package:practice/Animation/listWheelScrollView.dart';
import 'package:practice/Animation/ripple_animation.dart';
import 'package:practice/Animation/tweenAnimation.dart';
import 'package:practice/BMI%20App/bmi.dart';
import 'package:practice/Custom_Widges/custome_widges.dart';
import 'package:practice/Gradient%20Background/gradient.dart';
import 'package:practice/HTTP/get.dart';
import 'package:practice/HTTP/post.dart';
import 'package:practice/Login_Page/login.dart';
import 'package:practice/Login_Page/loginSplash.dart';
import 'package:practice/Mapping%20Lists/mapping2.dart';
import 'package:practice/Mapping%20Lists/mapping_lists.dart';
import 'package:practice/Shared%20Pref/shared_pref.dart';
import 'package:practice/Stateful/crud.dart';
import 'package:practice/Widgets/box_decoration.dart';
import 'package:practice/Widgets/call_back_func.dart';
import 'package:practice/Widgets/card.dart';
import 'package:practice/Widgets/clipRRect.dart';
import 'package:practice/Widgets/col_row.dart';
import 'package:practice/Widgets/date_picker.dart';
import 'package:practice/Widgets/expanded.dart';
import 'package:practice/Widgets/get_date&time.dart';
import 'package:practice/Widgets/gridView_build.dart';
import 'package:practice/Widgets/grid_layout.dart';
import 'package:practice/Widgets/icons.dart';
import 'package:practice/Widgets/image_adding.dart';
import 'package:practice/Widgets/inkwell.dart';
import 'package:practice/Widgets/listTile.dart';
import 'package:practice/Widgets/listViewComponents.dart';
import 'package:practice/Widgets/listView_builder.dart';
import 'package:practice/Widgets/listView_separated.dart';
import 'package:practice/Widgets/marg_pad.dart';
import 'package:practice/Widgets/rich_text.dart';
import 'package:practice/Widgets/scrollable_widges.dart';
import 'package:practice/Widgets/sizebox_widgets.dart';
import 'package:practice/Widgets/splash_screen.dart';
import 'package:practice/Widgets/stateful.dart';
import 'package:practice/Widgets/stck.dart';
import 'package:practice/Widgets/text-input.dart';
import 'package:practice/Widgets/wrap_widget.dart';
import 'package:practice/constraints.dart';
import 'package:practice/ex1.dart';
import 'package:practice/navigate_value/navigate.dart';
import 'package:practice/RangeSlider/range.dart';

//manually packages
import 'Widgets/font_change.dart';
import 'package:practice/Widgets/circleAvatar.dart';


void main() {
  runApp(const Cont());
}

class Cont extends StatelessWidget {
  const Cont({super.key});

  @override
  Widget build(BuildContext context) {


    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         backgroundColor: Color.fromARGB(153, 121, 79, 4),
        //backgroundColor: const Color.fromARGB(255, 79, 115, 98),
        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(255, 11, 8, 68),
        //   title: const Text(
        //     "Flutter App",
        //     style: TextStyle(color: Colors.white, fontFamily: 'Protest_Riot'),
        //   ),
        // ),
       body:
         //Center(
          //   child: InkWell(
          //     onTap: (){RippleAnimation();},
          //       child: Container(
          //       ),
          //     ),
          // )

          //Use of ListTile:-
          //ListTaile(),

          // Use Of CircleAvatar:
          //CrclAvtar(),

          // Addding Custom Fonts:
          // FontChange(),

          //Understanding of Margin and Padding.
          //MarginPadding(),

          // Use Of Expanded widget:
          //ExpandedWidget(),

          // ==> Use Of BoxDecoration :
          //Box_Decoration(),

          // ==> ListView.builder :-
          //ListView_Builder(),

          // ==> ListView.separated :-
          //ListView_Separated(),

          //ListView and Its Components :- It is used to display item in linear manner.
          //ListView_Components(),

          //Text :=
          //Text_Widget(),

          // Scrollable Widgets :
          //Scrollable_Widget(),

          //Image adding
          //Image_Adding(),

          //Use of InkWell :
          //Ink_Well(),

          //Column and Row Concept
          //ColumnRow(),

          //Use of Card Widget
          //Card_Widget(),

          //Use Of TextField
          //Text_Input(),

          //Get Curent Date and Time
          //CurrDateTime(),

          //pick Any Date
          //Date_Pick(),

          //Use Of GridView
          //GridLayout(),

          //Use Of GridView.build
          //GridViewBuild(),

          //Implementation of Callback function
          //CallBack(),

          //Create Custom widgets
          //CustomWidges(),

          //Use Of Stack:
          //StackWidget(),

          //Use of Wrap widget:
          //WrapWidget(),

          //Use Of SizeBox
          //SizeBox(),

          //Use Of Rich Text
          //MyRichText(),

          //Use of IconWidgets
          //IconWidgets(),

          //Use Of Stateful Widgets
          //StateFulWidget(),

          //Extra practice
          //Ex1(),

          //basic Crud Program
          //Crud(),

          //Use Of Constraints
          //Constraint(),

          //Use of Splash Screen
          //SplashScreen(),

          // navigate Value One screen to Other.
          //Navigate(),

          // Use Of RangeSlider
          //MyRangeSlider(),

          //BMI AppBar
          //BmiCalculator(),

          //Use of AnimationContainer
          //ContAnimation(),

          //Use Of AnimatedOpacity
          // MyOpacity(),

          //Use of CrossFadeAnimation.
          //CrossFadeAnimation(),

        //Use Of Hero Animation
          //HeroAnimationWidget(),

        //Use Of Tween Animation
          //TweenAnim(),

        // Use of Ripple Animation
           //RippleAnimation(),

        // Use of ListWheelScrollViewWidget(3D Scroll)
          //ListWheelScrollViewWidget(),

        //Use Of ClipRect
        // ClipRRectWidget(),

        //Use of Gradient Color
          //MyGradient(),

        // Mapping List
        //   MappingLIst(),
        //   UserMapping(),

         //Http requests
        //GetReq(),
       //PostReq(),

         //Shared Preferences
       // Center(
       //   child: Padding(
       //     padding: EdgeInsets.all(8.0),
       //     child: SharedPref(),
       //   ),
       // ),

       //Login page
       //LoginPage(),
       LoginSplash(),

        ),
    );
  }
}
