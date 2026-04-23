import 'package:angular/di.dart';
import 'package:intl/intl.dart';

@Injectable()
class MessagesService {
  String get about => Intl.message('om', name: 'about');

  String get about_this_project =>
      Intl.message('Om projektet:', name: 'about_this_project');

  String get about_url => Intl.message('om', name: 'about_url');

  String get archive => Intl.message('arkiv', name: 'archive');

  String get archive_url => Intl.message('arkiv', name: 'archive_url');

  String get cancel => Intl.message('avbryt', name: 'cancel');

  String get close => Intl.message('stäng', name: 'close');

  String get contact => Intl.message('kontakt', name: 'contact');

  String get contact_bullet_1 =>
      Intl.message('amalgam enbart får användas i fördoserad, inkapslad form.',
          name: 'contact_bullet_1');

  String get contact_bullet_2 => Intl.message(
      'barn under 15 år samt gravida eller ammande inte får behandlas med amalgam om det inte ur ett medicinskt perspektiv bedöms som absolut nödvändigt',
      name: 'contact_bullet_2');

  String get contact_bullet_3 => Intl.message(
      'amalgamavskiljare med viss verkningsgrad måste finnas vid tandvårdsinrättningar där amalgam används eller amalgamfyllningar avlägsnas',
      name: 'contact_bullet_3');

  String get contact_bullet_4 => Intl.message(
      'EU-kommissionen ska senast i mitten av 2020 rapportera om möjligheten att långsiktigt fasa ut amalgam senast till 2030.',
      name: 'contact_bullet_4');

  String get contact_pragraph_1 => Intl.message(
      'Praktikertjänst har, i samarbete med Sweden Recycling och IVL Svenska Miljöinstitutet, startat projektet HG-Rid LIFE som fått ekonomiskt stöd av LIFE – EU:s program för miljö och klimat. Genom projektet tar vi vårt ansvar för ett hållbart samhälle. Projektets huvudsyfte är att minimera utsläppen av kvicksilver från tandvårdsmottagningar i Sverige och på sikt i övriga EU.',
      name: 'contact_pragraph_1');

  String get contact_pragraph_2 => Intl.message(
      'Kvicksilver är ett av de allvarligaste miljögifterna och trots att amalgam förbjöds 2009 är det fortfarande få tandvårdsmottagningar som har nollutsläpp av kvicksilver från amalgam. Det beräknas fortfarande finnas upp till 15 ton kvicksilver i tänderna hos svenska befolkningen. Urborrning av amalgamfyllningar kommer därför att göras under många år framöver. Amalgamavskiljarna fångar upp det mesta, men effektiviteten beror bl.a. på skötseln. De finaste amalgampartiklarna fångas heller inte upp av avskiljarna. Det finns också risk att kvicksilver från avloppsrör läcker ut i avloppsvattnet. Risken att kvicksilver lagrats i rören är särskilt stor i de mottagningar där tandvård bedrivits innan kravet på avskiljare kom och där äldre avskiljare med en sämre funktion än dagens använts.',
      name: 'contact_pragraph_2');

  String get contact_pragraph_5 => Intl.message(
      'Inom EU uppskattas det finnas mer än 1 000 ton kvicksilver i befolkningens munnar. Dentalt amalgam är en av de huvudsakliga källorna till användning av kvicksilver inom EU.',
      name: 'contact_pragraph_5');

  String get contact_pragraph_3 => Intl.message(
      'En EU-förordning om kvicksilver trädde i kraft den 1 januari 2018. Den innebär bl.a. att:',
      name: 'contact_pragraph_3');

  String get contact_pragraph_4 => Intl.message(
      'Projektet är ett bidrag till det nationella miljökvalitetsmålet Giftfri miljö samt till FN:s globala utvecklingsmål, Agenda 2030 (Mål 6 Rent vatten och sanitet).',
      name: 'contact_pragraph_4');

  String get contact_project_goal_1 => Intl.message(
      'ta fram förslag på vägledning för kvicksilverkontroll inom tandvård som kan implementeras i Sverige och inspirera till riktlinjer inom övriga EU',
      name: 'contact_project_goal_1');

  String get contact_project_goal_2 => Intl.message(
      'utveckla nya metoder för sanering som är effektiv, användarvänlig och kostnadseffektiv',
      name: 'contact_project_goal_2');

  String get contact_project_goal_3 => Intl.message(
      'öka kunskap och medvetenhet om hur kvicksilver från amalgam påverkar miljön. Denna webbportal är en del av detta arbete.',
      name: 'contact_project_goal_3');

  String get contact_us => Intl.message('Kontakta oss', name: 'contact_us');

  String get continueMsg => Intl.message('nästa', name: 'continueMsg');

  String get course_modules =>
      Intl.message('kursmoduler', name: 'course_modules');

  String get course_room_carousel_header =>
      Intl.message('filmer', name: 'course_room_carousel_header');

  String get course_room_for_curious_url =>
      Intl.message('kursrum-for-nyfikna', name: 'course_room_for_curious_url');

  String get course_room_for_dental_teams_url =>
      Intl.message('kursrum-for-tandvardsteam',
          name: 'course_room_for_dental_teams_url');

  String get course_room_for_service_technicians_url =>
      Intl.message('kursrum-for-servicetekniker',
          name: 'course_room_for_service_technicians_url');

  String get course_room_for_environmental_service_companies_url =>
      Intl.message('kursrum-for-miljoserviceforetag',
          name: 'course_room_for_environmental_service_companies_url');

  String get currentLanguage => Intl.shortLocale(Intl.getCurrentLocale());

  String get document_url => Intl.message('dokument', name: 'document_url');

  String get documents_component_url =>
      Intl.message('dokumentlista', name: 'documents_component_url');

  String get english => Intl.message('engelska', name: 'english');

  String get find_right_content_for_you =>
      Intl.message('Hitta rätt innehåll för dig',
          name: 'find_right_content_for_you');

  String get french => Intl.message('franska', name: 'french');

  String get german => Intl.message('tyska', name: 'german');

  String get good_examples =>
      Intl.message('goda exempel', name: 'good_examples');

  String get home_url => Intl.message('hem', name: 'home_url');

  String get language => Intl.message('språk', name: 'language');

  String get learn_more => Intl.message('lär dig mer!', name: 'learn_more');

  String get library => Intl.message('bibliotek', name: 'library');

  String get library_button_tooltip => Intl.message(
      'Här finns alla våra kursmoment samlade på ett och samma ställe!',
      name: 'library_button_tooltip');

  String get library_header =>
      Intl.message('Här finns allt material samlat!', name: 'library_header');

  String get library_url => Intl.message('bibliotek', name: 'library_url');

  String get main_header =>
      Intl.message('En liten insats kan göra stor skillnad!',
          name: 'main_header');

  String get menu => Intl.message('meny', name: 'menu');

  String get open => Intl.message('öppna', name: 'open');

  String get project_should =>
      Intl.message('Projektet ska:', name: 'project_should');

  String get quick_actions_url =>
      Intl.message('snabba-aktiviteter', name: 'quick_actions_url');

  String get quiz_fail_text_1 => Intl.message(
      'Tyvärr har du inte tillräckligt många rätt för att bli godkänd på testet.',
      name: 'quiz_fail_text_1');

  String get quiz_fail_text_2 =>
      Intl.message('Läs på mer och försök igen.', name: 'quiz_fail_text_2');

  String get quiz_fail_text_3 =>
      Intl.message('Du behöver svara rätt på ', name: 'quiz_fail_text_3');

  String get of_given_questions =>
      Intl.message('av frågorna.', name: 'of_given_questions');

  String get quiz_fail_title =>
      Intl.message('Tyvärr!', name: 'quiz_fail_title');

  String get quiz_success_agree_terms => Intl.message(
      'Jag samtycker till att Praktikertjänst AB sparar min e-postadress i upp till 12 månader. E-postadressen kommer inte användas i marknadsföringssyfte eller lämnas vidare till tredje part.',
      name: 'quiz_success_agree_terms');

  String get quiz_success_mail_sent_text =>
      Intl.message('Vi hör av oss.', name: 'quiz_success_mail_sent_text');
  String get quiz_success_mail_sent_title =>
      Intl.message('Tack!', name: 'quiz_success_mail_sent_title');

  String get quiz_success_text_1 => Intl.message(
      'Som en del av Hg-rid projektetet vill vi utvärdera värdet av den här portalen.',
      name: 'quiz_success_text_1');

  String get quiz_success_text_2 => Intl.message(
      'Kan du tänka dig att svara på några frågor via mejl om webbutbildningen? I så fall skriver du in din mejladress här.',
      name: 'quiz_success_text_2');

  String get quiz_success_title =>
      Intl.message('Grattis, du har klarat testet!',
          name: 'quiz_success_title');

  String get pass_limt =>
      Intl.message('Gräns för godkänt: ', name: 'pass_limt');

  String get read_more_about_this_project_at =>
      Intl.message('Läs mer om projektet på',
          name: 'read_more_about_this_project_at');

  String get redo_quiz => Intl.message('gör om', name: 'redo_quiz');

  String get search => Intl.message('sök', name: 'search');

  String get send => Intl.message('skicka', name: 'send');

  String get spanish => Intl.message('spanska', name: 'spanish');

  String get swedish => Intl.message('svenska', name: 'swedish');

  String get type_here_to_search =>
      Intl.message('Skriv in här för att söka...', name: 'type_here_to_search');

  String get word_list => Intl.message('ordlista', name: 'word_list');

  String document(int howMany) => Intl.plural(howMany,
      one: 'dokument', other: 'dokument', name: 'document', args: [howMany]);

  String word(int howMany) => Intl.plural(howMany,
      one: 'ord', other: 'ord', name: 'word', args: [howMany]);

  String get back => Intl.message('gå bakåt', name: 'back');
  String get go_back_to_wordlist =>
      Intl.message('gå tillbaka till ordlistan', name: 'go_back_to_wordlist');

  String get check_your_answers =>
      Intl.message('facit', name: 'check_your_answers');
  String get correct => Intl.message('Sant', name: 'correct');
  String get not_correct => Intl.message('Falskt', name: 'not_correct');
  String get time => Intl.message('Tid', name: 'time');
  String get length => Intl.message('Längd', name: 'length');
  String get article => Intl.message('Artikel', name: 'article');
  String get reading => Intl.message('läsning', name: 'reading');
  String get video => Intl.message('Film', name: 'video');
  String get quiz => Intl.message('Quiz', name: 'quiz');
  String get continue_label => Intl.message('fortsätt', name: 'continue_label');
  String get cancel_label => Intl.message('avbryt', name: 'cancel_label');
  String get financial_support => Intl.message(
      'Finansiellt stöd av EU LIFE Program: HG-RID-LIFE LIFE15 ENV/SE/000465',
      name: 'financial_support');

  String get hg_rid_life => Intl.message('HG-Rid LIFE', name: 'hg_rid_life');

  String get mercury => Intl.message('kvicksilver', name: 'mercury');

  String get amalgam => Intl.message('amalgam', name: 'amalgam');

  String get dental_care => Intl.message('tandvården', name: 'dental_care');

  String get praktikertjanst =>
      Intl.message('Praktikertjänst', name: 'praktikertjanst');

  String get sweden => Intl.message('sweden', name: 'sweden');

  String get recycling => Intl.message('Recycling', name: 'recycling');

  String get ivl => Intl.message('IVL', name: 'ivl');

  String get amalgam_separator =>
      Intl.message('Amalgamavskiljare', name: 'amalgam_separator');

  String get environment => Intl.message('miljö', name: 'environment');

  String get green_dental_care =>
      Intl.message('grön tandvård', name: 'green_dental_care');

  String get separator => Intl.message('Avskiljare', name: 'separator');

  String get title => Intl.message(
      'Hg-rid LIFE | Minimera kvicksilverutsläpp i miljön från tandvården',
      name: 'title');
  String get description_sentence_1 =>
      Intl.message('Hur påverkar kvicksilver naturen?',
          name: 'description_sentence_1');
  String get description_sentence_2 =>
      Intl.message('Vilka regler gäller för tandvården?',
          name: 'description_sentence_2');
  String get description_sentence_3 =>
      Intl.message('Hur kan tandvården minimera kvicksilverutsläpp i miljön?',
          name: 'description_sentence_3');
  String get main_header_description => Intl.message(
      'Det här är ett öppet och kostnadsfritt utbildningsmaterial om hur tandvården kan minimera utsläppen från dentalt amalgam. Här finns korta filmer, interaktiva artiklar och dokument.',
      name: 'main_header_description');
}
