// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(FacialGestaltApp());
// // }

// // class FacialGestaltApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: FacialGestaltForm(),
// //     );
// //   }
// // }

// // class FacialGestaltForm extends StatefulWidget {
// //   @override
// //   _FacialGestaltFormState createState() => _FacialGestaltFormState();
// // }

// // class _FacialGestaltFormState extends State<FacialGestaltForm> {
// //   final _formKey = GlobalKey<FormState>();

// //   // Form field controllers
// //   final TextEditingController _patientNameController = TextEditingController();
// //   final TextEditingController _ageController = TextEditingController();
// //   final TextEditingController _genderController = TextEditingController();
// //   final TextEditingController _observedFeaturesController =
// //       TextEditingController();

// //   @override
// //   void dispose() {
// //     // Dispose controllers to avoid memory leaks
// //     _patientNameController.dispose();
// //     _ageController.dispose();
// //     _genderController.dispose();
// //     _observedFeaturesController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Gestalt Database Entry'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               ElevatedButton(
// //                 onPressed: () {
// //                   // Placeholder for image upload functionality
// //                   print("Upload Image Button Pressed");
// //                 },
// //                 child: Text('Upload Image'),
// //               ),
// //               SizedBox(height: 20),
// //               Text(
// //                 "Patient Details",
// //                 style: TextStyle(
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               SizedBox(height: 10),
// //               Form(
// //                 key: _formKey,
// //                 child: Column(
// //                   children: [
// //                     // Patient Name Field
// //                     TextFormField(
// //                       controller: _patientNameController,
// //                       decoration: InputDecoration(
// //                         labelText: "Patient Name",
// //                         border: OutlineInputBorder(),
// //                       ),
// //                       validator: (value) {
// //                         if (value == null || value.isEmpty) {
// //                           return 'Please enter the patient\'s name';
// //                         }
// //                         return null;
// //                       },
// //                     ),
// //                     SizedBox(height: 20),

// //                     // Age Field
// //                     TextFormField(
// //                       controller: _ageController,
// //                       decoration: InputDecoration(
// //                         labelText: "Age",
// //                         border: OutlineInputBorder(),
// //                       ),
// //                       keyboardType: TextInputType.number,
// //                       validator: (value) {
// //                         if (value == null || value.isEmpty) {
// //                           return 'Please enter the age';
// //                         }
// //                         if (int.tryParse(value) == null) {
// //                           return 'Please enter a valid number';
// //                         }
// //                         return null;
// //                       },
// //                     ),
// //                     SizedBox(height: 20),

// //                     // Gender Field
// //                     TextFormField(
// //                       controller: _genderController,
// //                       decoration: InputDecoration(
// //                         labelText: "Gender",
// //                         border: OutlineInputBorder(),
// //                       ),
// //                       validator: (value) {
// //                         if (value == null || value.isEmpty) {
// //                           return 'Please enter the gender';
// //                         }
// //                         return null;
// //                       },
// //                     ),
// //                     SizedBox(height: 20),

// //                     // Observed Features Field
// //                     TextFormField(
// //                       controller: _observedFeaturesController,
// //                       decoration: InputDecoration(
// //                         labelText: "Observed Features",
// //                         border: OutlineInputBorder(),
// //                       ),
// //                       maxLines: 4,
// //                       validator: (value) {
// //                         if (value == null || value.isEmpty) {
// //                           return 'Please describe the observed features';
// //                         }
// //                         return null;
// //                       },
// //                     ),
// //                     SizedBox(height: 20),

// //                     // Submit Button
// //                     ElevatedButton(
// //                       onPressed: () {
// //                         if (_formKey.currentState!.validate()) {
// //                           // Submit the form data
// //                           print("Patient Name: ${_patientNameController.text}");
// //                           print("Age: ${_ageController.text}");
// //                           print("Gender: ${_genderController.text}");
// //                           print(
// //                               "Observed Features: ${_observedFeaturesController.text}");
// //                           ScaffoldMessenger.of(context).showSnackBar(
// //                             SnackBar(content: Text('Form submitted')),
// //                           );
// //                         }
// //                       },
// //                       child: Text('Submit'),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// class ChildInfoForm extends StatefulWidget {
//   @override
//   _ChildInfoFormState createState() => _ChildInfoFormState();
// }

// class _ChildInfoFormState extends State<ChildInfoForm> {
//   final _formKey = GlobalKey<FormState>();
//   final Map<String, dynamic> _formData = {};

//   // A placeholder function for Firebase upload
//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       // Implement Firebase upload logic here
//       print("Form data submitted: $_formData");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Form data submitted successfully!')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Child Information Form'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Image upload button
//               ElevatedButton(
//                 onPressed: () {
//                   // Implement image upload functionality later
//                   print("Image upload button clicked");
//                 },
//                 child: Text("Upload Image"),
//               ),
//               SizedBox(height: 20),
              
//               // General Demographics
//               Text("General Information", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Name'),
//                 onSaved: (value) => _formData['name'] = value,
//                 validator: (value) => value!.isEmpty ? 'Please enter the name' : null,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Age'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) => _formData['age'] = int.tryParse(value ?? ''),
//                 validator: (value) => value!.isEmpty ? 'Please enter the age' : null,
//               ),
//               DropdownButtonFormField<String>(
//                 decoration: InputDecoration(labelText: 'Gender'),
//                 items: ['Male', 'Female', 'Other']
//                     .map((gender) => DropdownMenuItem(
//                           value: gender,
//                           child: Text(gender),
//                         ))
//                     .toList(),
//                 onSaved: (value) => _formData['gender'] = value,
//                 validator: (value) => value == null ? 'Please select a gender' : null,
//               ),
              
//               SizedBox(height: 20),
//               // Facial Features Section
//               Text("Facial Features", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Overall Face Shape'),
//                 onSaved: (value) => _formData['faceShape'] = value,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Facial Symmetry (1-10)'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) => _formData['facialSymmetry'] = double.tryParse(value ?? ''),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Interpupillary Distance (mm)'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) => _formData['interpupillaryDistance'] = double.tryParse(value ?? ''),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Nasal Bridge Width (mm)'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) => _formData['nasalBridgeWidth'] = double.tryParse(value ?? ''),
//               ),
              
//               SizedBox(height: 20),
//               // Additional Physical Attributes
//               Text("Additional Physical Attributes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Height (cm)'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) => _formData['height'] = double.tryParse(value ?? ''),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Weight (kg)'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) => _formData['weight'] = double.tryParse(value ?? ''),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Head Circumference (cm)'),
//                 keyboardType: TextInputType.number,
//                 onSaved: (value) => _formData['headCircumference'] = double.tryParse(value ?? ''),
//               ),
              
//               SizedBox(height: 20),
//               // Submit Button
//               Center(
//                 child: ElevatedButton(
//                   onPressed: _submitForm,
//                   child: Text("Submit"),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
