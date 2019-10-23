import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
                  child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/logo.jpg'),
                ),
                SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.5, color: Colors.lightBlueAccent))),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 35.0),
                  child: Column(
                    children: <Widget>[
                      Align(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:10.0),
                          child: Text(
                            'USERNAME',
                            style: TextStyle(fontSize: 18.0),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.people),
                            hintText: 'Email',
                           enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0,))),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Align(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:10.0),
                          child: Text('PASSWORD', style: TextStyle(fontSize: 18.0)),
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Passsword',
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0,))),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        height: 45.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.deepPurple),
                        child: Center(
                            child: Text(
                          'SIGN IN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                       SizedBox(
                        height: 30.0,
                      ),
                     Row(children: <Widget>[
                       Expanded(
                         child: Container(
                           margin: EdgeInsets.symmetric(horizontal: 10.0),
                           width: double.infinity,
                           decoration: BoxDecoration(
                           border:Border(bottom: BorderSide(color:Colors.black,width: 1.0))
                         ),),
                       ),
                        Text(
                          'OR USE',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                         child: Container(
                           margin: EdgeInsets.symmetric(horizontal: 10.0),
                           width: double.infinity,
                           decoration: BoxDecoration(
                           border:Border(bottom: BorderSide(color: Colors.black,width: 1.0))
                         ),),
                       ),
                       
                     ],),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: CircleAvatar(backgroundColor: Colors.deepPurple,),
                        ),
                        Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: CircleAvatar(backgroundColor: Colors.deepPurple,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: CircleAvatar(backgroundColor: Colors.deepPurple,),
                        ),
                      ],),
                       SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Text(
                            'DON\'T HAVE AN ACCOUNT ?',
                            style: TextStyle(fontSize: 15.0),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(width: 10.0,),
                          Text(
                            'SIGN UP',
                            style: TextStyle(fontSize: 15.0,color: Colors.purple),
                            textAlign: TextAlign.left,
                          ),
                      ],),
                       SizedBox(
                        height: 30.0,
                      ),
                        
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
