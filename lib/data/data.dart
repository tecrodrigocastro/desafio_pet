import 'package:desafio_pet/models/dog_model.dart';
import 'package:flutter/material.dart';

List<Dog> getDogs() {
  final data = [
    {
      "name": "Sparky",
      "breed": "Golden Retriever",
      "age": "8 months old",
      "distance": "2.5 kms away",
      "photos": [
        "https://www.dogbible.com/app/images/golden-retriever-breed-description-a93a79.png",
        "https://www.canileffectgolden.com.br/wp-content/uploads/2018/06/4f3700014b520f3f0e581143c18e174c.png",
        "https://ogoldenretriever.com.br/wp-content/uploads/2021/07/cropped-dog.png",
        "https://www.pngarts.com/files/3/Golden-Retriever-PNG-Image.png",
        "https://www.tajjmahall.com.br/wp-content/uploads/2017/12/golden-retriever-profile.png",
      ],
      "sexo": "Female",
      "about":
          "O golden retriever é uma raça canina do tipo retriever originária da Grã-bretanha, e foi desenvolvida para a caça de aves aquáticas",
      "color": Colors.yellow
    },
    {
      "name": "Charlie",
      "breed": "Boston Terrier",
      "age": "1.5 years old",
      "distance": "2.6 kms away",
      "photos": [
        "https://www.dogbible.com/app/images/boston-terrier-breed-description-dc350a.png",
        "https://image.cachorrogato.com.br/imagens/topos/topo_26_1374220023.png",
        "https://www.worldlydogs.com/uploads/5/2/2/3/52234445/8186037_orig.png",
        "https://cf-s3.petcoach.co/uploads/breed/75/1520449701-Boston3.png",
        "https://res.imgkits.com/segment_regular_F1ddJPNS2ac.png?imageMogr2/format/webp|imageView2/2/w/900",
      ],
      "sexo": "Male",
      "about":
          "Boston terrier é uma raça canina oriunda da cidade de Boston, nos Estados Unidos. Originalmente eram utilizados como cães de combate e cães de caça a ratos, inclusive no Rat-baiting.",
      "color": Colors.cyanAccent
    },
    {
      "name": "Max",
      "breed": "Siberian Husky",
      "age": "1 years old",
      "distance": "2.9 kms away",
      "photos": [
        "https://cobasi.vteximg.com.br/arquivos/ids/223806/husky.png?v=636977629581500000",
        "https://static.wikia.nocookie.net/vsbattles/images/d/dd/29CA7826-F1B2-4462-9ED1-0CC5DDE6A394.png/revision/latest?cb=20200301023632",
        "https://i.pinimg.com/originals/68/72/1c/68721cbabf2089cd6211cd54578716b3.png",
        "https://www.petplan.co.uk/images/breed-info/husky/vital-stats_husky.png",
        "https://www.dogbible.com/app/images/sibirian-husky-b1fc34.png",
      ],
      "sexo": "Male",
      "about":
          "O husky siberiano é uma raça de cães de trabalho e companhia, do tipo Spitz, oriunda da Sibéria na Rússia. Sua função específica é tracionar trenós.",
      "color": Colors.blue
    },
    {
      "name": "Daisy",
      "breed": "Maitese",
      "age": "7 months old",
      "distance": "3.1 kms away",
      "photos": [
        "https://www.dogbible.com/i/en/maltese-breed-description.png",
        "https://images.wagwalkingweb.com/media/breed/maltese/appearance/maltese.png?auto=compress&fit=max",
        "https://www.trainpetdog.com/wp-content/themes/mytheme/images/about-page-images/Maltese-origin.png",
        "https://petlur.com/storage/app/public/breeds/dog/maltese.png",
        "https://d1qfah6k7u0qee.cloudfront.net/media/catalog/product/cache/50b339cc589a3eabde4710e45a9658a6/A/2/A2553C_1.png",
      ],
      "sexo": "Female",
      "about":
          "Maltês também chamado de bichon maltês, é uma raça de cães de companhia de pequeno porte oriunda da região central do Mar Mediterrâneo, geralmente associada pelo nome a ilha de Malta. Porém, o país patrono da raça é a Itália",
      "color": Colors.orangeAccent
    },
    {
      "name": "Sparky",
      "breed": "Golden Retriever",
      "age": "8 months old",
      "distance": "2.5 kms away",
      "photos": [
        "https://www.dogbible.com/app/images/golden-retriever-breed-description-a93a79.png",
        "https://www.canileffectgolden.com.br/wp-content/uploads/2018/06/4f3700014b520f3f0e581143c18e174c.png",
        "https://ogoldenretriever.com.br/wp-content/uploads/2021/07/cropped-dog.png",
        "https://www.pngarts.com/files/3/Golden-Retriever-PNG-Image.png",
        "https://www.tajjmahall.com.br/wp-content/uploads/2017/12/golden-retriever-profile.png",
      ],
      "sexo": "Female",
      "about":
          "O golden retriever é uma raça canina do tipo retriever originária da Grã-bretanha, e foi desenvolvida para a caça de aves aquáticas",
      "color": Colors.yellow
    },
    {
      "name": "Charlie",
      "breed": "Boston Terrier",
      "age": "1.5 years old",
      "distance": "2.6 kms away",
      "photos": [
        "https://www.dogbible.com/app/images/boston-terrier-breed-description-dc350a.png",
        "https://image.cachorrogato.com.br/imagens/topos/topo_26_1374220023.png",
        "https://www.worldlydogs.com/uploads/5/2/2/3/52234445/8186037_orig.png",
        "https://cf-s3.petcoach.co/uploads/breed/75/1520449701-Boston3.png",
        "https://res.imgkits.com/segment_regular_F1ddJPNS2ac.png?imageMogr2/format/webp|imageView2/2/w/900",
      ],
      "sexo": "Male",
      "about":
          "Boston terrier é uma raça canina oriunda da cidade de Boston, nos Estados Unidos. Originalmente eram utilizados como cães de combate e cães de caça a ratos, inclusive no Rat-baiting.",
      "color": Colors.cyanAccent
    },
  ];
  return data.map<Dog>(Dog.fromJson).toList();
}
