class UserEntity {
  final String username;

  UserEntity.fromPsevdoDB(Map<String, dynamic> data)
      : username = data['username'];

  Map<String, dynamic> toPsevdoDB(UserEntity userEntity) {
    return {'username': username};
  }
}
