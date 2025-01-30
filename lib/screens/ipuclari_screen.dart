import 'package:flutter/material.dart';

class IpuclariScreen extends StatelessWidget {
  const IpuclariScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: const Text('İPUÇLARI', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),  // Başlığı büyük harflerle ve kalın yapıyoruz
          centerTitle: true,  // Başlığı ortalıyoruz
          backgroundColor: Colors.teal,  // Arka plan rengini teal (turkuaz) yapıyoruz
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildQuestionBox(
              context,
              'Karbon ayak izi nasıl hesaplanır?',
              'Karbon ayak izi, günlük yaşamda kullanılan enerji, seyahat edilen mesafeler, tüketilen yiyecekler ve tüketim alışkanlıklarına göre hesaplanır. Elektrik, ulaşım ve diğer kaynaklardan salınan sera gazları dikkate alınır.',
              Colors.teal.shade200,
            ),
            _buildQuestionBox(
              context,
              'Karbon ayak izi neden önemlidir?',
              'Karbon ayak izini anlamak, kişisel ve toplumsal çevresel etkilerimizi anlamamıza yardımcı olur. Daha düşük bir karbon ayak izi, iklim değişikliğini yavaşlatmak için önemlidir.',
              Colors.orange.shade200,
            ),
            _buildQuestionBox(
              context,
              'Karbon ayak izimi nasıl azaltabilirim?',
              'Karbon ayak izini azaltmak için enerji verimliliği sağlanabilir, toplu taşıma kullanılabilir, sürdürülebilir gıda seçenekleri tercih edilebilir ve geri dönüşüm yapılabilir.',
              Colors.blue.shade200,
            ),
            _buildQuestionBox(
              context,
              'Bir kişinin karbon ayak izi ortalama ne kadar?',
              'Bir kişinin karbon ayak izi, yaşadığı ülkeye, yaşam tarzına ve tüketim alışkanlıklarına göre değişir. Gelişmiş ülkelerde bu ortalama 10-15 ton CO2e civarında olabilir.',
              Colors.purple.shade200,
            ),
            _buildQuestionBox(
              context,
              'Karbon ayak izi hangi faktörlerden etkilenir?',
              'Karbon ayak izini etkileyen faktörler arasında enerji tüketimi, ulaşım alışkanlıkları, beslenme alışkanlıkları, atık yönetimi ve üretim-tüketim alışkanlıkları bulunur.',
              Colors.green.shade200,
            ),
            _buildQuestionBox(
              context,
              'Fosil yakıt kullanımı karbon ayak izimi nasıl etkiler?',
              'Fosil yakıtlar (kömür, petrol, doğal gaz) yandığında büyük miktarda karbon salınımı yaparlar. Bu da karbon ayak izini artıran ana faktörlerden biridir.',
              Colors.red.shade200,
            ),
            _buildQuestionBox(
              context,
              'Elektrikli araçlar karbon ayak izini azaltır mı?',
              'Elektrikli araçlar, fosil yakıtla çalışan araçlara göre daha az karbon salınımına yol açar, ancak elektrik üretiminin kaynaklarına bağlı olarak yine de bir miktar karbon ayak izi olabilir.',
              Colors.yellow.shade200,
            ),
            _buildQuestionBox(
              context,
              'Sıfır atık yaşam tarzı karbon ayak izimi nasıl etkiler?',
              'Atıkları geri dönüştürmek ve tüketime son vermek, karbon ayak izini azaltabilir. Ayrıca, daha az ambalaj ve daha fazla doğal malzeme kullanmak da etkilidir.',
              Colors.brown.shade200,
            ),
            _buildQuestionBox(
              context,
              'Karbon ayak izimi hesaplamak için bir araç var mı?',
              'Evet, birçok çevrimiçi karbon ayak izi hesaplayıcısı bulunmaktadır. Bu araçlar, kişisel alışkanlıklarınızı girerek tahmini bir karbon ayak izi hesaplamanızı sağlar.',
              Colors.pink.shade200,
            ),
            _buildQuestionBox(
              context,
              'Karbon ayak izi şirketler ve endüstriler için nasıl hesaplanır?',
              'Şirketlerin ve endüstrilerin karbon ayak izi, genellikle enerji tüketimi, üretim süreçleri, tedarik zinciri, lojistik ve atık yönetimi gibi alanlarda salınan sera gazlarının hesaplanmasıyla belirlenir. Büyük şirketler, karbon ayak izlerini raporlayarak sürdürülebilirlik hedeflerine ulaşmayı amaçlar ve emisyonları azaltmak için stratejiler geliştirir. Bu süreç genellikle uluslararası standartlara göre yapılır, örneğin ISO 14064 ya da GHG Protokolü gibi.',
              Colors.cyan.shade200,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionBox(BuildContext context, String question, String answer, Color boxColor) {
    return GestureDetector(
      onTap: () {
        _showAnswerDialog(context, question, answer);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          question,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  void _showAnswerDialog(BuildContext context, String question, String answer) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(question),
          content: Text(answer),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kapat'),
            ),
          ],
        );
      },
    );
  }
}
