// ignore: duplicate_ignore
// ignore: file_names
////Hospital

// ignore_for_file: file_names

class Hospital {
  final String image, title, description;
  final int  id;
  // final Color color;

  Hospital(
      {required this.image,
      required this.title,
      required this.description,
      required this.id,
      // required this.color
      });
}

List <Hospital> hospitals=[
  Hospital(
      id: 1,
      title: "Apollo",
      description: apollo,
      image:"lib/assets/image/apollo.png",
      // color:Color.fromARGB(255, 193, 215, 234),
  ),
   Hospital(
      id: 2,
      title: "Fortis",
      description: fortis,
      image:"lib/assets/image/fortis.png",
      // color:Color.fromARGB(255, 193, 215, 234),
  ),
   Hospital(
      id: 3,
      title: "KIMS",
      description: kims,
      image:    "lib/assets/image/kims.png",
      // color:Color.fromARGB(255, 193, 215, 234),
  ),
   Hospital(
      id: 4,
      title: "Medanta",
      description: medanta,
      image:    "lib/assets/image/medanta.png",
      // color:Color.fromARGB(255, 193, 215, 234),
  ),
   Hospital(
      id: 5,
      title: "AIG",
      description: aig,
      image:    "lib/assets/image/Aig.png",
      // color:Color.fromARGB(255, 193, 215, 234),
  ),
   Hospital(
      id: 6,
      title: "CMC",
      description: cmg,
      image: "lib/assets/image/cmc.png",
      // color:Color.fromARGB(255, 193, 215, 234),
  ),
];

String apollo = "Apollo Hospitals was established in 1983 by Dr. Prathap C Reddy, renowned as the architect of modern healthcare in India. As the nation’s first corporate hospital, Apollo Hospitals is acclaimed for pioneering the private healthcare revolution in the country.";
String fortis ="Fortis Healthcare Limited – an IHH Healthcare Berhad Company – is a leading integrated healthcare services provider in India.";
String kims ="KIMS Hospitals is one of the largest corporate healthcare groups in India with hospitals in Telangana, Andhra Pradesh, and Maharashtra, providing multi-disciplinary integrated healthcare services, with a focus on tertiary and quaternary healthcare at an affordable cost.";
String medanta ="Global Health Limited (Medanta) is the largest multi-speciality tertiary care provider in the North and East regions of India in terms of bed capacity (2,467 installed beds). We deliver advanced, affordable end-to-end healthcare in Delhi, Gurugram, Indore, Ranchi, Patna and Lucknow through our network of five hospitals, six Mediclinics, diagnostic laboratories, home-care and telemedicine services. ";
String aig ="AIG Hospitals is a unit of Asian Institute of Gastroenterology, India’s foremost Gastroenterology hospital. Spread across 1.4 million sq.ft, AIG Hospitals is a state-of-the-art 800-bed super specialty Hospital, which is among the largest hospitals in the country today.";
String cmg ="Chinmaya Mission Hospital, tertiary care – multi speciality hospital is managed by Karnataka Chinmaya Seva Trust was started in 1969. The 200 bedded hospital is supported by 24-hour emergency care, high-end CT and MRI unit, Pharmacy & Laboratory, Blood Storage Unit, Digital X-ray & Ambulance services.";


/////Doctor


