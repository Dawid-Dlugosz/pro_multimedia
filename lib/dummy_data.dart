import 'package:pro_multimedia/entities/atraction.dart';
import 'package:pro_multimedia/entities/event.dart';
import 'package:pro_multimedia/entities/filter.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class DummyData {
  static final imagesSlider = [
    ImageAsset.benefist,
    ImageAsset.love,
  ];

  static final events = [
    Event(
      id: 1,
      title: 'Gala muzyki filmowej',
      performances: const [
        'Cerekowicka',
        'Ziółko',
        'Talarczyk',
        'Sztor',
        'Chór'
      ],
      startDate: DateTime(2024, 9, 3, 18, 0),
      endDate: null,
      place: 'Hala widowiskowo-sportowa Spodek',
      address: 'al. Korfantego 35, Katowice',
      image: ImageAsset.spodek,
      imageSnipped: ImageAsset.spodekSnipped,
      contractors: const [
        Atraction(
          name: 'Katarzyna Cerekwicka',
        ),
        Atraction(
          name: 'Mateusz Ziółko',
        ),
        Atraction(
          name: 'Robert Talarczyk',
          type: 'prowadzenie',
        ),
        Atraction(
          name: 'Maciej Sztor',
          type: 'dyrygent',
        ),
        Atraction(
          name: 'Jarosław Wolanin',
          type: 'przygotowanie Chóru',
        ),
        Atraction(
          name: 'Mateusz Kokot',
          type: 'animacje',
        ),
        Atraction(
          name: 'Katarzyna Kroczek-Wasińska',
          type: 'animacje',
        ),
        Atraction(
          name: 'Wojciech Kukuczka',
          type: 'animacje',
        ),
        Atraction(
          name: 'Witold Suchoń',
          type: 'animacje',
        ),
        Atraction(
          name: 'Tomasz Olszewski',
          type: 'wizualizacje',
        ),
        Atraction(
          name: 'Orkiestra Symfoniczna Filharmonii Śląskiej',
        ),
        Atraction(
          name: 'Chór Filharmonii Śląskiej',
        ),
      ],
      programs: const [
        Atraction(
          name: 'John Williams',
          type: 'Star Wars',
        ),
        Atraction(
          name: 'John Williams',
          type: 'Szczęki',
        ),
        Atraction(
          name: 'John Williams',
          type: 'Harry Potte',
        ),
        Atraction(
          name: 'James Horner',
          type: 'Titanic',
        ),
        Atraction(
          name: 'Hans Zimmer',
          type: 'Batman vs Superman',
        ),
        Atraction(
          name: 'Hans Zimmer',
          type: 'Incepcja',
        ),
        Atraction(
          name: 'Hans Zimmer',
          type: 'Piraci z Karaibów',
        ),
        Atraction(
          name: 'Harry Gregson-Williams',
          type: 'Opowieści z Narnii',
        ),
        Atraction(
          name: 'John Powell',
          type: 'Jak Wytresować Smoka',
        ),
        Atraction(
          name: 'David Arnold',
          type: 'James Bond',
        ),
        Atraction(
          name: 'Ryszard Strauss',
          type: 'Odyseja Kosmiczna',
        ),
        Atraction(
          name: 'James Newton Howard',
          type: 'Igrzyska Śmierci',
        ),
        Atraction(
          name: 'Angelo Badalamenti',
          type: 'Twin Peaks',
        ),
      ],
      isFree: true,
      snippedAddress: 'Spodek, Katowice',
    ),
    Event(
      id: 2,
      title: 'Stanisław Bober fotografia',
      performances: const [
        'Cerekowicka',
        'Ziółko',
        'Talarczyk',
      ],
      startDate: DateTime(2024, 9, 23, 18, 0),
      endDate: DateTime(2024, 10, 12),
      place: 'Hala widowiskowo-sportowa Spodek',
      address: 'al. Korfantego 35, Katowice',
      image: ImageAsset.bober,
      imageSnipped: ImageAsset.boberSnipped,
      contractors: const [
        Atraction(
          name: 'Katarzyna Cerekwicka',
        ),
        Atraction(
          name: 'Mateusz Ziółko',
        ),
        Atraction(
          name: 'Robert Talarczyk',
          type: 'prowadzenie',
        ),
        Atraction(
          name: 'Maciej Sztor',
          type: 'dyrygent',
        ),
        Atraction(
          name: 'Jarosław Wolanin',
          type: 'przygotowanie Chóru',
        ),
      ],
      programs: const [
        Atraction(
          name: 'John Williams',
          type: 'Star Wars',
        ),
        Atraction(
          name: 'John Williams',
          type: 'Szczęki',
        ),
        Atraction(
          name: 'John Williams',
          type: 'Harry Potte',
        ),
      ],
      isFree: true,
      snippedAddress: 'Miejski ośrodek Kultury, Katowice',
    ),
    Event(
      id: 3,
      title: 'Dziedzictwo kultury a proces inwestycyjny',
      performances: const [
        'Cerekowicka',
        'Ziółko',
        'Talarczyk',
      ],
      startDate: DateTime(2024, 9, 23, 18, 0),
      endDate: DateTime(2024, 10, 12),
      place: 'Hala widowiskowo-sportowa Spodek',
      address: 'al. Korfantego 35, Katowice',
      image: ImageAsset.culture,
      imageSnipped: ImageAsset.cultureSnipped,
      contractors: const [
        Atraction(
          name: 'Katarzyna Cerekwicka',
        ),
        Atraction(
          name: 'Mateusz Ziółko',
        ),
        Atraction(
          name: 'Robert Talarczyk',
          type: 'prowadzenie',
        ),
        Atraction(
          name: 'Maciej Sztor',
          type: 'dyrygent',
        ),
        Atraction(
          name: 'Jarosław Wolanin',
          type: 'przygotowanie Chóru',
        ),
      ],
      programs: const [
        Atraction(
          name: 'John Williams',
          type: 'Star Wars',
        ),
        Atraction(
          name: 'John Williams',
          type: 'Szczęki',
        ),
        Atraction(
          name: 'John Williams',
          type: 'Harry Potte',
        ),
      ],
      isFree: true,
      snippedAddress: 'Muzeum Śląskie, Katowice',
    ),
    Event(
      id: 4,
      title: 'Gala muzyki filmowej',
      performances: const [
        'Cerekowicka',
        'Ziółko',
        'Talarczyk',
      ],
      startDate: DateTime(2024, 10, 12, 18, 0),
      endDate: null,
      place: 'Hala widowiskowo-sportowa Spodek',
      address: 'al. Korfantego 35, Katowice',
      image: ImageAsset.translation,
      imageSnipped: ImageAsset.translationSnipped,
      contractors: const [
        Atraction(
          name: 'Katarzyna Cerekwicka',
        ),
        Atraction(
          name: 'Mateusz Ziółko',
        ),
        Atraction(
          name: 'Robert Talarczyk',
          type: 'prowadzenie',
        ),
        Atraction(
          name: 'Maciej Sztor',
          type: 'dyrygent',
        ),
        Atraction(
          name: 'Jarosław Wolanin',
          type: 'przygotowanie Chóru',
        ),
      ],
      programs: const [
        Atraction(
          name: 'John Williams',
          type: 'Star Wars',
        ),
        Atraction(
          name: 'John Williams',
          type: 'Szczęki',
        ),
        Atraction(
          name: 'John Williams',
          type: 'Harry Potte',
        ),
      ],
      isFree: true,
      snippedAddress: 'Młodzieżowy Dom Kultury, Bielsko-Biała',
    ),
    Event(
      id: 5,
      title: 'Gala muzyki filmowej',
      performances: const [
        'Cerekowicka',
        'Ziółko',
        'Talarczyk',
      ],
      startDate: DateTime(2024, 10, 12, 18, 0),
      endDate: null,
      place: 'Hala widowiskowo-sportowa Spodek',
      address: 'al. Korfantego 35, Katowice',
      image: ImageAsset.films,
      imageSnipped: ImageAsset.filmsSnipped,
      contractors: const [
        Atraction(
          name: 'Katarzyna Cerekwicka',
        ),
        Atraction(
          name: 'Mateusz Ziółko',
        ),
        Atraction(
          name: 'Robert Talarczyk',
          type: 'prowadzenie',
        ),
        Atraction(
          name: 'Maciej Sztor',
          type: 'dyrygent',
        ),
        Atraction(
          name: 'Jarosław Wolanin',
          type: 'przygotowanie Chóru',
        ),
      ],
      programs: const [
        Atraction(
          name: 'John Williams',
          type: 'Star Wars',
        ),
        Atraction(
          name: 'John Williams',
          type: 'Szczęki',
        ),
        Atraction(
          name: 'John Williams',
          type: 'Harry Potte',
        ),
      ],
      isFree: true,
      snippedAddress: 'Gala muzyki filmowej',
    ),
  ];

  static const filters = [
    Filter(
      category: 'Kultura',
      tags: [
        'Sztuki wizualne',
        'Muzyka',
        'Muzeum',
        'Teatr',
        'Kino',
      ],
    ),
    Filter(
      category: 'Oświata',
      tags: [],
    ),
    Filter(
      category: 'Ochrona zdrowia',
      tags: [],
    ),
    Filter(
      category: 'Sport',
      tags: [],
    ),
    Filter(
      category: 'Turystyka',
      tags: [],
    ),
    Filter(
      category: 'Gospodarka',
      tags: [],
    ),
    Filter(
      category: 'Ekologia',
      tags: [],
    ),
    Filter(
      category: 'Fundusze Europejskie',
      tags: [],
    ),
    Filter(
      category: 'Rodzaj wydarzenia',
      tags: [
        'Warsztaty',
        'Targi',
        'Pikniki',
        'Kongresy',
        'Koncerty',
        'Spektakle',
        'Wystawy',
        'Konferencje',
        'Rajdy',
      ],
    ),
    Filter(
      category: 'Według wieku',
      tags: [
        'Dla dzieci',
        'Dla Seniora',
      ],
    ),
  ];
}
