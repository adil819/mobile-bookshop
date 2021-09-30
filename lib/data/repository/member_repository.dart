import 'package:flutter_day_one/data/api/api_helper.dart';
import 'package:flutter_day_one/data/model/member.dart';
import 'package:flutter_day_one/data/model/member_response.dart';

class MemberRepository {
  final ApiHelper _apiHelper = ApiHelper.INSTANCE;

  Future<Member> addProduct(Member newMember)async{
    final response = await _apiHelper.postData('/member', newMember.toMap());
    return Member.fromMap(response);
  }

  Future<List<dynamic>> getProduct()async{
    final response = await _apiHelper.getData('/member');
    return MemberResponse.fromList(response).members;
  }
}