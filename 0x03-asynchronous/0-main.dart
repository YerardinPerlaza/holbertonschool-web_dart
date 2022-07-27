import '0-users_count.dart';

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

main() async {
  await usersCount();
}
