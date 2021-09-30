import 'package:flutter/material.dart';
import 'package:flutter_day_one/data/model/member.dart';
import 'member_view_model.dart';

class MemberListScreen extends StatefulWidget {
  MemberViewModel memberViewModel = MemberViewModel();

  @override
  _MemberListScreenState createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  List<dynamic> listMember = <Member>[];

  @override
  void initState(){
    super.initState();
    _getListMember();
  }
  _getListMember() async{
    listMember = await widget.memberViewModel.getMember();
    Future.delayed(const Duration(microseconds: 500), (){
      setState(() {
        listMember = listMember;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('Member List'),
            TextButton(
              onPressed:() async{
                final status = await Navigator.pushNamed(context, '/add-member');
                if(status == 'done'){
                  setState(() {
                    _getListMember();
                  });
                }
                // Navigator.pushNamed(context, '/add-member');
              },
              child: Text('Add Member'),
            ),
            Expanded(
                child: Card(
                  child: Scrollbar(
                      child: ListView.builder(
                        itemBuilder: (context, index){
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: ListTile(
                                        leading: Icon(Icons.remember_me, size: 40.0),
                                        title: Text(listMember[index].firstName + ' ' + listMember[index].lastName),
                                      )),
                                ],
                              ),
                              Divider(height: 5.0)
                            ],
                          );
                        },
                        itemCount: listMember.length,
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
