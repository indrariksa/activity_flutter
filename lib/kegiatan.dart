import 'package:dicoding_final/appbar.dart';
import 'package:dicoding_final/drawer.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class Kegiatan {
  late String activityName;
  late String activityDescription;
  late String location;
  late String date;
  late String fileName;

  Kegiatan(this.activityName, this.activityDescription, this.location,
      this.date, this.fileName);
}

class _ActivityPageState extends State<ActivityPage> {
  final TextEditingController _activityNameController = TextEditingController();
  final TextEditingController _activityDescriptionController =
      TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _activityDateController = TextEditingController();
  final TextEditingController _fileInputController = TextEditingController();
  List<Kegiatan> _kegiatan = [];
  int editingIndex = -1;

  @override
  void initState() {
    super.initState();
    _activityDateController.text = '';
  }

  void _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      setState(() {
        _activityDateController.text = formattedDate;
      });
    }
  }

  void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      setState(() {
        _fileInputController.text = file.name;
      });
    }
  }

  void _addKegiatan() {
    final activityName = _activityNameController.text.trim();
    final activityDescription = _activityDescriptionController.text.trim();
    final location = _locationController.text.trim();
    final date = _activityDateController.text;
    final fileName = _fileInputController.text;
    print('Name of Activity: $activityName');
    print('Description of Activity: $activityDescription');
    print('Location: $location');
    print('Date: $date');
    print('File Name: $fileName');

    if (activityName.isEmpty ||
        activityDescription.isEmpty ||
        location.isEmpty ||
        date.isEmpty ||
        fileName.isEmpty) {
      _showErrorDialog('Semua field harus diisi.');
      return;
    }

    final newKegiatan =
        Kegiatan(activityName, activityDescription, location, date, fileName);
    setState(() {
      if (editingIndex == -1) {
        _kegiatan.add(newKegiatan);
      } else {
        _kegiatan[editingIndex] = newKegiatan;
        editingIndex = -1;
      }
    });

    _activityNameController.clear();
    _activityDescriptionController.clear();
    _locationController.clear();
    _activityDateController.clear();
    _fileInputController.clear();
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _editKegiatan(int index) {
    final kegiatan = _kegiatan[index];
    setState(() {
      _activityNameController.text = kegiatan.activityName;
      _activityDescriptionController.text = kegiatan.activityDescription;
      _locationController.text = kegiatan.location;
      _activityDateController.text = kegiatan.date;
      _fileInputController.text = kegiatan.fileName;
      editingIndex = index;
    });
  }

  void _deleteKegiatan(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete Kegiatan'),
          content: Text('Apakah Anda yakin ingin menghapus kegiatan ini?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _kegiatan.removeAt(index);
                  editingIndex = -1;
                });
                Navigator.of(context).pop();
              },
              child: Text('Hapus'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Tutup keyboard
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBar(title: 'Insert Kegiatan'),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Buat Kegiatan Baru',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        controller: _activityNameController,
                        decoration: InputDecoration(
                          labelText: 'Nama Kegiatan',
                          hintText: 'Masukkan nama kegiatan',
                        ),
                      ),
                      TextField(
                        controller: _activityDescriptionController,
                        decoration: InputDecoration(
                          labelText: 'Deskripsi Kegiatan',
                          hintText: 'Masukkan deskripsi kegiatan',
                        ),
                      ),
                      TextField(
                        controller: _locationController,
                        decoration: InputDecoration(
                          labelText: 'Lokasi Kegiatan',
                          hintText: 'Masukkan lokasi kegiatan',
                        ),
                      ),
                      TextField(
                        controller: _activityDateController,
                        decoration: InputDecoration(
                          labelText: 'Tanggal Kegiatan',
                          hintText: 'Pilih tanggal',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_today),
                            onPressed: () => _selectDate(context),
                          ),
                        ),
                        readOnly: true,
                      ),
                      TextField(
                        controller: _fileInputController,
                        decoration: InputDecoration(
                          labelText: 'File',
                          hintText: 'Pilih file',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.attach_file),
                            onPressed: () => _pickFile(),
                          ),
                        ),
                        readOnly: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: _addKegiatan,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: Text(
                      editingIndex == -1 ? 'Submit' : 'Update',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'List Kegiatan',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: _kegiatan.length,
                  itemBuilder: (context, index) {
                    final kegiatan = _kegiatan[index];
                    return ListTile(
                      leading: Icon(Icons.person),
                      title: Text(kegiatan.activityName.toUpperCase()),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Deskripsi: ${kegiatan.activityDescription}'),
                          Text('Lokasi: ${kegiatan.location}'),
                          Text('Tanggal: ${kegiatan.date}'),
                          Text('File: ${kegiatan.fileName}'),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              _editKegiatan(index);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              _deleteKegiatan(index);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
