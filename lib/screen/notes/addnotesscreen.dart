// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:med_health_v1/components/widgets/diaryform.dart';
import 'package:med_health_v1/model/diarynote.dart';
import '../../data/db/diarynotes_database.dart';

class AddNotes extends StatefulWidget {
  final DiaryNotes? diarynotes;
  const AddNotes({
    Key? key,
    this.diarynotes,
    }) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  final _formKey = GlobalKey<FormState>();
  late bool isImportant;
  late int number;
  late String title;
  late String description;

  @override
  void initState() {
    super.initState();

    isImportant = widget.diarynotes?.isImportant ?? false;
    number = widget.diarynotes?.number ?? 0;
    title = widget.diarynotes?.title ?? '';
    description = widget.diarynotes?.description ?? '';
  }

 @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.grey.shade800,
        appBar: AppBar(
          actions: [buildButton()],
        ),
        body: Form(
          key: _formKey,
          child: DiaryNoteFormWidget(
            isImportant: isImportant,
            number: number,
            title: title,
            description: description,
            onChangedImportant: (isImportant) =>
                setState(() => this.isImportant = isImportant),
            onChangedNumber: (number) => setState(() => this.number = number),
            onChangedTitle: (title) => setState(() => this.title = title),
            onChangedDescription: (description) =>
                setState(() => this.description = description),
          ),
        ),
      );

  Widget buildButton() {
    final isFormValid = title.isNotEmpty && description.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: isFormValid ? null : Colors.grey.shade700,
        ),
        onPressed: addOrUpdateDiaryNotes,
        child: const Text('Save'),
      ),
    );
  }

  void addOrUpdateDiaryNotes() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final isUpdating = widget.diarynotes != null;

      if (isUpdating) {
        await updateDiaryNotes();
      } else {
        await addDiaryNotes();
      }

      Navigator.of(context).pop();
    }
  }

  Future updateDiaryNotes() async {
    final diarynotes = widget.diarynotes!.copy(
      isImportant: isImportant,
      number: number,
      title: title,
      description: description,
    );

    await DiaryNotesDatabase.instance.update(diarynotes);
  }

  Future addDiaryNotes() async {
    final diarynotes = DiaryNotes(
      title: title,
      isImportant: true,
      number: number,
      description: description,
      createdTime: DateTime.now(),
    );

    await DiaryNotesDatabase.instance.create(diarynotes);
  }
}