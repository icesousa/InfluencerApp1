    import 'package:flutter/material.dart';
    import 'package:flutter_screenpratice/pages/pages_components/container_list.dart';
    import 'package:flutter_screenpratice/pages/pages_components/container_storie.dart';
    import 'package:flutter_screenpratice/pages/pages_components/raisedgradientbutton.dart';
    import 'pages_components/gridview.dart';

    class MyColor extends MaterialStateColor {
      const MyColor() : super(_defaultColor);

      static const int _defaultColor = 0xcafefeed;
      static const int _pressedColor = 0xdeadbeef;

      @override
      Color resolve(Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return const Color(_pressedColor);
        }
        return const Color(_defaultColor);
      }
    }

    class HomePage extends StatefulWidget {
      const HomePage({super.key});

      @override
      State<HomePage> createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> {
      List<String> gridImages = <String>[
        'assets/profile_1.jpg',
        'assets/profile_2.jpg',
        'assets/profile_3.jpg',
        'assets/profile_5.jpg',
        'assets/profile_6.jpg',
      ];
      

      List<String> list = <String>['Most Followed', 'Most Liked', 'Most Called'];
      bool coloredButton1 = false;
      bool coloredButton2 = false;
      bool coloredButton3 = false;



      
      
      @override
      Widget build(BuildContext context) {
        String dropdownvalue = list.first;
        double screenHeight = MediaQuery.of(context).size.height;     

        

        
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: screenHeight,
              color: const Color(0xff101213),
              child: Padding(
                padding: const EdgeInsets.only(top: 35, left: 13.0, right: 5.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 21.0),
                            child: Text(
                              'Pick up the ideal influencer',
                              style: TextStyle(
                                color: Color(0xffdcdcdc),
                                fontSize: 19,
                                inherit: false,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10, width: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              cursorColor: const Color(0xffdcdcdc),
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  label: Row(
                                    children: const [
                                      Icon(
                                        Icons.search,
                                        color: Color(0xffdcdcdc),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          '  Search',
                                          style: TextStyle(
                                              color: Color(0xffdcdcdc),
                                              fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                  fillColor: const Color(0Xff222629),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: const BorderSide(
                                          color: Color(0xffdcdcdc)))),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff222629),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.tune_outlined,
                                size: 45,
                                color: Color(0xffdcdcdc),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 10, height: 15),
    ///// Local onde ficam os stories ////////////
                      SizedBox(
                        height: 100,
                        
                        child: GridviewModel(
                            crossAxisCount: 1,
                            scrollDirection: Axis.horizontal,
                            generates: gridImages.length,
                            itemBuilder: (BuildContext context, int index){
                            return Containerstorie( assetlocals: gridImages, index: index);
                          },

                            
                            ),
      
                      ),

                      const SizedBox(height: 0),

                      Row(children: [
                        SizedBox(
                          width: 129,
                          height: 52,
                          child: DropdownButtonFormField<String>(
                            dropdownColor: const Color(0xff222629),
                            style: const TextStyle(
                                color: Color(0xffdcdcdc), //cor da fonte
                                fontSize: 12,
                                backgroundColor: Color(0xff222629)),
                            value: dropdownvalue,
                            decoration: const InputDecoration(
                              hoverColor: Colors.black,
                              filled: true,
                              fillColor: Color(0xff222629),
                              labelStyle:
                                  TextStyle(backgroundColor: Color(0xff222629)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                dropdownvalue = value!;
                              });
                            },
                            items:
                                list.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(width: 7),
                        RaisedGradientbutton(
                          width: 100,
                          height: 60,
                          onPressed: () {
                            setState(() {
                              coloredButton2 = false;
                              coloredButton3 = false;
                              coloredButton1 = !coloredButton1;
                            });
                          },
                          buttonText: 'Lifestyle',
                          textStyle: const TextStyle(color: Color(0xffdcdcdc)),
                          gradientcolors: coloredButton1
                              ? const [Color(0xfffa88cc), Color(0xffFF7939)]
                              : [const Color(0xff222629), const Color(0xff222629)],
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        RaisedGradientbutton(
                          width: 10,
                          height: 10,
                          onPressed: () {
                            setState(() {
                              coloredButton1 = !true;
                              coloredButton3 = !true;
                              coloredButton2 = !coloredButton2;
                            });
                          },
                          buttonText: 'IT',
                          textStyle: const TextStyle(color: Color(0xffdcdcdc)),
                          gradientcolors: coloredButton2
                              ? const [Color(0xfffa88cc), Color(0xffFF7939)]
                              : [const Color(0xff222629), const Color(0xff222629)],
                        ),
                        const SizedBox(
                          width: 7,
                          height: 7,
                        ),
                        RaisedGradientbutton(
                            width: 10,
                            height: 10,
                            onPressed: () {
                              setState(() {
                                coloredButton1 = false;
                                coloredButton2 = false;
                                coloredButton3 = !coloredButton3;
                              });
                            },
                            buttonText: 'Travel',
                            textStyle: const TextStyle(color: Color(0xffdcdcdc)),
                            gradientcolors: coloredButton3
                                ? const [Color(0xfffa88cc), Color(0xffFF7939)]
                                : [
                                    const Color(0xff222629),
                                    const Color(0xff222629)
                                  ]),
                        const SizedBox(
                          width: 10,
                        ),
                      ]),

                      Flexible(
                        child: GridviewModel(
                          itemBuilder: (BuildContext context, int index){
                            return Containerlist(assetNames: gridImages, index: index);
                          },
                          
                          
                          crossAxisCount: 2,
                          generates: gridImages.length,

                          scrollDirection: Axis.vertical,
                            
                          ),
                        ),
                    
                    ]),
              ),
            ),
          ),
        );
      }
    }
