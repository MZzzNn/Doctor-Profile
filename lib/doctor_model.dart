class DoctorModel {
  final String name;
  final String specialization;
  final String image;
  final double stars;
  final double km;
  DoctorModel(
      {required this.name,
      required this.specialization,
      required this.image,
      required this.km,
      required this.stars});
}


List<DoctorModel> doctorsData=[
  DoctorModel(
      name: 'Dr. Fred Mask',
      specialization: 'Heart Surgen',
      image: 'images/doctor1.png',
      km: 5.3,
      stars: 4.5
  ),
  DoctorModel(
      name: 'Dr. Stella Kane',
      specialization: 'Bone Specialist',
      image: 'images/doctor3.png',
      km: 6.4,
      stars: 3
  ),
  DoctorModel(
      name: 'Dr. Zac Wolff',
      specialization: 'Eye Specialist',
      image: 'images/doctor2.png',
      km: 7.3,
      stars: 5
  ),
  DoctorModel(
      name: 'Dr. Fred Mask',
      specialization: 'Heart Surgen',
      image: 'images/doctor4.png',
      km: 4.3,
      stars: 2.5
  ),
];