// ignore_for_file: use_key_in_widget_constructors, unused_element, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:med_health_v1/components/widgets/noteitems.dart';
import '../components/widgets/menubar.dart';
import '../components/widgets/notedetails.dart';
import '../data/db/diarynotes_database.dart';
import '../model/diarynote.dart';
import 'notes/addnotesscreen.dart';

class DiaryScreen extends StatefulWidget {
  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  late List<DiaryNotes> diarynotes;
  bool isLoading = false;

  Future<void> _handleRefresh() async {
    return await Future.delayed(const Duration(seconds: 5));
  }

  @override
  void initState() {
    super.initState();

    refreshDiaryNotes();
  }

  @override
  void dispose() {
    DiaryNotesDatabase.instance.close();

    super.dispose();
  }

  Future refreshDiaryNotes() async {
    setState(() => isLoading = true);
    diarynotes = await DiaryNotesDatabase.instance.readAllDiaryNotes();
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                weight: 20,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BottomBar()));
              },
            ),
            title: const Center(
              child: Text(
                "My Diary",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
          body: Center(
            child: isLoading
                ? const CircularProgressIndicator()
                : diarynotes.isEmpty
                    ? const Text(
                      'No Diary Entrie',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w800
                      )
                    )
                    : buildNotes(),    
          ),
          floatingActionButton: FloatingActionButton(
            hoverColor: Colors.green[700],
            backgroundColor: const Color(0xFF2239C0),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const AddNotes()));
              refreshDiaryNotes();
            },
            child: const Icon(
              Ionicons.add,
            ),
          ),
        ),
      );
  Widget buildNotes() =>  StaggeredGrid.count(
      // itemCount: notes.length,
      // staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      crossAxisCount: 2,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      children: List.generate(
        diarynotes.length,
        (index) {
          final DiaryNotes = diarynotes[index];
          return StaggeredGridTile.fit(
            crossAxisCellCount: 1,
            child: GestureDetector(
              onTap: () async {
                await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DiaryNoteDetails(diarynotesId: DiaryNotes.id!),
                ));

                refreshDiaryNotes();
              },
              child: NoteItems(diarynotes: DiaryNotes, index: index,),
            ),
          );
        },
      ));
}
