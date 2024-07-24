// ignore_for_file: use_build_context_synchronously, unnecessary_this

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:med_health_v1/screen/notes/addnotesscreen.dart';
import '../../data/db/diarynotes_database.dart';
import '../../model/diarynote.dart';

class DiaryNoteDetails extends StatefulWidget {
  final int diarynotesId;
  const DiaryNoteDetails({
    Key? key, 
    required this.diarynotesId
  })  : super(key: key);

  @override
  State<DiaryNoteDetails> createState() => _DiaryNoteDetailsState();
}

class _DiaryNoteDetailsState extends State<DiaryNoteDetails> {
  late DiaryNotes  diarynotes;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshDiaryNote();
  }

  Future refreshDiaryNote() async {
    setState(() => isLoading = true);
    this.diarynotes = await DiaryNotesDatabase.instance.readDiaryNotes(widget.diarynotesId);
    setState(() => isLoading = false );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    //backgroundColor: Colors.grey.shade00,
    appBar: AppBar(
      elevation: 0,
      foregroundColor: Colors.black,
      backgroundColor: Colors.transparent,
      actions: [editButton(), deleteButton()],
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          weight: 20,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
    body: isLoading
      ? const Center(child: CircularProgressIndicator())
      : Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: [
              Text(
                diarynotes.title,
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 8),
              Text(
                DateFormat.yMMMd().format(diarynotes.createdTime),
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w900
                ),
              ),
              const SizedBox(height: 8),
              Text(
                diarynotes.description,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w500
                  ),
              )
            ],
          ),
        )
  );

Widget editButton() => IconButton(
      icon: const Icon(Icons.edit_outlined),
      onPressed: () async {
        if (isLoading) return;

        await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const AddNotes(/*diarynotes: DiaryNotes*/)
        ));

        refreshDiaryNote();
      });

  Widget deleteButton() => IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () async {
          await DiaryNotesDatabase.instance.delete(widget.diarynotesId);
          Navigator.of(context).pop();
        },
      );
}
