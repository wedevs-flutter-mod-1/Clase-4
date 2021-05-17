class Student {
  Student(
      {this.id,
      this.isFavorite = false,
      this.name,
      this.email,
      this.description,
      this.pathImage});

  final int id;
  final String pathImage;
  bool isFavorite;
  final String name;
  final String email;
  final String description;
}

final students = [
  Student(
    id: 1,
    name: 'Jonatan',
    email: 'jona@gmail.com',
    description: 'Joven estudiante alto delgado, cabello negro, llame ya!',
    pathImage: 'assets/images/1.png',
  ),
  Student(
    id: 2,
    name: 'Diego',
    email: 'diego@gmail.com',
    description: 'Joven estudiante estatura normal, cabello negro, llame ya!',
    pathImage: 'assets/images/2.png',
  ),
  Student(
    id: 3,
    name: 'Samuel',
    email: 'hydra@gmail.com',
    description:
        'Joven apasionado por aprender nuevas tecnologias, amante de compartir conocimiento, llame ya!',
    pathImage: 'assets/images/3.png',
  ),
  Student(
    id: 4,
    name: 'Arnaldo',
    email: 'arnaldo@gmail.com',
    description: 'Joven estudiante alto delgado, cabello negro, llame ya!',
    pathImage: 'assets/images/4.png',
  ),
  Student(
    id: 5,
    name: 'Cayo',
    email: 'cayo@gmail.com',
    description: 'Joven estudiante estatura normal, cabello negro, llame ya!',
    pathImage: 'assets/images/5.png',
  ),
  Student(
    id: 6,
    name: 'Alexander',
    email: 'alexander@gmail.com',
    description:
        'Joven apasionado por aprender nuevas tecnologias, amante de compartir conocimiento, llame ya!',
    pathImage: 'assets/images/4.png',
  ),
];
