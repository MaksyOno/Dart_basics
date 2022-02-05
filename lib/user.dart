// ignore_for_file: avoid_print

class User {
  String email;
  User(this.email);

  @override
  String toString() {
    return email;
  }
}

mixin MailSystem on User {
  String getMailSystem() {
    String userEmail = email.split('@')[1];
    return (userEmail);
  }
}

class AdminUser extends User with MailSystem {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User with MailSystem {
  GeneralUser(String email) : super(email);
}

class UserManager<T extends User> {
  Set<T> users = {};
  void addUser(T newUser) {
    users.add(newUser);
  }

  void removeUser(T newUser) {
    users.remove(newUser);
  }

  void getAllUsers() {
    List allusers = [];
    for (var element in users) {
      if (element is! AdminUser) {
        allusers.add(element.email.toString());
      } else {
        allusers.add(element.email.toString().split('@')[1]);
      }
    }
    print(allusers);
  }
}

void main() {
  UserManager userManager = UserManager();
  User user = User('user@gmail.ru');
  AdminUser adminuser = AdminUser('adminuser@yahoo.com');
  AdminUser adminuser2 = AdminUser('adminuser@gmail.com');
  GeneralUser generalUser = GeneralUser('generaluser@ukr.net');
  print(adminuser.getMailSystem());
  userManager.addUser(user);
  userManager.addUser(adminuser);
  userManager.addUser(generalUser);
  userManager.addUser(adminuser2);
  userManager.getAllUsers();
  userManager.removeUser(generalUser);
  userManager.getAllUsers();
}
