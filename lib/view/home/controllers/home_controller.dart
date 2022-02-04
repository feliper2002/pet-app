import 'package:pet_app/view/models/pet.dart';

class HomeController {
  final petList = <Pet>[
    Pet(
      name: 'Sparky',
      type: 'Golden Retriever',
      sex: Sex.female,
      age: 8,
      petAge: PetAge.months,
      distance: 2.5,
      petDistanceType: PetDistanceType.km,
      favorite: true,
    ),
    Pet(
      name: 'Charlie',
      type: 'Boston Terrier',
      sex: Sex.male,
      age: 1.5,
      petAge: PetAge.years,
      distance: 2.6,
      petDistanceType: PetDistanceType.km,
      favorite: true,
    ),
    Pet(
      name: 'Max',
      type: 'Siberian Husky',
      sex: Sex.male,
      age: 1,
      petAge: PetAge.years,
      distance: 2.9,
      petDistanceType: PetDistanceType.km,
      favorite: false,
    ),
    Pet(
      name: 'Daisy',
      type: 'Maltese',
      sex: Sex.female,
      age: 7,
      petAge: PetAge.months,
      distance: 3.1,
      petDistanceType: PetDistanceType.km,
      favorite: false,
    ),
  ];

  String getPetSex(Sex sex) {
    String _sex;

    switch (sex) {
      case Sex.male:
        _sex = 'Male';
        break;
      case Sex.female:
        _sex = 'Female';
        break;
      default:
        _sex = 'Female';
        break;
    }
    return _sex;
  }

  String getPetAge(PetAge age) {
    String _age;

    switch (age) {
      case PetAge.days:
        _age = 'days old';
        break;
      case PetAge.months:
        _age = 'months old';
        break;
      case PetAge.years:
        _age = 'years old';
        break;
      default:
        _age = 'months old';
        break;
    }
    return _age;
  }

  String getPetDistance(PetDistanceType type) {
    String _type;

    switch (type) {
      case PetDistanceType.km:
        _type = 'kms away';
        break;
      case PetDistanceType.meters:
        _type = 'm away';
        break;
      default:
        _type = 'kms away';
        break;
    }
    return _type;
  }
}
