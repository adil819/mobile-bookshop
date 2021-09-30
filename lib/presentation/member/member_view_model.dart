import 'package:flutter_day_one/data/model/member.dart';
import 'package:flutter_day_one/data/repository/member_repository.dart';

class MemberViewModel {
  MemberRepository _memberRepository = MemberRepository();

  addMember(Member newMember)async{
    final newMemberRegistered = await _memberRepository.addProduct(newMember);
    print(newMemberRegistered);
  }

  Future<List<dynamic>> getMember()async{
    final getListMember = await _memberRepository.getProduct();
    return getListMember;
  }
}