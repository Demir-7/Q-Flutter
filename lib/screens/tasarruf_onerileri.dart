import 'package:flutter/material.dart';

class TasarrufOnerileri extends StatelessWidget {
  TasarrufOnerileri({super.key});

  final List<String> oneriler = [
    "Evde enerjiyi verimli kullanmak, karbon ayak izini önemli ölçüde azaltabilir.",
    "Elektronik cihazları kullanmadığınızda kapatın.",
    "LED ampuller kullanarak enerji tüketimini azaltabilirsiniz.",
    "Elektrikli araçlar, fosil yakıtları azaltmanın en etkili yollarından biridir.",
    "Toplu taşıma kullanarak, bireysel taşımanın yarattığı karbon emisyonlarını azaltabilirsiniz.",
    "Bisiklet sürmek, hem sağlığınızı hem de çevreyi korur.",
    "Araba yerine yürüyerek ulaşım sağlayın.",
    "Enerji verimliliği yüksek cihazlar tercih edin.",
    "Çamaşır makinesini yalnızca tam dolu olduğunda çalıştırın.",
    "Sıcak su kullanımını minimumda tutarak enerji tasarrufu yapabilirsiniz.",
    "Bulaşık makinesi kullanırken tam dolu olduğunda çalıştırın.",
    "Su tasarrufu yapmak için düşük akışlı musluk başlıkları kullanın.",
    "Evinizdeki eski cihazları enerji verimli modellerle değiştirin.",
    "Geri dönüşümü artırarak atıkları azaltın.",
    "Evinizdeki gereksiz elektrikli cihazları söndürün.",
    "Zamanlayıcı kullanarak enerji israfını engelleyin.",
    "Yazın klima yerine vantilatör kullanarak daha az enerji tüketebilirsiniz.",
    "Kışın ısıtıcıyı gereksiz kullanmaktan kaçının.",
    "Daha fazla doğal ışık kullanarak enerji tasarrufu yapın.",
    "Pencerelerinizi iyi izole ederek ısı kaybını önleyin.",
    "Sıcak su kullanımını sınırlayarak tasarruf yapabilirsiniz.",
    "Duvarda izolasyon yaparak enerjiyi koruyun.",
    "Hızlı yemek pişirme teknikleri kullanarak enerji tasarrufu sağlayın.",
    "Buzdolabının kapağını fazla açmamaya özen gösterin.",
    "Su tüketimini azaltmak için duş sürenizi kısaltın.",
    "Yüksek verimli ısıtıcılar kullanarak enerji tasarrufu yapın.",
    "Daha az et tüketmek, çevre dostu bir tercih olabilir.",
    "Geri dönüşüm yaparak hem çevreyi koruyun hem tasarruf edin.",
    "Sadece ihtiyacınız kadar alışveriş yaparak israfı önleyin.",
    "İkinci el ürünler alarak doğal kaynakları koruyabilirsiniz.",
    "Çift camlı pencere kullanarak ısı kaybını engelleyin.",
    "Evinizdeki ışıkları kapatıp, doğal ışığı daha fazla kullanın.",
    "Eşyalarınızı düzenleyerek daha az enerji harcayın.",
    "Buzdolabınızın sıcaklık ayarlarını doğru yapın.",
    "Çamaşırları düşük sıcaklıkta yıkayarak enerji tasarrufu yapın.",
    "Kompakt floresan lambalar kullanarak daha az enerji harcayın.",
    "Bilgisayarlarınızı uyku moduna alarak enerji tasarrufu yapın.",
    "Kullanmadığınız telefonları ve tabletleri kapatın.",
    "Suyunuzu ısıtmak için güneş enerjisi kullanmayı tercih edin.",
    "Bahçenizde kompost yaparak atıkları değerlendirin.",
    "Evde yemek yaparken tasarruflu yöntemler kullanın.",
    "Pişirme işlemlerinde doğru boyutlu tencere ve tavalar kullanın.",
    "Sürekli çalışan cihazları zamanlayıcılarla kontrol edin.",
    "Elektrik faturasını azaltmak için doğru fatura planını seçin.",
    "Evinizin dış cephesinde enerji tasarrufu sağlayacak kaplama yapın.",
    "Yazın pencerenizi açıp, doğal havalandırmayı kullanın.",
    "Kışın sıcaklık kontrolü için perde veya jaluziler kullanın.",
    "Kombinizi düzgün bir şekilde bakımla verimli kullanın.",
    "Sokak lambalarının yerine LED lambalar kullanın.",
    "Enerji tasarrufu sağlayan ev eşyaları kullanın.",
    "Toptan alışveriş yaparak plastik kullanımı azaltın.",
    "Evde güneş ışığı toplamak için fotovoltaik paneller kullanın.",
    "Evinizde tasarruflu beyaz eşya kullanarak enerji tüketimini azaltın.",
    "Geri dönüşüm kutularınızı düzenli olarak boşaltın.",
    "Evinizdeki gereksiz ışıkları söndürün.",
    "Sıcak havalarda evinizi doğal yollarla serinletin.",
    "Evinizi mümkünse yerel malzemelerle inşa edin.",
    "Evdeki eski mobilyalarınızı geri dönüştürün.",
    "Daha az otomobil kullanarak ulaşımı çevre dostu hale getirin.",
    "Bireysel enerji üretim sistemlerini araştırın ve kullanın.",
    "Yatırım yapmadan önce enerji verimliliğini göz önünde bulundurun.",
    "Güneş enerjisi ile çalışan cihazlar kullanarak tasarruf yapın.",
    "Evinizi düzenli olarak temizleyerek enerji verimliliği sağlanabilir.",
    "Suyunuzu tasarruflu şekilde kullanarak çevreyi koruyun.",
    "Hangi cihazların daha fazla enerji harcadığını öğrenin ve azaltın.",
    "Evinizin iç mekanında enerji verimliliği yüksek ekipmanlar kullanın.",
    "Çevre dostu temizlik ürünleri kullanarak sağlığınızı koruyun.",
    "Toplu taşıma kartlarına sahip olarak ulaşımda indirim sağlayın.",
    "Sera gazı emisyonlarını azaltmak için çevre dostu politikalar uygulayın.",
    "Yüksek verimli ısıtma ve soğutma sistemleri kullanın.",
    "Doğal malzemelerle yapılmış eşyalar tercih edin.",
    "Evinizde doğal kaynaklardan faydalanarak enerji tasarrufu yapın.",
    "Yaz aylarında gölgelik alanlar oluşturarak enerji kullanımını azaltın.",
    "Sadece ihtiyacınız kadar enerji tüketerek faturalarınızı azaltın.",
    "Binalarınızda doğal ısıtma yöntemlerini araştırın.",
    "Verimli su yönetim sistemleri kullanarak su tasarrufu yapın.",
    "Yüksek kaliteli yalıtım malzemeleri kullanarak ısı kaybını engelleyin.",
    "Alternatif enerji kaynakları kullanarak fosil yakıt bağımlılığını azaltın.",
    "Sürekli olarak enerji verimliliği hakkında araştırma yapın.",
    "Faturalarınızı dijital olarak takip ederek kağıt kullanımını azaltın.",
    "Yüksek verimli izolasyon malzemeleri kullanarak tasarruf yapın.",
    "Evde geri dönüşüm yaparak atıkları değerlendirin.",
    "Isıtma ve soğutma sistemlerini verimli kullanarak tasarruf edin.",
    "Bakteriyel solüsyonlar kullanarak temizliği çevre dostu hale getirin.",
    "Daha az tüketerek çevreyi koruyun.",
    "Toplu taşıma araçlarını düzenli kullanarak karbon ayak izinizi azaltın.",
    "Alternatif enerji sistemlerini kurarak kendi enerjinizi üretin.",
    "Evde enerji verimliliği yüksek cihazlar kullanın.",
    "Enerji tüketimini izlemek için akıllı cihazlar kullanın.",
    "Su tüketiminizi izleyin ve gerektiğinde azaltın.",
    "Hava şartlarına göre enerji kullanımınızı ayarlayın.",
    "Daha az plastik ürün kullanarak atık üretimini azaltın.",
    "Evinizde doğal kaynaklardan faydalanarak enerji tasarrufu yapın.",
    "Enerji verimliliği raporları ile evinizin enerji kullanımını takip edin.",
    "Yüksek verimli enerji tasarrufu yapabileceğiniz cihazlar seçin.",
    "Yalnızca ihtiyacınız kadar elektrik kullanarak faturaları düşürün.",
    "Evde daha fazla bitki bulundurup havayı temizleyin.",
    "Evinizdeki enerji verimliliğini düzenli olarak kontrol edin.",
    "Alternatif ısıtma ve soğutma sistemleri kullanarak tasarruf edin.",
    "Hava şartlarına göre ısıtma ve soğutma sistemlerini verimli kullanın.",
    "Geri dönüşüm yaparak çevreyi koruyun ve israfı azaltın.",
    "Sadece gerektiğinde yeni ürünler satın alarak atık üretimini önleyin.",
    "Fazla eşya almak yerine daha fazla doğal yaşam alanı yaratın.",
    "Elektrik faturalarınızı dikkatlice inceleyin ve tasarruf yolları arayın.",
    "Evinizde her alanın enerji verimli olduğundan emin olun.",
    "Çevre dostu ve enerji verimli cihazlar kullanarak tasarruf edin.",
    "Isınma veya soğutma ihtiyacınızı doğal yollarla karşılamaya çalışın.",
    "Yüksek verimli ekipmanlar kullanarak enerji verimliliği sağlayın.",
    "Binalarınızı enerji verimli hale getirin ve dış cepheleri yalıtın.",
    "Faturalarda tasarruf yapmak için enerji tüketimini izleyin.",
    "Yalnızca ihtiyacınız kadar su tüketmeye özen gösterin.",
    "Hızlı yemek pişirme yöntemleri kullanarak tasarruf yapın.",
    "Fosil yakıtları azaltmak için alternatif enerji kaynaklarını araştırın.",
    "Evde güneş enerjisi sistemleri kurarak tasarruf yapabilirsiniz.",
    "Fosil yakıtlardan daha az kullanarak çevreyi koruyun.",
    "Evinizdeki enerji verimliliğini artırarak tasarruf yapabilirsiniz.",
    "Isınma ve soğutma sistemlerinizde enerji verimliliği sağlayın.",
    "Enerji verimli ürünler kullanarak yaşam tarzınızı değiştirebilirsiniz.",
    "Bireysel enerji üretimi ile tasarruf sağlayın.",
    "Evinizi izole ederek enerji kayıplarını engelleyin.",
    "Evde sıcak su kullanımını minimize edin.",
    "Elektrikli araçlar kullanarak çevreye katkıda bulunun.",
    "Evdeki ışıkları gereksiz yere yakmamaya özen gösterin.",
    "Yüksek verimli buzdolapları kullanarak tasarruf edin.",
    "Elektronik cihazları düşük enerji modunda kullanın",
    "İhtiyacınız kadar yemek hazırlayarak israfı engelleyin.",
    "Çevre dostu temizlik malzemeleri kullanarak hem sağlığınızı hem çevreyi koruyun.",
    "Çift yönlü camlar kullanarak ısı kaybını engelleyin.",
    "Geri dönüştürülebilir malzemeler kullanarak atıkları azal",
    "Evde yerel malzemelerle yapılaşarak doğal kaynakları koruyun.",
    "Isıtma sistemlerini termostatla kontrol edin.",
    "Su kullanımını sınırlayarak faturalarınızı düşürün.",
    "Akıllı enerji izleme sistemleri kullanarak tasarruf sağlayın.",
    "Biyolojik temizlik malzemeleri kullanarak hem sağlıklı hem çevre dostu olu",
    "Evinizde güneş enerjisi sistemlerine yatırım yapın.",
    "Evde rüzgar enerjisi kullanımını araştırın.",
    "Yenilenebilir enerji kaynaklarına yatırım yaparak çevreyi koruyun.",
    "Sıcak su kullanımlarını minimumda tutarak enerji tasarrufu sağlayın.",
    "Çamaşır makinesi kullanımını düşürerek su ve enerji tasarrufu yapın.",
    "Güçlü izleme sistemleri kullanarak enerji harcamanızı takip edin.",
    "Zamanlayıcılar kullanarak gereksiz enerji tüketimini engelleyin.",
    "Soğutma sistemlerinizi doğal yollarla düzenleyin.",
    "Faturalarınızda tasarruf sağlamak için doğru enerji planını seçin.",
    "Çevre dostu binalar inşa ederek fosil yakıt kullanımını azaltın.",
    "Tüketim alışkanlıklarınıza göre daha verimli cihazlar seçin.",
    "Elektrik ve su faturalarınızı dijital olarak takip edin.",
    "Evdeki fazla ışıkları kapatarak tasarruf edin.",
    "Gereksiz sıcak su tüketimini önlemek için duş sürenizi kısaltın.",
    "Toptan alışveriş yaparak plastik ambalaj kullanımı azaltın.",
    "Elektrikli cihazlarınızı tasarruflu modellerle değiştirin.",
    "Biyolojik temizlik malzemeleri kullanarak doğayı koruyun.",
    "Yerel malzemelerle yapılmış ürünleri tercih edin.",
    "Geri dönüşümlü malzemelerle üretilmiş ürünleri kullanın.",
    "Çamaşırları güneş ışığında kurutarak enerji tasarrufu yapın.",
    "Kullanmadığınız cihazları prizden çekin.",
    "Suyu ısıtmak için düşük enerjili yöntemler kullanın.",
    "Kendi bahçenizde organik ürünler yetiştirerek atık üretimini azaltın.",
    "Çamaşırları doğru sıcaklıkta yıkayarak enerji tasarrufu yapın.",
    "Çevre dostu ürünleri tercih ederek daha az atık üretin.",
    "Yeni ürünler almak yerine mevcut ürünleri onarın.",
    "Evde enerji verimliliği yüksek ışık sistemleri kullanın.",
    "Sıcak yaz günlerinde dışarıda fazla vakit geçirerek klima kullanımını azaltın.",
    "Enerji verimliliği sağlayan izolasyon malzemelerini araştırın.",
    "Dışarıda alışveriş yaparken çevre dostu poşetler kullanın.",
    "Elektrikli cihazlarınızı sadece gerektiğinde kullanın.",
    "Güneş ışığını daha fazla kullanarak enerji tüketimini azaltın.",
    "Geri dönüşüm yaparak tasarruf edin.",
    "Çevre dostu araçlar kullanarak karbon ayak izinizi azaltın.",
    "Akıllı cihazlar ile enerji tüketimini izleyin.",
    "Alternatif enerji kaynaklarını araştırın ve kullanmaya başlayın.",
    "Yağmur sularını biriktirerek su tüketimini azaltın.",
    "Evde yalnızca gerektiği kadar enerji tüketerek tasarruf edin.",
    "Gereksiz ürün alımlarını sınırlandırarak çevreyi koruyun.",
    "Evinizde enerji tasarrufu sağlayan izolasyonları araştırın.",
    "Sadece ihtiyacınız kadar elektrik tüketin.",
    "Çevre dostu mobilyalar kullanarak atık üretimini azaltın.",
    "Elektrik faturanızı takip ederek daha verimli ürünler kullanın.",
    "Suyunuzu ısıtmak için enerji verimli sistemler kullanın.",
    "Düşük enerjili elektrikli cihazlar kullanın.",
    "İkinci el ürünler alarak çevreyi koruyun.",
    "Günlük alışkanlıklarınızı daha çevre dostu hale getirin.",
    "Çamaşırları az miktarda yıkayarak su tasarrufu yapın.",
    "Bisiklet kullanarak ulaşım maliyetlerini düşürün.",
    "Evde enerji verimli aydınlatma sistemleri kullanın.",
    "Enerji tasarrufu sağlamak için evin sıcaklığını doğru ayarlayın.",
    "Dış cepheleri yalıtarak enerji tasarrufu yapın.",
    "Sıcak suyu ihtiyacınız kadar kullanarak su tüketimini azaltın.",
    "Geri dönüşüm yapan firmalarla çalışarak atık üretimini azaltın.",
    "Evde enerji tasarrufu sağlayan uygulamalar kullanın.",
    "Evdeki tüm cihazları verimli şekilde kullanmaya özen gösterin.",
    "Yerel üretim yapan mağazalardan alışveriş yaparak çevreyi koruyun.",
    "Akıllı enerji cihazları kullanarak tasarruf edin.",
    "Geri dönüşüm malzemeleri kullanarak atıkları azaltın.",
    "Yağmur suyu toplama sistemleri kullanarak su tasarrufu yapın.",
    "Evinizi sıcak tutmak için doğru ısıtma sistemini seçin.",
    "Fazla enerji harcayan cihazları bilinçli şekilde kullanın.",
    "Suyu daha verimli kullanarak tasarruf edin.",
    "Evinizde doğal malzemelerle yapılmış ürünler kullanın.",
    "Alışveriş yaparken çevre dostu markalar tercih edin.",
    "Suyu ısıtmak için yenilenebilir enerji kullanın.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tasarruf Önerileri',
          style: TextStyle(
            fontFamily: 'Playball', // Fontu Playball olarak ayarladık
            fontSize: 30, // Başlık boyutunu biraz büyüttük
            fontWeight: FontWeight.bold, // Kalın font
            fontStyle: FontStyle.italic, // Italik font
            color: Colors.black, // Siyah renk
          ),
        ),
        backgroundColor: Colors.green[700], // Yeşil arka plan
        centerTitle: true, // Başlık ortalandı
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, // Yan yana 5 kart
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: oneriler.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 16,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              oneriler[index],
                              style: const TextStyle(
                                fontFamily: 'RobotoSlab',
                                fontSize: 16,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500, // Hafif kalın yazı
                              ),
                            ),
                            const SizedBox(height: 20),
                            Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green, // Yeşil buton
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: const Text(
                                  'Kapat',
                                  style: TextStyle(
                                    color: Colors.black, // Siyah yazı rengi
                                    fontWeight: FontWeight.bold, // Kalın yazı
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Yuvarlak köşeler
                ),
                color: Colors.green[50], // Yeşil tonları
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${index + 1}', // Sadece sayıyı gösteriyoruz
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'RobotoSlab', // Modern font
                        fontSize: 18, // Sayı font boyutunu büyüttük
                        color: Colors.green[900], // Yeşil tonları
                        fontWeight: FontWeight.bold, // Kalın yazı tipi
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
