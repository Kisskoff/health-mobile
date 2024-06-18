class User {
late final int id;
late final String nom;
late final String email;

User(
{
  required this.id,
  required this.nom,
  required this.email,

}
    );

factory User.fromJson(Map<String, dynamic> json) => User(
  id: json['id'],
  nom: json['nom'],
  email: json['email']
);

}