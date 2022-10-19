class User {

  static const street = "streetTest";
  static const city = "cityTest";
  static const parish = "parishTest";
  String fname = "";
  String lname = "";
  String title = "";
  String imageUrl = "";
  String email = "";
  String phone = "";
  String username = "";
  Map<String, String> address = {
    street: "",
    city: "",
    parish: "",
  };
  String password = "";

  save(){
    print("Successfully saved object");
  }
}


