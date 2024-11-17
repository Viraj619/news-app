abstract class UttarEvent {}
class GetUttarNews extends UttarEvent{
  String quiry;
  GetUttarNews({required this.quiry});
}