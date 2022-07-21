int whoWins(Map<String, int> team1, Map<String, int> team2) {
  int sum1, sum2;
  int pointT1 = team1['Free throws']!;
  int pointT2 = team1['2 pointers']! * 2;
  int pointT3 = team1['3 pointers']! * 3;
  int pointT12 = team2['Free throws']!;
  int pointT22 = team2['2 pointers']! * 2;
  int pointT32 = team2['3 pointers']! * 3;
  sum1 = pointT1 + pointT2 + pointT3;
  sum2 = pointT12 + pointT22 + pointT32;
  if (sum1 < sum2) {
    return 2;
  } else if (sum1 > sum2) {
    return 1;
  }

  return 0;
}
