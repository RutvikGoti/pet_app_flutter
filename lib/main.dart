import 'package:flutter/material.dart';

Color primaryColor = const Color(0xff376565);

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[400]!, blurRadius: 30, offset: const Offset(0, 10))
];

String details = 'My job requires moving to another country. '
    'I do not have the opportunity to take the cat with me. '
    'I am looking for good people who will shelter my pet';

List<Map> categories = [
  {"name": 'Cats', "imagePath": 'images/cat.png'},
  {"name": 'Dogs', "imagePath": 'images/dog.png'},
  {"name": 'Horses', "imagePath": 'images/horse.png'},
  {"name": 'Parrots', "imagePath": 'images/parrot.png'},
  {"name": 'Rabbits', "imagePath": 'images/rabbit.png'},
  {"name": 'Cats', "imagePath": 'images/cat.png'},
  {"name": 'Dogs', "imagePath": 'images/dog.png'},
  {"name": 'Horses', "imagePath": 'images/horse.png'},
  {"name": 'Parrots', "imagePath": 'images/parrot.png'},
  {"name": 'Rabbits', "imagePath": 'images/rabbit.png'},
];

List<Map> catMapList = [
  {
    "id": 0,
    "name": 'Sola',
    "imagePath": 'images/pet_cat2.png',
    "Species": 'informal cat',
    "sex": 'Female',
    "year": '2',
    "distance": '3.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
  {
    "id": 1,
    "name": 'Orion',
    "imagePath": 'images/pet_cat1.png',
    "Species": 'informal cat',
    "sex": 'male',
    "year": '1.5',
    "distance": '7.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
  {
    "id": 2,
    "name": 'Sola',
    "imagePath": 'images/pet_cat2.png',
    "Species": 'informal cat',
    "sex": 'Female',
    "year": '2',
    "distance": '3.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
  {
    "id": 3,
    "name": 'Orion',
    "imagePath": 'images/pet_cat1.png',
    "Species": 'informal cat',
    "sex": 'male',
    "year": '1.5',
    "distance": '7.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
  {
    "id": 4,
    "name": 'Sola',
    "imagePath": 'images/pet_cat2.png',
    "Species": 'informal cat',
    "sex": 'Female',
    "year": '2',
    "distance": '3.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
  {
    "id": 5,
    "name": 'Orion',
    "imagePath": 'images/pet_cat1.png',
    "Species": 'informal cat',
    "sex": 'male',
    "year": '1.5',
    "distance": '7.6 km',
    "location": '5 Bulvorno-Kudriovska Street, Kyiv',
  },
];

List<Map> navList = [
  {'icon': Icons.pets_rounded, 'title': 'Adoption'},
  {'icon': Icons.markunread_mailbox_rounded, 'title': 'Donation'},
  {'icon': Icons.add_rounded, 'title': 'Add Pet'},
  {'icon': Icons.favorite_rounded, 'title': 'Favorites'},
  {'icon': Icons.mail_rounded, 'title': 'Messages'},
  {'icon': Icons.person, 'title': 'Profile'},
];

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  int tap = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: isDrawerOpen
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            )
          : const BoxDecoration(color: Colors.white),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(milliseconds: 250),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 5.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              });
                            },
                            icon: const Icon(Icons.arrow_back_ios),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isDrawerOpen = true;
                              });
                            },
                            icon: const Icon(Icons.menu),
                          ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.location_on,
                                color: primaryColor,
                                size: 20,
                              ),
                            ),
                            const Text(
                              'Goa, ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text('India'),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: const CircleAvatar(
                        backgroundImage:  AssetImage('images/pet_cat1.png'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[400],
                          ),
                          hintText: 'Search pet',
                          hintStyle: TextStyle(
                              letterSpacing: 1, color: Colors.grey[400]),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon:
                              Icon(Icons.tune_sharp, color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  tap = index;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: tap == index
                                            ? primaryColor
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: shadowList,
                                      ),
                                      child: Image(
                                        color: tap == index
                                            ? Colors.white
                                            : Colors.grey,
                                        image: AssetImage(
                                            categories[index]['imagePath']),
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      categories[index]['name'],
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ListView.builder(
                      physics: const ScrollPhysics(),
                      itemCount: catMapList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PetDetails(
                                          catDetailsMap: catMapList[index],
                                        )));
                          },
                          child: Container(
                            height: 230,
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: (index % 2 == 0)
                                              ? Colors.blueGrey[200]
                                              : Colors.orangeAccent[200],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: shadowList,
                                        ),
                                        margin: const EdgeInsets.only(top: 40),
                                      ),
                                      Align(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Hero(
                                            tag:
                                                'pet${catMapList[index]['id']}',
                                            child: Image.asset(catMapList[index]
                                                ['imagePath'])),
                                      )),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.only(top: 65, bottom: 20),
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      boxShadow: shadowList,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              catMapList[index]['name'],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 21.0,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                            (catMapList[index]['sex'] == 'male')
                                                ? Icon(
                                                    Icons.male_rounded,
                                                    color: Colors.grey[500],
                                                  )
                                                : Icon(
                                                    Icons.female_rounded,
                                                    color: Colors.grey[500],
                                                  ),
                                          ],
                                        ),
                                        Text(
                                          catMapList[index]['Species'],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[500],
                                          ),
                                        ),
                                        Text(
                                          catMapList[index]['year'] +
                                              ' years old',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[400],
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: primaryColor,
                                              size: 18,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              'Distance: ' +
                                                  catMapList[index]['distance'],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[400],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage:  AssetImage('images/pet_cat1.png'),
              ),
              title: Text(
                'Rutvik Goti',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[200],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              subtitle: Text(
                'Active status',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  letterSpacing: .7,
                ),
              ),
            ),
          ),
          Column(
            children: navList
                .map((e) => ListTile(
                      leading: Icon(
                        e['icon'],
                        color: Colors.grey[500],
                      ),
                      title: Text(
                        e['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500],
                          fontSize: 18.0,
                        ),
                      ),
                    ))
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.grey[500],
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                      fontSize: 18.0,
                    ),
                  ),
                  minLeadingWidth: 10,
                ),
              ),
              Container(
                width: 1.5,
                height: 15,
                color: Colors.grey[500],
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  'Log out',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class PetDetails extends StatefulWidget {
  PetDetails({Key? key, required this.catDetailsMap}) : super(key: key);

  Map catDetailsMap;

  @override
  _PetDetailsState createState() => _PetDetailsState();
}

class _PetDetailsState extends State<PetDetails> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: (widget.catDetailsMap['id'] % 2 == 0)
                        ? Colors.blueGrey[200]
                        : Colors.orangeAccent[200],
                    child: Align(
                      alignment: Alignment.center,
                      child: Hero(
                        tag: 'pet${widget.catDetailsMap['id']}',
                        child: Image.asset(widget.catDetailsMap['imagePath']),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 80, 10, 120),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ListTile(
                                  leading: const CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/pet_cat1.png'),
                                  ),
                                  title: Text(
                                    'Maya Berkovskaya',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[700]),
                                  ),
                                  subtitle: Text(
                                    'Owner',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[400]),
                                  ),
                                ),
                              ),
                              Text(
                                'May 25, 2019',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[400]),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              details,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500],
                                letterSpacing: 0.7,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Sharing Pet File"),
                      ));
                    },
                    icon: const Icon(
                      Icons.ios_share,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 140,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                boxShadow: shadowList,
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.catDetailsMap['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21.0,
                            color: Colors.grey[600],
                          ),
                        ),
                        (widget.catDetailsMap['sex'] == 'male')
                            ? Icon(
                                Icons.male_rounded,
                                color: Colors.grey[500],
                                size: 30,
                              )
                            : Icon(
                                Icons.female_rounded,
                                color: Colors.grey[500],
                                size: 30,
                              ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.catDetailsMap['Species'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                            letterSpacing: 0.7,
                          ),
                        ),
                        Text(
                          widget.catDetailsMap['year'] + ' years old',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                            letterSpacing: 0.7,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryColor,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          widget.catDetailsMap['location'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400],
                            letterSpacing: 0.8,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight:  Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isFavorite) {
                            isFavorite = false;
                          } else {
                            isFavorite = true;
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        child: isFavorite
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.redAccent,
                              )
                            : const Icon(
                                Icons.favorite_border_rounded,
                                color: Colors.white,
                              ),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: shadowList,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 50,
                        child: const Center(
                          child: Text(
                            'Adoption',
                            style:  TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: shadowList,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
