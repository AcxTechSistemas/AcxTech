import 'package:url_launcher/url_launcher.dart';

class HomeController {
  Future<void> goToVerifyInGooglePlay() async {
    Uri uri = Uri.parse(
      'market://details?id=br.com.acxtech.verify',
    );
    if (!await canLaunchUrl(uri)) {
      uri = Uri.parse(
        'https://play.google.com/store/apps/details?id=br.com.acxtech.verify',
      );
      await launchUrl(uri); // Abre a URL no aplicativo
    }
  }

  Future<void> goToInstagram() async {
    Uri instagramAppUri = Uri.parse(
      'instagram://user?username=acxtechsistemas',
    );
    if (!await canLaunchUrl(instagramAppUri)) {
      instagramAppUri = Uri.parse(
        'https://www.instagram.com/acxtechsistemas/',
      );
      await launchUrl(instagramAppUri);
    }
  }

  Future<void> goToWhatsapp() async {
    Uri whatsappUri = Uri.parse(
      'whatsapp://send?phone=5562993149401&text=Bem%20vindo%20a%20AcxTech%20Sistemas.%20Em%20que%20podemos%20ajudar%3F',
    );
    if (!await canLaunchUrl(whatsappUri)) {
      whatsappUri = Uri.parse(
        'https://api.whatsapp.com/send?phone=5562993149401&text=Bem%20vindo%20a%20AcxTech%20Sistemas.%20Em%20que%20podemos%20ajudar%3F',
      );
      await launchUrl(whatsappUri);
    }
  }

  Future<void> goToGithub() async {
    final githubUrl = Uri.parse(
      'https://github.com/AcxTechSistemas',
    );
    await launchUrl(githubUrl);
  }

  Future<void> goToLinkedin() async {
    final linkedinUrl = Uri.parse(
      'https://www.linkedin.com/in/alefealvessilva',
    );
    await launchUrl(linkedinUrl);
  }
}
