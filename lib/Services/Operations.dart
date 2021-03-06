import 'package:spotifly/DataModels/Category.dart';

class Operations{

  Operations._(){
    //private constructor

  }

  static List <Category>getCategory()
  {
    return <Category>[
      Category(
        'Top Songs',
        'https://is1-ssl.mzstatic.com/image/thumb/Purple123/v4/0e/09/c4/0e09c462-c0cd-0a6c-d748-ea69b70442b7/source/256x256bb.jpg',
      ),
      Category(
        'MJ Hits',
        'https://is1-ssl.mzstatic.com/image/thumb/Purple71/v4/d1/ba/85/d1ba8582-972e-7e02-6f3b-cc47adfc055f/source/256x256bb.jpg',
      ),
      Category(
        'Weekend',
        'https://hips.hearstapps.com/hmg-prod/images/15-1598362258.jpg?crop=0.506xw:1.00xh;0.290xw,0&resize=1200:*',
      ),
      Category(
        'Arjit Hits',
        'https://static.qobuz.com/images/covers/6a/3b/pnro4yukm3b6a_600.jpg',
      ),
      Category(
        'Kishore',
        'https://c-cl.cdn.smule.com/rs-s78/arr/f5/4e/27b764f1-91f2-41e7-934a-5bedf8b1751a.jpg',
      ),
      Category(
        'Rafi',
        'https://c-cl.cdn.smule.com/rs-s80/arr/56/f6/798ae822-373f-402a-a010-f7c60d0fd214.jpg',
      )

    ];
  }
}