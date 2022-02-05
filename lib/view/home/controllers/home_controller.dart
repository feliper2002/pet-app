import 'package:pet_app/view/models/filter_option.dart';
import 'package:pet_app/view/models/pet.dart';

class HomeController {
  final filterOptions = <FilterOption>[
    FilterOption(
      title: null,
      iconPath: "assets/icons/filter.png",
      selected: false,
    ),
    FilterOption(
      title: 'Dogs',
      iconPath: "assets/icons/dog.png",
      selected: true,
    ),
    FilterOption(
      title: 'Cats',
      iconPath: "assets/icons/cat.png",
      selected: false,
    ),
    FilterOption(
      title: 'Birds',
      iconPath: "assets/icons/parrot.png",
      selected: false,
    ),
  ];

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
      photoPath: 'assets/images/golden.jpg',
      mainPhoto: 'assets/images/golden_main.jpg',
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
      photoPath: 'assets/images/terrier.jpg',
      mainPhoto: 'assets/images/terrier_main.jpg',
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
      photoPath: 'assets/images/husky.jpg',
      mainPhoto: 'assets/images/husky_main.png',
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
      photoPath: 'assets/images/maltese.jpg',
      mainPhoto: 'assets/images/maltese_main.jpg',
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
