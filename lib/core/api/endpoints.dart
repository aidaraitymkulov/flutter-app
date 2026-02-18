class Endpoints {
  static const String baseUrl = 'https://api.football-data.org/v4';
  // Competitions
  static const String competitions = '/competitions';
  static String competition(String code) => '/competitions/$code';
  static String standings(String code) => '/competitions/$code/standings';
  static String competitionMatches(String code) => '/competitions/$code/matches';
  static String competitionTeams(String code) => '/competitions/$code/teams';
  static String scorers(String code) => '/competitions/$code/scorers';
  // Teams
  static String team(int id) => '/teams/$id';
  static String teamMatches(int id) => '/teams/$id/matches';
  // Players
  static String player(int id) => '/players/$id';
  static String playerMatches(int id) => '/players/$id/matches';
  // Matches
  static const String todayMatches = '/matches';
  static String match(int id) => '/matches/$id';
}
