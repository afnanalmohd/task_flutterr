
<img align="left" width="70" height="full" src="https://github.com/The-Garage-Tech-Team/design_system_flutter/assets/53023171/f9c41919-764e-4727-913b-e7f2f7fccdec" alt="flutterlogo" >


# Material Components Widgets 
<br>

**Material Components Widgets** was completed by <a href="https://thegarage.sa">TheGarage</a>
 mobile application development team. It is built using <a href="https://docs.flutter.dev/get-started/install"> Flutter</a>.
 The team used <a href="https://pub.dev/packages/get">Getx</a> framework for state management.
 Additionally, The primary objective of writing widget 
 content is to ensure it results in clean code that is easy to read, maintain, understand, and modify by following a structured and consistent format.
 

<br>

##  📝 Contents 

**Material Components** are a collection of UI widgets and design guidelines, divided into **six components**:
</b></b>



 -  [Actions](#action) : Interactive elements which trigger actions when clicked .
 -  [Communication](#communication) : Used to convey information to the user.
 -  [Containment](#containment) : Components for grouping  in defined area.
 -  [Navigation](#navigation) : User movement within the application.
 -  [Selection](#selection) : That allow users to make decisions .
 -  [Text Inputs](#text_inputs) :Elements for entering text .
  

   





## 
![action](https://github.com/afnanalmohd/task_flutterr/assets/53023171/6bc3c5d9-38db-4685-95c1-938af410e5c1) <a id="action"></a>

# Common Buttons


<img align="left" width="300" height="full" src="https://github.com/afnanalmohd/task_flutterr/assets/53023171/ccdd8e53-2212-4eb9-9656-25bf302fdbbb"
 alt="Elevated Button" >
<br>


</br>

#### Theme 
 ```bash
 elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontFamily: 'GE-SS-Two',
        fontWeight: FontWeight.w500,
        color: whiteColor,
        fontSize: 16,
      ),
      disabledBackgroundColor: primaryBananaColor,
      disabledForegroundColor: whiteColor,
      minimumSize: const Size(398, 48),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0.0,
      backgroundColor: primaryOrangeColor,
    )),
 ```
### Component
 ```bash
   ElevatedButton(
            onPressed: () {
            },
            child: const Text('press here'),
          )
 ```


 ## 
 <img align="left" width="300" height="full" src="https://github.com/afnanalmohd/task_flutterr/assets/53023171/a631886b-43c3-4b62-b497-6ce62ec68740"
 alt="Filled Button" >

<br>


</br>

 
#### Theme 
 ```bash
  filledButtonTheme: FilledButtonThemeData(
  style: ButtonStyle(
backgroundColor: MaterialStatePropertyAll(Colors.black),
foregroundColor:  MaterialStatePropertyAll(Colors.white),
        )
 ```
### Component
 ```bash
  FilledButton(
                  onPressed: () {},
                  child: const Text('press here'),
                ),
 ```


## 
<img align="left" width="300" height="full" src="https://github.com/afnanalmohd/task_flutterr/assets/53023171/6e1c10f7-b269-440b-8e41-e0d5e561e459"
 alt="Filled Button" >
<br>


</br>

#### Theme 

 ```bash
   filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.black),
foregroundColor:  MaterialStatePropertyAll(Colors.white),
        )
      )
 ```
### Component
 ```bash
   FilledButton.tonal(
                  onPressed: () {},
                  child: const Text('press here'),
                ),
 ```


 ## 
 <img align="left" width="300" height="full" src="https://github.com/afnanalmohd/task_flutterr/assets/53023171/60e3e962-a566-4929-9fea-451ad72290a5"
 alt="Outlined Button " >

<br>


</br>

 
#### Theme 

 ```bash
 outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      foregroundColor: primaryOrangeColor,
      textStyle: const TextStyle(
        fontFamily: 'GE-SS-Two',
        fontWeight: FontWeight.w300,
        color: primaryOrangeColor,
        fontSize: 16,
      ),
      side: const BorderSide(color: primaryOrangeColor),
      disabledBackgroundColor: primaryBananaColor,
      minimumSize: const Size(398, 48),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 0.0,
      backgroundColor: whiteColor,
    )),
 ```
### Component
 ```bash
OutlinedButton(
               
                onPressed:  ()  {}
                child: const Text('press here'),
              ),
                   
 ```
## Text Button 
### Theme 
 ```bash
   textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        disabledBackgroundColor: greyCoinColor,
        foregroundColor: greyCoinColor,
      ),
    ),
 ```
### Component
 ```bash
TextButton(
                  onPressed: () {},
                  child: Text(
                    'press here',
                  ),
                ),
 ```

## Floating Action Button
### Theme 
 ```bash
 floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 0.0,
      )
 ```
### Component
 ```bash
 FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
 ```

## Extended Floating Action Button 
### Theme 
 ```bash
 floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 0.0,
      )
 ```
### Component
 ```bash
   FloatingActionButton.extended(
              onPressed: () {
              },
              icon: Icon(Icons.add),
              label: Text('EXTENDED'),
            ),
 ```

## Icon Button
### Theme 
 ```bash
              iconTheme: const IconThemeData(color: Colors.red),
              primaryIconTheme: const IconThemeData(color: Colors.blue),
              iconButtonTheme: const IconButtonThemeData(
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.green),
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
              ),
 ```
### Component
 ```bash
 IconButton(
              onPressed: () {},
              icon: const Icon(Icons.save),
            ),
 ```

## Segmented Button
### Theme 
 ```bash
 segmentedButtonTheme: SegmentedButtonThemeData(
     style: ButtonStyle(
     backgroundColor:  MaterialStatePropertyAll(Colors.white),
    foregroundColor: MaterialStatePropertyAll(Colors.black),
                        ),
              )
 ```
 ### Controller
  ```bash

  Set <String> selection = {'S','M','L'};
   List<ButtonSegment<String>> selectionSegment = [
    ButtonSegment<String>(value: 'small', label: Text('S')),
    ButtonSegment<String>(value: 'medium', label: Text('M')),
    ButtonSegment<String>(value: 'large', label: Text('L')),
  ];

   void updateSelection(Set<String> newSelection) 
    {
    selection = newSelection;
    update();
  }
  ```
### Component
 ```bash
  GetBuilder<Controller>(builder: (controller) {
                      return SegmentedButton<String>
                      (
                        segments: controller.selectionSegment,
                        selected: controller.selection,
                        onSelectionChanged: (Set<String> newSelection) {
                          controller.updateSelection(newSelection);
                        },
                        multiSelectionEnabled: true,
                        showSelectedIcon: false,

                      );
                    })
                  
                  
                  
                  
 ```
## Toggle Button
### Theme 
 ```bash
toggleButtonsTheme: ToggleButtonsThemeData(
        color: blackColor,
              selectedColor: whiteColor,
              fillColor: Colors.transparent,
              borderWidth: 0,
              borderColor: Colors.transparent,
      )
 ```
 ### Controller 
 ```bash
  List<bool> get isSelectedList
   {
    return List.generate(2, (index) => selectedIndex == index);
  }

  selectIndex(int index) {
    selectedIndex = index;
    update();
  }
 ```
### Component
 ```bash
  GetBuilder<Controller>(
                         builder: (controller) {
                           return ToggleButtons(
              children: [
                TextButtonVenueWidget(
                  index: 0,

                  text: 'option 1',
                ),
                TextButtonVenueWidget(
                  index: 1,

                  text: 'option 2',
                )
              ],
              isSelected: controller.isSelectedList,
              onPressed: (int index) => controller.selectIndex(index),
              constraints: BoxConstraints.expand(height: 60, width: size.width * 0.45),
            );
                         }
                       ),
 ```





![communication](https://github.com/The-Garage-Tech-Team/design_system_flutter/assets/53023171/30a374f1-9a50-48e1-add9-4fdadbcb511f) <a id="communication"></a>

## Badge
### package
 ```bash
 badges: ^3.1.2

 ```
### Component
 ```bash
 GetBuilder<Controller>(builder: (controller) {
  return badges.Badge(
    position: BadgePosition.topEnd(top: 0, end: 3),
    showBadge: true,
    badgeContent: Text(
      controller.quantity().toString(),
      style: const TextStyle(color: Colors.color),
    ),
    badgeAnimation: const badges.BadgeAnimation.slide(
      loopAnimation: false,
      curve: Curves.fastOutSlowIn,
    ),
    badgeStyle: const badges.BadgeStyle(
      shape: badges.BadgeShape.circle,
      borderSide: BorderSide(color: Color, width: 2),
      elevation: 0,
    ),
    child: IconButton(
      onPressed: () {
    
      },
      icon: const Icon(Icons.icon),
    ),
  );
});
 ```
### Controller

using List to counting the number in Badges.
 ```bash
List<Model> list = [];
 ```


 ```
 int quantity() {
  if (list.isEmpty) {
    return 0;
  } else {
    return list
       .length;
  }
 ```

## Linear Progress Inictor
### Theme 
 ```bash
 progressIndicatorTheme: const ProgressIndicatorThemeData(
      linearMinHeight: 2.0,
      color: Colors.white,
    ),
 ```
### Component
 ```bash
       GetBuilder<controller>(
                builder: (controller) {
                  return LinearProgressIndicator(
                   color: Colors.white,
                    value: controller.progress,
                  );
                },
              ),
    ElevatedButton(
                onPressed: () async {
                  await controller.startProgress();
                },
                child: const Text('test'),
              ),
 ```
### Controller
 ```bash
  double progress = 0.0;
  int totalSteps = 100;

  Future<void> startProgress() async {
    for (int currentStep = 0; currentStep < totalSteps; currentStep++) {
      await Future.delayed(const Duration(milliseconds: 100));
      progress = (currentStep / totalSteps).toDouble();
      update();
    }
  }
  

  
 ```



## Circular Progress Inictor
### Theme 
 ```bash
 progressIndicatorTheme: const ProgressIndicatorThemeData(
      linearMinHeight: 2.0,
      color: Colors.white,
    ),
 ```
### Component
 ```bash
    GetBuilder<controller>(
                builder: (controller) {
                  return CircularProgressIndicator(
                   color: Colors.white,
                    value: controller.progress,
                  );
                },
              ),
 ElevatedButton(
                onPressed: () async {
                  await controller.startProgress();
                },
                child: const Text('test'),
              ),

 ```
### Controller
 ```bash
  double progress = 0.0;
  int totalSteps = 100;

  Future<void> startProgress() async {
    for (int currentStep = 0; currentStep < totalSteps; currentStep++) {
      await Future.delayed(const Duration(milliseconds: 100));
      progress = (currentStep / totalSteps).toDouble();
      update();
    }
  }
   
 ```

## Snack Bar

We recommend using the 'SnackBarWidget' if you have only one design.

### Theme 
 ```bash
   snackBarTheme: const SnackBarThemeData(
        actionTextColor: Colors.white,
        backgroundColor: Colors.white,
        contentTextStyle: TextStyle(color: Colors.white),
        elevation: 20
    ),
 ```
### Component

 ```bash
    Get.snackbar(
          'Title',
          'test',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          snackStyle: SnackStyle.FLOATING,
        );
 ```



## Snack Bar

We recommend using the "GlobalSnackBar" class throughout the entire project, especially if there are various designs for SnackBars 
such as warning, error, and success messages.
### Theme 
 ```bash
   snackBarTheme: const SnackBarThemeData(
        actionTextColor: Colors.white,
        backgroundColor: Colors.transparent,
        contentTextStyle: TextStyle(color: Colors.black),
        elevation: 20
    ),
 ```
### Component 

 ```bash
class GlobalSnackBar {
  const GlobalSnackBar();

  static warningSnackBar(
    String message,
  ) {
    Get.snackbar('', '',
        titleText: WarningSnackBar(
          message: message,
        ),
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        barBlur: 0.0);
  }

  static errorSnackBar(
    String message,
  ) {
    Get.snackbar('', '',
        titleText: ErrorSnackBar(
          message: message,
        ),
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        barBlur: 0.0);
  }

  static questionSnackBar(
    String message,
  ) {
    Get.snackbar('', '',
        titleText: QuestionSnackBar(
          message: message,
        ),
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        barBlur: 0.0);
  }

  static successSnackBar(
    String message,
  ) {
    Get.snackbar('', '',
        titleText: SuccessSnackBar(
          message: message,
        ),
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        barBlur: 0.0);
  }
}
 ```


![Containment)](https://github.com/The-Garage-Tech-Team/design_system_flutter/assets/53023171/d9f00fe3-d80d-4d45-ab71-9a4f2ee0f290) <a id="containment"></a>


## Alert Dialog

### Theme 
 ```bash
 dialogTheme: const DialogTheme(
        backgroundColor: greyCoffeeColor,
        shadowColor: Colors.white,
      )
 ```


### Component
 ```bash
Dialog(
     child: Column(
      children: [
        const Text(
          'are YouSure Cancel',
        ),
        Row(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'No',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('yes'),
            ),
          ],
        ),
      ],
    )
);
 ```


## Bottom Sheet 


### Theme 
 ```bash
bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: whiteColor,
        elevation: 1.0,
        modalElevation: 1.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(28.0))),
      )
);
 ```
### Component
 ```bash
 Get.bottomSheet(
                         ignoreSafeArea: false,
                         isScrollControlled: true,
                         Widget());

 ```


## Card


### Theme 
 ```bash
  cardTheme: const CardTheme(
      elevation: 0.0,
      color: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
    ),
 ```
### Component
 ```bash
    Card(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 29.2,
            ),
            Text(" Extras", style: textTheme.displayLarge),
            SizedBox(
              height: size.height / 56.26,
            ),
          ],
        ),
      );
 ```

## Divider


### Theme 
 ```bash
    dividerColor: greyCoffeeColor,
 ```
### Component
 ```bash
 const Divider(
  thickness: 2,
  ),
 ```
## List Tile


### Theme 
 ```bash
  listTileTheme: const ListTileThemeData(
        textColor: Colors.black,        
      ),
 ```
### Component
 ```bash
  ListTile(
            leading: CircleAvatar(child: Text('B')),
            title: Text('Headline'),
            subtitle: Text(
           'Longer supporting text to demonstrate how the text.'),
          ),
 ```
### Controller
 ```bash
 Controller"
 Controller"
 ```

## Grid view 

### Component
 ```bash
    GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.93,
              childAspectRatio: 0.8,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 10.0,
              maxCrossAxisExtent: 200,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (_, index) {
              return Widget();
            },
          );

 ```

## List View

### Component
 ```bash
 ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return widget() 
           },
 ```

![navigation](https://github.com/The-Garage-Tech-Team/design_system_flutter/assets/53023171/2209d949-722d-42f6-bd0f-11141a3f55a7) <a id="navigation"></a>


## App Bar
### Theme 
 ```bash
appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
        fontFamily: 'Mona-Sans',
        fontWeight: FontWeight.w800,
        fontSize: 20,
        color: mainColor),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ),
    elevation: 0.5,
    backgroundColor: whiteColor,
    iconTheme: IconThemeData(color: greyMirageColor)),
 ```
### Component
 ```bash
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.add_alert),
    ),
      centerTitle: true,
      title: const Text('title'),
      actions: [
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('Action 1'),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('Action 2'),
          ),
        ],
    );
  }
}
 ```

## Bottom App Bar 
### Theme 
 ```bash
navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0.0,
          shadowColor: Colors.grey.shade400,
          indicatorColor: Colors.blue),
          bottomAppBarTheme: BottomAppBarTheme(
            color: Colors.white,
elevation: 0.0,
height: 12,
shadowColor: Colors.black,
shape: storage
          )
 ```
### Component
 ```bash
bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
               IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            ],
          ),
        ),
 ```


## Navigation Bar
### Theme 
 ```bash
      navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0.0,
          shadowColor: Colors.grey.shade400,
          indicatorColor: Colors.blue)
 ```
### Component
 ```bash
 NavigationBar(
          selectedIndex: controller.pageIndex.value,
          onDestinationSelected: (int index) {
    
            controller.changeIndex(index);
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.abc), label: 'option1'),
            NavigationDestination(icon: Icon(Icons.abc), label: 'option2'),
            NavigationDestination(icon: Icon(Icons.abc), label: 'option3')
          ],
 ),
 body: <Widget>[
          Container(
            alignment: Alignment.center,
            child: const Text('Page 1'),
          ),
          Container( 
            alignment: Alignment.center,
            child: const Text('Page 2'),
          ),
          Container(
            alignment: Alignment.center,
            child: const Text('Page 3'),
          ),
        ][controller.pageIndex],
 ```
### Controller
 ```bash
 var pageIndex = 0;
  changeIndex(int index) {
    pageIndex = index;
  }
 ```


## Navigation Drawer
### Theme 
 ```bash
navigationDrawerTheme: NavigationDrawerThemeData(
            backgroundColor: Colors.blue.shade200,
            tileHeight: 12,
            shadowColor: Colors.black,
            indicatorColor: Colors.blue.shade50,
            indicatorShape: storage,
            labelTextStyle: MaterialStatePropertyAll(TextStyle(fontFamily: fontFamily))
          )
 ```
### Component
 ```bash
  Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text('Header')),
              ListTile(
                title: Text('option1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('option2'),
                onTap: () {},
              ),
            ],
          ),
        ),
 ),
 ```

## Navigation Rail
### Theme 
 ```bash
 navigationRailTheme: NavigationRailThemeData(
            backgroundColor: Colors.white,
            elevation: 0,
            minWidth: 12,
            indicatorColor: Colors.blue,
            useIndicator: true
          )
 ```
### Component
 ```bash
Row(
              children: [
                NavigationRail(
                  destinations: <NavigationRailDestination>[
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite_border),
                      selectedIcon: Icon(Icons.favorite),
                      label: Text('First'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.bookmark_border),
                      selectedIcon: Icon(Icons.book),
                      label: Text('Second'),
                    ),
                  ],
                  selectedIndex: controller.index,
                  onDestinationSelected: (int index) {
                    controller.changeIndex(index);
                  },
                )
              ],
            )
 ```
### Controller
 ```bash
  var index = 0;

  changeIndex(int index) {
    index = index;
  }
 ```

## Tab Bar
### Theme 
 ```bash
tabBarTheme: TabBarTheme(
        labelColor: Colors.white,
        indicatorColor: Colors.blue.shade800,
        overlayColor: MaterialStateProperty.all(Colors.blue.shade300),
      )
 ```
### Component
 ```bash
DefaultTabController(
      initialIndex: 1,
      length: 3,
      child:Scaffold(
        appBar: AppBar(
          bottom:TabBar(
            tabs:[
            Tab(text:'Car'),
            Tab(text:'Plane'),
            Tab(text:'Boat'),
            ],
          ),
        ),
        body:TabBarView(
          children:[
            CarWidget(),
            PlaneWidget(),
            BoatWidget(),
          ],
        ),
      ),
),
 ```
![selection](https://github.com/The-Garage-Tech-Team/design_system_flutter/assets/53023171/0707e29e-096a-47d8-8e13-93a94f906176) <a id="selection"></a>


### Theme 
 ```bash
 Theme"
 Theme"
 ```
### Component
 ```bash
 Component"
 Component"
 ```
### Controller
 ```bash
 Controller"
 Controller"
 ```

## Check Box
### Theme 
 ```bash
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      checkColor: MaterialStateProperty.all(whiteColor),
      fillColor: MaterialStateProperty.all(Colors.transparent),
    ),
 ```
### Component
 ```bash
        Checkbox(
          activeColor: Colors.green,
          value: controller.isCheck,
          onChanged: (bool? value) {
          controller.updateCheckBox(value!);
          },
        ),
 ```
### Controller
 ```bash
  bool isCheck = false;

  void updateCheckBox(bool value) {
    isCheck = value;
    update();
  }
 ```

## Chip 
### Theme 
 ```bash
  chipTheme: ChipThemeData(
      secondarySelectedColor: whiteColor,
      secondaryLabelStyle: const TextStyle(color: primaryOrangeColor),
      backgroundColor: whiteColor,
      disabledColor: whiteColor,
      selectedColor: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: greySteelColor,
        ),
      ),
    ),
 ```
### Component
 ```bash
ChoiceChip(
          selectedColor: whiteColor,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          label: const Text('item'),
          // selected chip value
          selected: _value == index,
          // onSelected method
          onSelected: (bool selected) {},
),
 ```

## Date Picker
### Pakage 
 ```bash
  syncfusion_flutter_datepicker: ^22.1.37
 ```
### Component
 ```bash

class CalendarWidget extends StatelessWidget {
  final DateRangePickerSelectionChangedCallback? onSelectionChanged;
  final DateRangePickerSelectionMode selectionMode;

 const CalendarWidget(
      {super.key,
      required this.onSelectionChanged,
      required this.selectionMode});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SfDateRangePicker(
      minDate: DateTime.now().subtract(const Duration(days: -1)),
      view: DateRangePickerView.month,
      monthViewSettings: DateRangePickerMonthViewSettings(
          viewHeaderStyle: DateRangePickerViewHeaderStyle(
              textStyle: textTheme.bodySmall?.copyWith(fontSize: 12))),
      headerStyle: DateRangePickerHeaderStyle(
        textStyle: textTheme.displaySmall,
      ),
      monthCellStyle: DateRangePickerMonthCellStyle(
          todayTextStyle: textTheme.displaySmall,
          textStyle: textTheme.headlineLarge?.copyWith(fontSize: 12)),
      yearCellStyle: DateRangePickerYearCellStyle(
          todayTextStyle: textTheme.displaySmall,
          textStyle: textTheme.displaySmall),
      todayHighlightColor: primaryOrangeColor,
      endRangeSelectionColor: primaryOrangeColor,
      rangeSelectionColor: primaryOrangeColor,
      selectionColor: primaryOrangeColor,
      startRangeSelectionColor: primaryOrangeColor,
      onSelectionChanged: onSelectionChanged,
      selectableDayPredicate: controller.disableDate,
      selectionMode: selectionMode,
    );
  }
}
 ```
### Controller
 ```bash
  String? startDate;
  String? endDate;
  String? rangeDate = DateFormat('yyyy-MM-dd')
      .format(DateTime.now().toLocal().subtract(const Duration(days: -1)));

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      if (args.value.endDate == null ||
          args.value.startDate == args.value.endDate) {
        startDate =
            DateFormat('yyyy-MM-dd').format(args.value.startDate).toString();
        endDate =
            DateFormat('yyyy-MM-dd').format(args.value.startDate).toString();
        rangeDate = startDate;
      } else {
        startDate = DateFormat('yyyy-MM-dd').format(args.value.startDate);
        endDate = DateFormat('yyyy-MM-dd').format(args.value.endDate);
        rangeDate = '$startDate - $endDate';
      }
    }
    update();
  }

 bool disableDate(DateTime day) {
    if ((day.isAfter(
      DateTime.now().subtract(
        const Duration(days: 0),
      ),
    ))) {
      return true;
    }
    return false;
  }
 ```

## Dropdown Button
### Package 
 ```bash
  dropdown_button2: ^2.3.9
 ```
### Component
 ```bash
DropdownButtonHideUnderline(child:
DropdownButton2(
            alignment: Alignment.centerRight,
            isExpanded: true,
            hint: const Text( "Chose ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w200,
                  color:Colors.grey ,
              ),
            ),
            items: controller.item
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color:Colors.black ,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ))
                .toList(),
            value: controller.selectedValue,
            onChanged: (value) {
              controller.updateSelectedValue(value.toString());
            },
            iconStyleData: const IconStyleData(
              icon: Visibility(
                visible: true,
                child: Icon(Icons.keyboard_arrow_down),
              ),
            ),
            buttonStyleData: ButtonStyleData(
              height: size.height * 0.06,
              width: size.width * 0.9,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0)),
                      color:Colors.white ,
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
              color:Colors.grey ,
              maxHeight: size.height * 0.9,
              width: size.width * 0.9,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
            ),
          ));
 ```
### Controller
 ```bash
  List<String> items = ["Option1", "Opchion2", "Other"];
  UnmodifiableListView<String> get item => UnmodifiableListView(items);
  String? selectedValue;
  void updateSelectedValue(String value) {
  selectedValue = value;
  update();
  }
 ```

## Radio
### Theme 
 ```bash
 Theme"
 Theme"
 ```
### Component
 ```bash
 Component"
 Component"
 ```
### Controller
 ```bash
 Controller"
 Controller"
 ```

## Slider
### Theme 
 ```bash
 Theme"
 Theme"
 ```
### Component
 ```bash
 Component"
 Component"
 ```
### Controller
 ```bash
 Controller"
 Controller"
 ```

## Switch
### Theme 
 ```bash
 Theme"
 Theme"
 ```
### Component
 ```bash
 Component"
 Component"
 ```
### Controller
 ```bash
 Controller"
 Controller"
 ```

## Time Picker
### Theme 
 ```bash
 Theme"
 Theme"
 ```
### Component
 ```bash
 Component"
 Component"
 ```
### Controller
 ```bash
 Controller"
 Controller"
 ```


![text_inputs](https://github.com/afnanalmohd/task_flutterr/assets/53023171/e2c451d8-df5e-4d9f-b40f-ea74e99e3593) <a id="text_inputs"></a>

# Text Inputs



