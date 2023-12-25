import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExpandetExample(),
    );
  }
}

class ExpandetExample extends StatelessWidget {
  const ExpandetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff131921),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back,
              color: Color(0xffFFFFFF),
              size: 30,
            ),
            Column(
              children: [
                Text(
                  'Москва в кино',
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                Text(
                  'Москва Марины Цветаевой',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                  ),
                )
              ],
            ),
            Icon(
              Icons.close,
              color: Color(0xffFFFFFF),
              size: 40,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 4,
                        color: Color(0xff64BDFF),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 4,
                    )),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.help_outline_outlined,
                      size: 27,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: '/10',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    'assets/images/qwe.png',
                    height: 250,
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "С момента выхода на экраны советских кинотеатров фильма «Служебный роман» прошло уже более 40 лет. Картина моментально завоевала сердца публики и стала одной из самых любимых отечественных комедий.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'В Москве на улице Пятницкой находится павильон метро, размещенный на месте снесенной церкви. Напишите название церкви. Подсказкой станет стена-граффити дома, стоящего прямо у выхода метро «Новокузнецкая»',
                        style: TextStyle(color: Color(0xff131921)),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 143,
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.play_circle_fill),
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Наш директор'),
                          Text(
                            'Наша мымра',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Мужчина в юбке',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  color: Color(0xffFF5D54),
                  child: Text(
                    'отправить',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'далее',
                        style: TextStyle(
                          color: Color(0xff131921),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                      ),
                    ],
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
