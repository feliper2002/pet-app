enum PetAge { years, months, days }
enum PetDistanceType { km, meters, milles }
enum Sex { male, female }

class Pet {
  final String? name;
  final String? description;
  final String? type;
  final Sex? sex;
  final double? age;
  final PetAge? petAge;
  final double? distance;
  final PetDistanceType? petDistanceType;
  final String? photoPath;
  final String? mainPhoto;
  final bool? favorite;
  Pet({
    this.name,
    this.description =
        '''She is shy at first, but will warm up when she's comfortable. She is not a ranch dog that guards animals and property as she would rather be with her people; but she is comfortable around animals. She plays well with other dogs.''',
    this.type,
    this.sex,
    this.age,
    this.petAge,
    this.distance,
    this.petDistanceType,
    this.photoPath,
    this.mainPhoto,
    this.favorite = false,
  });
}
