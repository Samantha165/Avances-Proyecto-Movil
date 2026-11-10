import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:proyecto_final/features/add/widgets/color_circle.dart';
import 'package:proyecto_final/features/add/widgets/custom_text_field.dart';
import 'package:proyecto_final/features/home/screens/home_screen.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {

  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController titleController = TextEditingController();

  Color selectedColor = Colors.black;

  final ImagePicker _picker = ImagePicker();
  List<String> files = []; 

  @override
  void dispose() {
    descriptionController.dispose();
    titleController.dispose();
    super.dispose();
  }

  Future<void> _takePhoto() async {
  final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
  if (photo == null) return; // el usuario canceló

  setState(() => files.add(photo.path));
}

Future<void> _pickFromGallery() async {
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  if (image == null) return;

  setState(() => files.add(image.path));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
            icon: const Icon(Icons.home), 
          ),
        ],
      ),
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: 
      
       Column(

        children: [
          const Text("Color"),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             ColorCircle(
      color: Colors.green,
      isSelected: selectedColor == Colors.green,
      onTap: () => setState(() => selectedColor = Colors.green),
    ),
              const SizedBox(width: 30,),
                 ColorCircle(
      color: Colors.blue,
      isSelected: selectedColor == Colors.blue,
      onTap: () => setState(() => selectedColor = Colors.blue),
    ),
              const SizedBox(width: 30,),
                ColorCircle(
      color: Colors.purple,
      isSelected: selectedColor == Colors.purple,
      onTap: () => setState(() => selectedColor = Colors.purple),
    ),
              const SizedBox(width: 30,),
                ColorCircle(
      color: Colors.pink,
      isSelected: selectedColor == Colors.pink,
      onTap: () => setState(() => selectedColor = Colors.pink),
    ),
              const SizedBox(width: 30,),
                 ColorCircle(
      color: Colors.yellow,
      isSelected: selectedColor == Colors.yellow,
      onTap: () => setState(() => selectedColor = Colors.yellow),
    ),
            ],
          ),
          const SizedBox(height: 20,),
          CustomTextField(titleController: titleController, descriptionController: descriptionController, titleColor: selectedColor,onTakePhoto: _takePhoto, onPickPhoto: _pickFromGallery, files: files),
          SizedBox(height: 30,),

          ElevatedButton(
            onPressed: (){
    final titulo = titleController.text;
    final descripcion = descriptionController.text;
    final color = selectedColor;


    if(titleController.text.isNotEmpty){
  ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text("Tarea agregada correctamente", ), backgroundColor: Colors.lightGreen, ));
  Navigator.pop(context);
  
    }else{
 ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text("Agrega un título", ), backgroundColor: Colors.red, ));

    }



            },

            style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink.shade300,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
              
            ),
        child: Text("Agregar"),
            ),

  SizedBox(height: 20,),

            ElevatedButton(
              onPressed:(){ 
                Navigator.pop(context);
                }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                

              ),
              child: Text("Cancelar", style: TextStyle(color: Colors.blueGrey),)
              ),





        ],
      ),
        ),
      )


    );
  }
}