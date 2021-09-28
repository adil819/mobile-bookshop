import 'package:flutter/material.dart';
import 'button_of_number.dart';
import 'row_of_button.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {


  MaterialButton _button(String number) {
    // widget untuk memanggil attribut yang beda class
    // alternatif ElevatedButton
    return MaterialButton(
      onPressed: (){},
      child: Text('C', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
      color: Colors.amber[100],
      height: 75.0,
      elevation: 20,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.blue)
      ),
    );
  }

  Column keyPadFun(){
    List col = ['1', '2', '3'];
    return Column(
      children:
      // _padding(),
      List.generate(col.length, (index) =>_buttonOfNumberBuilder(col[index])),
    );
  }

  Widget _buttonOfNumberBuilder(String num){
    return ButtonOfNumber(num, 5);
  }

  Padding _padding(){
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(''),
    );
  }

  Row _row(){
    return Row(children: [
      Column(
          children: [
            _padding(),
          ]
      ),
      Column(
          children: [
            _padding(),
          ]
      ),
      Column(
          children: [
            keyPadFun(),
          ]
      ),
      Column(
          children: [
            _padding(),
          ]
      ),
      Column(
          children: [
            keyPadFun(),
          ]
      ),
      Column(
          children: [
            _padding(),
          ]
      ),
      Column(
          children: [
            keyPadFun(),
          ]
      ),
    ]);
  }

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(appBar:
      AppBar(
        title: Text('               Calculator',
          style: TextStyle(
              color: Colors.white,
              fontSize: 34
          ),
        ),
      ),
        body: Column(
            children:[
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 300.0, top:10),
                        child:                   TextButton(onPressed: () {},
                            child: Text('0',style: TextStyle(
                                color: Colors.blue,
                                fontSize: 60
                            ),),
                            style: TextButton.styleFrom(primary: Colors.green)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        // padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0), // padding ukuran keempatnya
                        child: Text(''),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        // padding: const EdgeInsets.all(8.0),
                        child: Text(''),
                      ),
                    ],
                  ),

                ],
              ),
              _row(),
              // Row(
              //   children: [
              //     // Column(
              //     //   children: [
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       // padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0), // padding ukuran keempatnya
              //     //       child: Text(''),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 20.0),
              //     //       // padding: const EdgeInsets.all(8.0),
              //     //       child: Text(''),
              //     //     ),
              //     //   ],
              //     // ),
              //     // Column(
              //     //   children: [
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       // padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0), // padding ukuran keempatnya
              //     //       child: Text(''),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 20.0),
              //     //       // padding: const EdgeInsets.all(8.0),
              //     //       child: Text(''),
              //     //     ),
              //     //   ],
              //     // ),
              //     // Column(
              //     //   children: [
              //     //     // MaterialButton(
              //     //     //   onPressed: (){},
              //     //     //   child: Text('7', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
              //     //     //   color: Colors.amber[100],
              //     //     //   height: 75.0,
              //     //     //   elevation: 20,
              //     //     //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
              //     //     //   side: BorderSide(color: Colors.blue)),
              //     //     // ),
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('7',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('4',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('1',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('0',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('+',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //   ],
              //     // ),
              //     // Column(
              //     //   children: [
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       // padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0), // padding ukuran keempatnya
              //     //       child: Text(''),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 20.0),
              //     //       // padding: const EdgeInsets.all(8.0),
              //     //       child: Text(''),
              //     //     ),
              //     //   ],
              //     // ),
              //     // Column(
              //     //   children: [
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('8',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('5',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('2',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('*',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('-',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //   ],
              //     // ),
              //     // Column(
              //     //   children: [
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       // padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0), // padding ukuran keempatnya
              //     //       child: Text(''),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 20.0),
              //     //       // padding: const EdgeInsets.all(8.0),
              //     //       child: Text(''),
              //     //     ),
              //     //   ],
              //     // ),
              //     // Column(
              //     //   children: [
              //     //     ElevatedButton(onPressed: (){},
              //     //       child: Text('9',style: TextStyle(
              //     //           color: Colors.white,
              //     //           fontSize: 30
              //     //       ),),
              //     //       style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     ),
              //     //     Padding(
              //     //       padding: const EdgeInsets.only(left: 0.0),
              //     //       child: Text(''),
              //     //     ),
              //     //     // ElevatedButton(onPressed: (){},
              //     //     //   child: Text('6',style: TextStyle(
              //     //     //       color: Colors.white,
              //     //     //       fontSize: 30
              //     //     //   ),),
              //     //     //   style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //     //       padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     // ),
              //     //     // Padding(
              //     //     //   padding: const EdgeInsets.only(left: 0.0),
              //     //     //   child: Text(''),
              //     //     // ),
              //     //     // ElevatedButton(onPressed: (){},
              //     //     //   child: Text('3',style: TextStyle(
              //     //     //       color: Colors.white,
              //     //     //       fontSize: 30
              //     //     //   ),),
              //     //     //   style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //     //       padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     // ),
              //     //     // Padding(
              //     //     //   padding: const EdgeInsets.only(left: 0.0),
              //     //     //   child: Text(''),
              //     //     // ),
              //     //     // ElevatedButton(onPressed: (){},
              //     //     //   child: Text('/',style: TextStyle(
              //     //     //       color: Colors.white,
              //     //     //       fontSize: 30
              //     //     //   ),),
              //     //     //   style: ElevatedButton.styleFrom(primary: Colors.orange,
              //     //     //       padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     // ),
              //     //     // Padding(
              //     //     //   padding: const EdgeInsets.only(left: 0.0),
              //     //     //   child: Text(''),
              //     //     // ),
              //     //     // ElevatedButton(onPressed: (){},
              //     //     //   child: Text('C',style: TextStyle(
              //     //     //       color: Colors.white,
              //     //     //       fontSize: 30
              //     //     //   ),),
              //     //     //   style: ElevatedButton.styleFrom(primary: Colors.red,
              //     //     //       padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),onPrimary: Colors.white),
              //     //     // ),
              //     //     // MaterialButton(
              //     //     //   onPressed: (){},
              //     //     //   child: Text('C', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
              //     //     //   color: Colors.amber[100],
              //     //     //   height: 75.0,
              //     //     //   elevation: 20,
              //     //     //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
              //     //     //       side: BorderSide(color: Colors.blue)),
              //     //     // ),
              //     //
              //     //     _button('1'),
              //     //
              //     //     // Padding(
              //     //     //   padding: const EdgeInsets.only(left: 0.0),
              //     //     //   child: Text(''),
              //     //     // ),
              //     //   ],
              //     // ),
              //     Column(
              //       children: [
              //         _padding(),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         _padding(),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         ButtonOfNumber('1', 5),
              //         _padding(),
              //         ButtonOfNumber('4', 5),
              //         _padding(),
              //         ButtonOfNumber('7', 5),
              //         _padding(),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         _padding(),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         ButtonOfNumber('2', 5),
              //         _padding(),
              //         ButtonOfNumber('5', 5),
              //         _padding(),
              //         ButtonOfNumber('8', 5),
              //         _padding(),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         _padding(),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         keyPadFun(),
              //         // ButtonOfNumber('3', 5),
              //         // _padding(),
              //         // ButtonOfNumber('6', 5),
              //         // _padding(),
              //         // ButtonOfNumber('9', 5),
              //         // _padding(),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         _padding(),
              //       ],
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Column(
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(left: 0.0),
              //           child: Text(''),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 410.0),
              //           child: Text(''),
              //         ),
              //         ElevatedButton(onPressed: (){},
              //           child: Text('=',style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 30
              //           ),),
              //           style: ElevatedButton.styleFrom(primary: Colors.blue,
              //               padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),onPrimary: Colors.white),
              //         ),
              //       ],
              //     ),
              //   ],
              //   ),
            ]
        ),
      ),
    );
  }
}
