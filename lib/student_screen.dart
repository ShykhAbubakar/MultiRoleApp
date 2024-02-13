import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  String email = '';
  String age = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email') ?? '';
    age = sp.getString('age') ?? '';
    setState(() {

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Text(
              'Home Screen',
              style: TextStyle(color: Colors.white),
            )),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network('https://lh3.googleusercontent.com/proxy/LOJ_eIj7DbB4pXlpIzsRemNU2PR3PZb5HZG8lleCUL20nf4sOs6oDdyE7yLXbn2UTFujlDDoDU6lxvSHUw'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Email'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(email.toString()),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Password'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(age.toString()),
              ),
            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StudentScreen()));
              },
              child: Container(
                height: 60,
                width: double.infinity,
                color: Colors.blue,
                child: Center(
                    child: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
  }

