import 'package:flutter/material.dart';
import 'package:gestalt_db/main.dart';
import 'package:provider/provider.dart';



class AndriodPrototype extends StatelessWidget {
  const AndriodPrototype({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = Provider.of<UsernameProvider>(context).username;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/homepage1.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello $userName ',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Welcome to Gestalt Facial DB',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildAdviceContainer(
                    context,
                    'Data Collection',
                    'Take clear images with a consent from patient',
                    Icons.camera_alt,
                  ),
                  const SizedBox(width: 20), // Vertical space between the two squares
                  buildAdviceContainer(
                    context,
                    'Data Privacy Tips',
                    'Data is confidential and log out after use',
                    Icons.check_circle ,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              buildOptionButton(
                context,
                'Collect child info',
                Icons.child_care,
                '/childInfoUpload',
              ),
              const SizedBox(height: 20),
              buildOptionButton(
                context,
                'Collect parents info',
                Icons.person_outline,
                '/parentsInfoScreen',
              ),
              const SizedBox(height: 20),
              buildOptionButton(
                context,
                'Profile',
                Icons.account_circle,
                '/profileScreen',
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget buildOptionButton(
  BuildContext context,
  String label,
  IconData icon,
  String route,
) {
  return ElevatedButton.icon(
    onPressed: () {
      Navigator.pushNamed(context, route);
    },
    icon: Icon(icon, color: Colors.white,),
    label: Text(
      label,
      style: const TextStyle(color: Colors.white), // Set text color to white
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF5e4e8f),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

  Widget buildAdviceContainer(
    BuildContext context,
    String title,
    String description,
    IconData icon,
  ) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
