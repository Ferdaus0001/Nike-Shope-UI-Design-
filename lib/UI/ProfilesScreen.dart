import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CostomWidgets/Continers_button_modes.dart';

class ProfilesScreen extends StatefulWidget {
  const ProfilesScreen({super.key});

  @override
  State<ProfilesScreen> createState() => _ProfilesScreenState();
}

class _ProfilesScreenState extends State<ProfilesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Profile ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
       backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 10,),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/ferdasuhossna.jpg'),
                  radius: 60,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 6,),
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: CircleAvatar(child: Icon(Icons.person)),
                    subtitle: Text('ferdasu hossan '),
                    title: Text('Name '),
                    trailing: CircleAvatar(child: Icon(Icons.arrow_forward_ios)),
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(child: Icon(Icons.home_work_outlined)),
                    subtitle: Text(' Dhaka   Badda F Block  '),
                    title: Text('Adreess  '),
                    trailing: CircleAvatar(child: Icon(Icons.arrow_forward_ios)),
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: CircleAvatar(child: Icon(Icons.phone)),
                    subtitle: Text(' Phone Number '),
                    title: Text('Number  '),
                    trailing: CircleAvatar(child: Icon(Icons.arrow_forward_ios)),
                  ),
                ),
                SizedBox(height: 6,),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(child: Icon(Icons.email)),
                    subtitle: Text('ferdaushossan@gmial.com'),
                    title: Text('  Email  '),
                    trailing: CircleAvatar(child: Icon(Icons.arrow_forward_ios)),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){},
                  child: ContinerButtonMudelsScreen(
                    continerwidth: MediaQuery.of(context).size.height, itex: 'Edint ',
                      bgColors: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
