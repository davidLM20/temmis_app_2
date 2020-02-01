class Case{

  String name;
  String description;
  String numCaso;
  String img;
  String id;

  Case.fromJSON( {Map<String, dynamic> data, String id}) {
    this.id = id;
    this.name = data['name'];
    this.description = data['description'];
    this.numCaso = data['numCaso'];
    this.img = data['img'];
  }
  


}