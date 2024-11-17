abstract class SuperHitNewsEvents {}
class GetSuperHitNews extends SuperHitNewsEvents{
  String query;
  GetSuperHitNews({required this.query});
}