import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatefulWidget{
  @override
  MyLoginScreen createState() {
    return MyLoginScreen();
  }
}
class MyLoginScreen extends State<MyApp>{
  final formKey=GlobalKey<FormState>();
  final scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
      padding: EdgeInsets.all(40.0),
      width: double.infinity,
      decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [
          (0.1),
          (0.4),
          (0.6),
          (0.8)
        ],
        colors: [
        Colors.blue[700],
        Colors.blue[500],
        Colors.blue[300],
        Colors.blue[200],
      ]
      )),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children:<Widget>[
          Image.asset(
            "assets/splash_insta.png",
            height: 50.0,
          ),
          SizedBox(
            height: 20.0
            ),
            (Form(child: Column(
              key:formKey ,
              children:<Widget>[
               TextFormField(
                 validator:(Value){
                    if(Value.isEmpty){
                     return "Please enter your UserName";
                    }else if(Value!=Value){
                      return "UserName is Incorrect";
                    }
                 },
            decoration: InputDecoration(
            icon: Icon(Icons.account_circle,color: Colors.white),
            hintText: "UserName",
            hintStyle: TextStyle(color:Colors.white10)
            ),  
          ),
          SizedBox(
            height:10.0
          ),
          TextFormField(
            obscureText: true,
             validator:(Value){
                    if(Value.isEmpty){
                     return "Please enter your PassWord";
                    }else if(Value!=Value){
                      return "Password is Incorrect";
                    }
                 },
            decoration: InputDecoration(
            icon: Icon(Icons.lock,color: Colors.white),
            hintText: "PassWord",
            hintStyle: TextStyle(color:Colors.white10)
            ),  
             ),
              ]
            ))),
          
          SizedBox(
            height:40.0
          ),
          Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1,0.4,0.6,0.9],
              colors: [
               Colors.blue[600],
               Colors.blue[400],
               Colors.blue[300],
               Colors.blue[200],
              ]
            )),  
          child: ButtonTheme(
           buttonColor: Colors.white10,
           height: 50.0,
           minWidth: double.infinity,
           child: RaisedButton(onPressed: 
           (){
             if(formKey.currentState.validate()){
               scaffoldKey.currentState.showSnackBar(SnackBar(
                content: Text("Login successfully"),
               ));
               Navigator.push(context,MaterialPageRoute(builder:(Context) {
                 HomePage();
               }));
             }else{
               scaffoldKey.currentState.showSnackBar(SnackBar(
                 content: Text("Login Failed") 
                 ,));
             }

           },
           child: Text("Login",
           style: TextStyle(color: Colors.white)
           )
           ),
          ),
          ),
          SizedBox(
            height:20.0,
          ),
          Text("Forgot Password?",
          textAlign: TextAlign.center,
          style: new TextStyle(color: Colors.white,
          decoration: TextDecoration.underline),
          ),
          SizedBox(
            height:20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/google_logo.png",
                height:18.0,
              ),
              SizedBox(
                width:20.0,
              ),
              Image.asset(
                "assets/fb_logo.png",
                height:20.0,
              ),
             ]
          )
        ]
        ),
        ),
    ));
  }

}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Welcome to our Flutter Application...",style:TextStyle(
      color: Colors.blueAccent,fontSize: 20.0),textAlign: TextAlign.center,),);
  }

}