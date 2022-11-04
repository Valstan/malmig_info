import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';

import 'reklama_lenta.dart';
import 'all_lenta.dart';
import 'krugozor_lenta.dart';
import 'malmig_lenta.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Малмыж Инфо';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          fontFamily: 'Roboto'),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  snap: true,
                  pinned: true,
                  floating: true,
                  leading: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  centerTitle: true,
                  title: Column(
                    children: const [
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Малмыж Инфо',
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Информационный вестник Малмыжа',
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    PopupMenuButton<Text>(
                      itemBuilder: (context) {
                        return [
                          const PopupMenuItem(
                            child: Text(
                              'Войти',
                            ),
                          ),
                          const PopupMenuItem(
                            child: Text(
                              'Чат Малмыжа',
                            ),
                          ),
                          const PopupMenuItem(
                            child: Text(
                              'Избранное',
                            ),
                          ),
                        ];
                      },
                    ),
                  ],
                  bottom: const TabBar(
                    indicatorWeight: 0,
                    indicator: BoxDecoration(color: Colors.black87),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelPadding: EdgeInsets.symmetric(horizontal: 5),
                    isScrollable: true,
                    tabs: [
                      Tab(text: 'Вся лента'),
                      Tab(text: 'Малмыж'),
                      Tab(text: 'Объявления'),
                      Tab(text: 'Кругозор'),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                Center(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: all.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(all[index].post,
                                    style: const TextStyle(fontSize: 22)),
                                Image.asset(all[index].pictures),
                                Text("Комментарии:\n${all[index].comment}",
                                    style: const TextStyle(fontSize: 18, color: Colors.blue)),
                                const Divider(color: Colors.indigo,)
                              ],
                            ));
                      }),
                ),
                Center(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: malmig.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(malmig[index].post,
                                    style: const TextStyle(fontSize: 22)),
                                Image.asset(malmig[index].pictures),
                                Text("Комментарии:\n${malmig[index].comment}",
                                    style: const TextStyle(fontSize: 18, color: Colors.blue)),
                                const Divider(color: Colors.deepOrange,)
                              ],
                            ));
                      }),
                ),
                Center(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: reklama.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(reklama[index].post,
                                    style: const TextStyle(fontSize: 22)),
                                Image.asset(reklama[index].pictures),
                                Text("Комментарии:\n${reklama[index].comment}",
                                    style: const TextStyle(fontSize: 18, color: Colors.blue)),
                                const Divider(color: Colors.green,)
                              ],
                            ));
                      }),
                ),
                Center(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: krugozor.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(krugozor[index].post,
                                    style: const TextStyle(fontSize: 22)),
                                Image.asset(krugozor[index].pictures, ),
                                Text("Комментарии:\n${krugozor[index].comment}",
                                    style: const TextStyle(fontSize: 18, color: Colors.blue)),
                                const Divider(color: Colors.pink,)
                              ],
                            ));
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
