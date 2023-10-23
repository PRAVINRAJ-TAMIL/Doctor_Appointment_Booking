// ignore_for_file: file_names


class DoctorModel {
  final String image, title, degree, description, details, color;
  final int id;
  // final Color color;

  DoctorModel(
      {required this.image,
      required this.title,
      required this.description,
      required this.id,
      required this.degree,
      required this.details,
      required this.color
      });
}

List<DoctorModel> doctors = [
  DoctorModel(
    id: 1,
    title: "Dr.Suvarna",
    description:gyo,
    degree:     "(MBBS, DGO)",
    image: "lib/assets/image/doctor1.png",
    details: detail,
    color:detail
    
  ),
  DoctorModel(
    id: 2,
    title:  "Dr.Priyank",
    description: ortho,
    degree:     "(MBBS,MS (Ortho))",
    image: "lib/assets/image/doctor2.png",
    details: detail,
    color:detail
  ),
  DoctorModel(
    id: 3,
    title: "Dr.Supriya",
    description:ent ,
    image: "lib/assets/image/doctor3.png",
    degree:     "(MBBS, DLO)",
    details: detail,
    color:detail
  ),

  DoctorModel(
    id: 4,
    title:"Dr.Basant Kumar",
    description:paedi ,
    image: "lib/assets/image/doctor4.png",
    degree:     "(MBBS, DLO)",
details: detail,
color:detail
  ),
  DoctorModel(
    id: 5,
    title: "Dr.Nisha",
    description:radio ,
    image: "lib/assets/image/doctor5.png",
    degree:     "(MBBS, DLO)",
    details: detail,
    color:detail
  ),
  DoctorModel(
    id: 6,
    title: "Dr.Manisha",
    description:ayush ,
    image: "lib/assets/image/doctor1.png",
    degree:     "(MBBS, DLO)",
  details: detail,
  color:detail
  ),
];

String gyo="Gynaecologist";
String ortho="Orthopaedic Surgeon";
String ent="ENT Surgeon";
String paedi = " Paediatrician";
String radio="Radiology";
String ayush="AYUSH Doctor";

String detail ="They’re experts on the heart and blood vessels. You might see them for heart failure, a heart attack, high blood pressure, or an irregular heartbeat.";