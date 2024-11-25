import 'package:flutter/material.dart';
import 'AnnotationScreen.dart';

class ChildInfoForm extends StatefulWidget {
  @override
  _ChildInfoFormState createState() => _ChildInfoFormState();
}

class _ChildInfoFormState extends State<ChildInfoForm> {
  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> formData = {
    'facial_features': {
      'face_shape': '',
      'facial_symmetry': '',
      'interpupillary_distance': '',
      'nasal_bridge': '',
      'ear_positioning': '',
      'jaw_structure': '',
      'forehead_structure': '',
    },
    'eye_features': {
      'palpebral_fissure': '',
      'epicanthal_folds': false,
      'iris_abnormalities': '',
      'eye_spacing': '',
    },
    'nose_features': {
      'nasal_bridge_height': '',
      'nostrils': '',
      'tip_shape': '',
    },
    'mouth_and_lips': {
      'philtrum': '',
      'lip_thickness': '',
      'tooth_spacing': '',
      'cleft_lip': false,
    },
    'ear_features': {
      'ear_size': '',
      'ear_lobes': '',
    },
    'skin_texture': {
      'presence_of_nevus': '',
      'skin_elasticity': '',
    },
    'physical_attributes': {
      'height': '',
      'weight': '',
      'head_circumference': '',
      'limb_abnormalities': '',
      'spine_and_posture': '',
    },
    'medical_history': {
      'developmental_milestones': '',
      'neurological_signs': '',
      'behavioral_symptoms': '',
      'hearing_and_vision': '',
      'cardiovascular_issues': '',
    },
    'genetic_data': {
      'genetic_tests': '',
      'family_history': '',
    },
    'contextual_demographics': {
      'age': '',
      'gender': '',
      'ethnicity': '',
      'socioeconomic_status': '',
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Children - Genetic Disease Classification Form')),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               // Add the Upload Image Button here
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnnotationScreen()),
                  );
                },
                icon: Icon(Icons.upload),
                label: Text('Upload Image'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                 backgroundColor: Colors.blue, // Updated from `primary` to `backgroundColor`
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20), // Add spacing between the button and the first section

              buildSectionTitle('Facial Features (Gestalt-based Phenotype Features)'),
              buildDropdownField(
                'Overall Face Shape',
                ['Round', 'Oval', 'Triangular', 'Long', 'Other'],
                'facial_features.face_shape',
              ),
              buildNumericField('Facial Symmetry (1-10)', 'facial_features.facial_symmetry'),
              buildNumericField('Interpupillary Distance (mm)', 'facial_features.interpupillary_distance'),
              buildTextField('Nasal Bridge Length and Width', 'facial_features.nasal_bridge'),
              buildTextField('Ear Positioning', 'facial_features.ear_positioning'),
              buildTextField('Jaw Structure', 'facial_features.jaw_structure'),
              buildTextField('Forehead Structure', 'facial_features.forehead_structure'),

              buildSectionTitle('Eye Features'),
              buildTextField('Palpebral Fissure Orientation', 'eye_features.palpebral_fissure'),
              buildCheckbox('Epicanthal Folds', 'eye_features.epicanthal_folds'),
              buildTextField('Iris Abnormalities', 'eye_features.iris_abnormalities'),
              buildTextField('Eye Spacing', 'eye_features.eye_spacing'),

              buildSectionTitle('Nose Features'),
              buildTextField('Nasal Bridge Height', 'nose_features.nasal_bridge_height'),
              buildTextField('Nostrils', 'nose_features.nostrils'),
              buildTextField('Tip Shape', 'nose_features.tip_shape'),

              buildSectionTitle('Mouth and Lips'),
              buildTextField('Philtrum Length and Shape', 'mouth_and_lips.philtrum'),
              buildTextField('Lip Thickness and Symmetry', 'mouth_and_lips.lip_thickness'),
              buildTextField('Tooth Spacing and Alignment', 'mouth_and_lips.tooth_spacing'),
              buildCheckbox('Cleft Lip or Palate', 'mouth_and_lips.cleft_lip'),

              buildSectionTitle('Ear Features'),
              buildTextField('Size and Shape', 'ear_features.ear_size'),
              buildTextField('Lobe Attachment Type', 'ear_features.ear_lobes'),

              buildSectionTitle('Skin Texture and Pigmentation'),
              buildTextField('Presence of Nevus or Freckles', 'skin_texture.presence_of_nevus'),
              buildTextField('Skin Elasticity', 'skin_texture.skin_elasticity'),

              buildSectionTitle('Additional Physical Attributes'),
              buildNumericField('Height (cm)', 'physical_attributes.height'),
              buildNumericField('Weight (kg)', 'physical_attributes.weight'),
              buildNumericField('Head Circumference (cm)', 'physical_attributes.head_circumference'),
              buildTextField('Limb Abnormalities', 'physical_attributes.limb_abnormalities'),
              buildTextField('Spine and Posture', 'physical_attributes.spine_and_posture'),

              buildSectionTitle('Medical History and Symptoms'),
              buildTextField('Developmental Milestones', 'medical_history.developmental_milestones'),
              buildTextField('Neurological Signs', 'medical_history.neurological_signs'),
              buildTextField('Behavioral Symptoms', 'medical_history.behavioral_symptoms'),
              buildTextField('Hearing and Vision Issues', 'medical_history.hearing_and_vision'),
              buildTextField('Cardiovascular Issues', 'medical_history.cardiovascular_issues'),

              buildSectionTitle('Genetic Data and Family History'),
              buildTextField('Genetic Tests', 'genetic_data.genetic_tests'),
              buildTextField('Family History', 'genetic_data.family_history'),

              buildSectionTitle('Contextual Demographics'),
              buildNumericField('Age', 'contextual_demographics.age'),
              buildTextField('Gender', 'contextual_demographics.gender'),
              buildTextField('Ethnicity', 'contextual_demographics.ethnicity'),
              buildTextField('Socioeconomic Status', 'contextual_demographics.socioeconomic_status'),
              // Doctor Notes/Comments Section
              SizedBox(height: 20),
              Text('Doctor Notes/Comments', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter any additional observations or comments...',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
                onSaved: (value) => formData['doctor_notes'] = value,
              ),

                

              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print('Form Data: $formData');
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget buildTextField(String label, String fieldKey) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
      onSaved: (value) => setFormData(fieldKey, value),
    );
  }

  Widget buildNumericField(String label, String fieldKey) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
      keyboardType: TextInputType.number,
      onSaved: (value) => setFormData(fieldKey, value),
    );
  }

  Widget buildDropdownField(String label, List<String> options, String fieldKey) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(labelText: label),
      items: options.map((String option) {
        return DropdownMenuItem(value: option, child: Text(option));
      }).toList(),
      onChanged: (value) => setFormData(fieldKey, value),
    );
  }

  Widget buildCheckbox(String label, String fieldKey) {
    return CheckboxListTile(
      title: Text(label),
      value: getFormData(fieldKey) ?? false,
      onChanged: (bool? value) => setFormData(fieldKey, value),
    );
  }

  void setFormData(String key, dynamic value) {
    List<String> keys = key.split('.');
    Map<String, dynamic> current = formData;
    for (int i = 0; i < keys.length - 1; i++) {
      current = current[keys[i]];
    }
    current[keys.last] = value;
    setState(() {});
  }

  dynamic getFormData(String key) {
    List<String> keys = key.split('.');
    dynamic current = formData;
    for (String k in keys) {
      current = current[k];
    }
    return current;
  }
}
