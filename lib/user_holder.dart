import 'models/user.dart';

class UserHolder {
  Map<String, User> users = {};

  void registerUser(String name, String phone, String email) {
    User user = User(name: name, phone: phone, email: email);

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
    } else {
      throw Exception("A user with this name already exists");
    }
  }

  User registerUserByEmail(String name, String email) {
    User user = User(name: name, email: email);

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
    } else {
      throw Exception('A user with this email already exists');
    }
    return user;
  }

  User getUserByLogin(String login) {
    if (users.containsKey(login)) {
    } else {
      throw Exception("User does not exist");
    }
    return users[login];
  }

  User registerUserByPhone(String fullName, String phone) {
    User user = User(name: fullName, phone: phone);

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
    } else {
      Exception('A user with this phone already exists');
    }
    return user;
  }

  User findUserInFriends(String login, User friendsss) {
    User user = users[login];
    bool isYes = false;
    for (var item in user.friends) {
      if (item.login == friendsss.login) {
        isYes = true;
      }
    }
    if (isYes)
      return friendsss;
    else
      throw Exception("${friendsss.login} is not a friend of the login");
  }

  void setFriends(String login, List<User> user) {
    User user2 = users[login];

    user2.addFriend(user);
  }

  List<User> importUsers(List<String> spisuser) {
    List<User> usersimp = [];
    for (var item in spisuser) {
      usersimp.add(User(
          name: item.split(';')[0].trim(),
          email: item.split(';')[1].trim(),
          phone: item.split(';')[2].trim()));
    }

    return usersimp;
  }
}
