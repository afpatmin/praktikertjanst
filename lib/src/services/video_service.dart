import 'dart:async';
import 'package:angular/angular.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../models/video.dart';
import 'resource_service.dart';

@Injectable()
class VideoService extends ResourceService<Video> {
  @override
  Future<Map<String, Video>> fetchAll() async {
    await Future.delayed(const Duration(milliseconds: 1));

    return data = {
      'Så upplevde vi saneringen': Video()
        ..icon = 'video'
        ..id = 'Så upplevde vi saneringen'
        ..img_url = 'pics/this_is_how_we_experienced_redevelopment.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Så upplevde vi saneringen'
          ..url = 'sanering'
          ..description =
              'Susann Balzar reflekterar kring saneringen på mottagningen.'
          ..estimated_time_for_completion = '1 min 12 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'Our experience of decontamination'
          ..url = 'decontamination'
          ..description =
              'Susann Balzar reflects on decontamination of her practice.'
          ..estimated_time_for_completion = '1 min 12 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Notre expérience en décontamination'
          ..url = 'decontamination'
          ..description =
              'Susann Balzar parle de la décontamination de son cabinet.'
          ..estimated_time_for_completion = '1 min 12 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Nuestra experiencia en el proceso de descontaminación'
          ..url = 'descontaminación'
          ..description =
              'Susann Balzar aporta su punto de vista sobre el procedimiento de descontaminación de su clínica.'
          ..estimated_time_for_completion = '1 min 12 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Unsere Erfahrungen mit Dekontaminationen'
          ..url = 'dekontamination'
          ..description =
              'Susann Balzar berichtet über die Dekontaminationenin ihrer Praxis.'
          ..estimated_time_for_completion = '1 Min. 12 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299921184?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735248?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933680?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326586755?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477291?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Så minimerar vi utsläppen': Video()
        ..icon = 'video'
        ..id = 'Så minimerar vi utsläppen'
        ..img_url = 'pics/leaving_amalgam.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Så minimerar vi utsläppen'
          ..url = 'sa-minimerar-vi-utsläppen'
          ..description =
              'Claes Karlsson berättar om skötselarbetet på mottagningen.'
          ..estimated_time_for_completion = '1 min 12 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'How to minimise emissions'
          ..url = 'how-to-minimise-emissions'
          ..description =
              'Claes Karlsson tells us about maintenance in the practice.'
          ..estimated_time_for_completion = '1 min 12 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Comment réduire les émissions'
          ..url = 'comment-reduire-les-emissions'
          ..description =
              'Claes Karlsson nous parle de la maintenance dans les cabinets.'
          ..estimated_time_for_completion = '1 min 12 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Cómo minimizar las emisiones'
          ..url = 'como-minimizar-emisiones'
          ..description =
              'Claes Karlsson nos habla sobre el mantenimiento de la clínica.'
          ..estimated_time_for_completion = '1 min 12 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'So werden Emissionen minimiert'
          ..url = 'so-werden-emissionen-minimiert'
          ..description =
              'Claes Karlsson berichtet von der Wartung in der Praxis.'
          ..estimated_time_for_completion = '1 Min. 12 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299920998?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735143?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321934098?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326587277?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477913?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Så går en installation till': Video()
        ..icon = 'video'
        ..id = 'Så går en installation till'
        ..img_url = 'pics/this_is_how_installation_is_done.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Så går en installation till'
          ..url = 'installation'
          ..description =
              'Anders och Patrik berättar om installationen av amalgamavskiljare och sugsystem.'
          ..estimated_time_for_completion = '1 min 35 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'Installation'
          ..url = 'installation'
          ..description =
              'Anders and Patrik explain installation of amalgam separators and suction system.'
          ..estimated_time_for_completion = '1 min 35 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Installation'
          ..url = 'installation'
          ..description =
              'Anders et Patrick expliquent l’installation des séparateurs d’amalgames et les systèmes d’aspiration.'
          ..estimated_time_for_completion = '1 min 35 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Instalación'
          ..url = 'instalacion'
          ..description =
              'Anders y Patric explican cómo es el procedimiento de la instalación de sistemas de separación de amalgama y de succión.'
          ..estimated_time_for_completion = '1 min 35 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Installation'
          ..url = 'installation'
          ..description =
              'Anders und Patrik erklären die Installation von Amalgamabscheidern und Sauganlagen.'
          ..estimated_time_for_completion = '1 Min. 35 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299920834?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735184?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933585?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326586600?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477805?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Att lämna amalgam bakom sig': Video()
        ..icon = 'video'
        ..id = 'Att lämna amalgam bakom sig'
        ..img_url = 'pics/leaving_amalgam.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Att lämna amalgam bakom sig'
          ..url = 'lamna-amalgam'
          ..description =
              'Claes Karlsson ger sitt perspektiv på hur branschen hanterade amalgamförbudet som trädde i kraft 2009 i Sverige.'
          ..estimated_time_for_completion = '1 min 1 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'Phasing out the use of dental amalgam'
          ..url = 'phasing-out-the-use-of-dental-amalgam'
          ..description =
              'Claes Karlsson about how the dental care handled the ban of amalgam that came into force in Sweden in 2009.'
          ..estimated_time_for_completion = '1 min 1 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Arrêter l’utilisation d’amalgames'
          ..url = 'arreter-amalgames'
          ..description =
              'Claes Karlsson donne son avis sur la manière dont le secteur a abordé l’interdiction des amalgames entrée en vigueur en Suède en 2009.'
          ..estimated_time_for_completion = '1 min 1 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Dejar de usar la amalgama'
          ..url = 'dejar-de-usar-la-amalgama'
          ..description =
              'Claes Karlsson aporta su punto de vista sobre cómo la industria está abordando la prohibición de la amalgama que entró en vigor en Suecia en el año 2009.'
          ..estimated_time_for_completion = '1 min 1 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Verwendung von Amalgam einstellen'
          ..url = 'schluss-mit-amalgam'
          ..description =
              'Claes Karlsson schildert seine Ansichten über den Umgang der Dental Industrie mit dem Amalgamverbot in Schweden im Jahr 2009.'
          ..estimated_time_for_completion = '1 Min. 1 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299908976?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735704?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321934044?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326586552?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477589?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Rutiner vid patientbehandling': Video()
        ..icon = 'video'
        ..id = 'Rutiner vid patientbehandling'
        ..img_url = 'pics/routines_during_patient_treatment.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Rutiner vid patientbehandling'
          ..url = 'rutiner-vid-patientbehandling'
          ..description =
              'Så ser rutinerna kring amalgamhantering vid patientbesök ut.'
          ..estimated_time_for_completion = '42 sek')
        ..phrases['en'] = (Phrases()
          ..name =
              'Routines for handling of amalgam waste during and after patient treatment'
          ..url = 'patient-treatment-routines'
          ..description =
              'A look at the routines for amalgam handling during a patient’s appointment.'
          ..estimated_time_for_completion = '42 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Routines de traitement des patients'
          ..url = 'routines-traitement-patients'
          ..description =
              'Présentation des routines pour la gestion des amalgames lors des rendez-vous des patients.'
          ..estimated_time_for_completion = '42 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Rutinas de tratamiento para los pacientes'
          ..url = 'rutinas-de-tratamiento-para-los-pacientes'
          ..description =
              'Un vistazo a las rutinas de gestión de la amalgama durante las citas de los pacientes.'
          ..estimated_time_for_completion = '42 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Routinen bei der Behandlung von Patienten'
          ..url = 'routinen-bei-der-behandlung-von-patienten'
          ..description =
              'Ein Blick auf die Routinen im Umgang mit Amalgam bei einem Patiententermin.'
          ..estimated_time_for_completion = '42 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910154?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735277?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933929?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326587063?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477261?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Skötsel av amalgamavskiljare': Video()
        ..icon = 'video'
        ..id = 'Skötsel av amalgamavskiljare'
        ..img_url = 'pics/care_of_amalgam_separators_thumb.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Skötsel av amalgamavskiljare'
          ..url = 'skotsel-av-amalgamavskiljare'
          ..description =
              'Så ser rutinerna för skötsel av amalgamavskiljare och sugsystem ut.'
          ..estimated_time_for_completion = '1 min 10 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'Amalgam separator maintenance'
          ..url = 'amalgam-separator-maintenance'
          ..description =
              'A look at the routines for maintenance of amalgam separators and suction systems.'
          ..estimated_time_for_completion = '1 min 10 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Maintenance du séparateur d’amalgames'
          ..url = 'maintenance-separateur-amalgames'
          ..description =
              'Présentation des routines de maintenance des séparateurs d’amalgames et des systèmes d’aspiration.'
          ..estimated_time_for_completion = '1 min 10 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Mantenimiento de los separadores de amalgama'
          ..url = 'mantenimiento-de-los-separadores-de-amalgama'
          ..description =
              'Un análisis de las rutinas de mantenimiento de los separadores de amalgama y los sistemas de succión.'
          ..estimated_time_for_completion = '1 min 10 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Wartung von Amalgamabscheidern'
          ..url = 'wartung-von-amalgamabscheidern'
          ..description =
              'Ein Blick auf die Routinen für die Wartung vonAmalgamabscheidern und Sauganlagen.'
          ..estimated_time_for_completion = '1 Min. 10 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910768?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735220?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933639?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326586706?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477330?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Att tänka på vid installation': Video()
        ..icon = 'video'
        ..id = 'Att tänka på vid installation'
        ..img_url = 'pics/important_points_during_installation.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Att tänka på vid installation'
          ..url = 'att-tanka-pa-vid-installation'
          ..description =
              'Att tänka på kring installation av amalgamavskiljare och sugsystem.'
          ..estimated_time_for_completion = '1 min 16 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'What to bear in mind for installation'
          ..url = 'what-to-bear-in-mind-for-installation'
          ..description =
              'Things to bear in mind for installation of amalgam separators and suction systems.'
          ..estimated_time_for_completion = '1 min 16 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'À ne pas oublier pendant l’installation'
          ..url = 'ne-pas-oublier-pendant-installation'
          ..description =
              'À ne pas oublier pour l’installation des séparateurs d’amalgames et les systèmes d’aspiration.'
          ..estimated_time_for_completion = '1 min 16 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Qué es necesario tener en cuenta para la instalación'
          ..url = 'qué-es-necesario-tener-en-cuenta-para-la-instalación'
          ..description =
              'Consejos para la instalación de sistemas de separación de amalgama y de succión.'
          ..estimated_time_for_completion = '1 min 16 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Was bei der Installation zu beachten ist'
          ..url = 'was-bei-der-installation-zu-beachten-ist'
          ..description =
              'Was alles bei der Installation von Amalgamabscheidern und Absauganlagen zu beachten ist.'
          ..estimated_time_for_completion = '1 Min. 16 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909211?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735608?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933839?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326586898?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477396?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Byte av amalgamavskiljare': Video()
        ..icon = 'video'
        ..id = 'Byte av amalgamavskiljare'
        ..img_url = 'pics/change_of_amalgam_separators.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Byte av amalgamavskiljare'
          ..url = 'byte-av-amalgamavskiljare'
          ..description =
              'Så byts amalgamavskiljare i våta och torra sugsystem.'
          ..estimated_time_for_completion = '1 min 19 sec')
        ..phrases['en'] = (Phrases()
          ..name = 'Replacing amalgam separators'
          ..url = 'replacing-amalgam separators'
          ..description =
              'How to replace amalgam separators in wet and dry suction systems.'
          ..estimated_time_for_completion = '1 min 19 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Remplacement des séparateurs d’amalgames'
          ..url = 'ne-pas-oublier-pendant-installation'
          ..description =
              'À ne pas oublier pour l’installation des séparateurs d’amalgames et les systèmes d’aspiration.'
          ..estimated_time_for_completion = '1 min 16 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Reemplazo de separadores de amalgama'
          ..url = 'reemplazo-de-separadores-de-amalgama'
          ..description =
              'Cómo reemplazar los separadores de amalgama en sistemas de aspiración húmedos y secos'
          ..estimated_time_for_completion = '1 min 1 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Austausch von Amalgamabscheidern'
          ..url = 'austausch-von-amalgamabscheidern'
          ..description =
              'So führt ein Servicepartnereine Funktionsprüfung von Amalgamabscheidern durch'
          ..estimated_time_for_completion = '1 Min. 19 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909564?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735317?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933904?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326587002?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477214?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Funktionskontroll': Video()
        ..icon = 'video'
        ..id = 'Funktionskontroll'
        ..img_url = 'pics/functions_check.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Funktionskontroll'
          ..url = 'funktionskontroll'
          ..description =
              'Så utför miljöserviceföretaget en funktionskontroll av amalgamavskiljare.'
          ..estimated_time_for_completion = '42 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'Function check'
          ..url = 'function-check'
          ..description =
              'How an environmental maintenance service performs function checks of amalgam separators.'
          ..estimated_time_for_completion = '42 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Vérification des fonctions'
          ..url = 'verification-fonctions'
          ..description =
              'Comment un service de maintenance environnementale réalise les vérifications des fonctions des séparateurs d’amalgames.'
          ..estimated_time_for_completion = '42 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Verificación de funciones'
          ..url = 'verificacion-de-funciones'
          ..description =
              'Cómo un equipo de mantenimiento ambiental lleva a cabo la verificación de funciones con respecto a los separadores de amalgama.'
          ..estimated_time_for_completion = '42 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Funktionsprüfung'
          ..url = 'funktionsprufung'
          ..description =
              'So führt ein Umweltwartungsdienst eine Funktionsprüfung von Amalgamabscheidern durch.'
          ..estimated_time_for_completion = '42 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909870?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735797?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933986?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326587219?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477772?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Tömning av vattenlås': Video()
        ..icon = 'video'
        ..id = 'Tömning av vattenlås'
        ..img_url = 'pics/drainage_of_water_trap.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Tömning av vattenlås'
          ..url = 'tomning-av-vattenlas'
          ..description =
              'Så rengör och tömmer miljöserviceföretaget vattenlås.'
          ..estimated_time_for_completion = '23 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'Emptying the water lock'
          ..url = 'emptying-the-water-lock'
          ..description =
              'How an environmental maintenance service empties and cleans a water lock.'
          ..estimated_time_for_completion = '23 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Vidange du clapet anti-retour'
          ..url = 'vidange-clapet-anti-retour'
          ..description =
              'Comment un service de maintenance environnementale vidange et nettoie un clapet anti-retour.'
          ..estimated_time_for_completion = '23 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Vaciado de la esclusa de agua'
          ..url = 'vaciado-de-la-esclusa-de-agua'
          ..description =
              'Cómo un equipo de mantenimiento ambiental puede vaciar y limpiar una esclusa de agua.'
          ..estimated_time_for_completion = '23 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Leeren des Siphons'
          ..url = 'leeren-des-siphons'
          ..description = 'Wie ein Servicepartnereinen Siphonleert und reinigt.'
          ..estimated_time_for_completion = '23 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299921354?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735770?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321934017?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326587168?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477885?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Slutförvaring': Video()
        ..icon = 'video'
        ..id = 'Slutförvaring'
        ..img_url = 'pics/storage.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Slutförvaring '
          ..url = 'slutforvaring'
          ..description = 'Så tas amalgamavfallet om hand.'
          ..estimated_time_for_completion = '52 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'Terminal storage'
          ..url = 'terminal-storage'
          ..description = 'Final disposal of mercury waste.'
          ..estimated_time_for_completion = '52 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Stockage final'
          ..url = 'stockage-final'
          ..description = 'Gestion des déchets d’amalgames.'
          ..estimated_time_for_completion = '52 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Terminal de almacenamiento '
          ..url = 'terminal de almacenamiento'
          ..description = 'Gestionar los residuos de amalgama.'
          ..estimated_time_for_completion = '52 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Entsorgung'
          ..url = 'entsorgung'
          ..description = 'Umgang mit Amalgamabfall.'
          ..estimated_time_for_completion = '52 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299911163?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735347?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933955?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326587107?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477736?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Sanering': Video()
        ..icon = 'video'
        ..id = 'Sanering'
        ..img_url = 'pics/remidiation.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Sanering '
          ..url = 'sanering'
          ..description = 'Så genomförs en sanering.'
          ..estimated_time_for_completion = '1 min 13 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'Decontamination of pipe system'
          ..url = 'decontamination'
          ..description =
              'Decontamination of amalgam and mercury in the pipe system of dental clinics.'
          ..estimated_time_for_completion = '1 min 13 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Décontamination'
          ..url = 'decontamination'
          ..description = 'Réalisation de la décontamination.'
          ..estimated_time_for_completion = '1 min 13 sec')
        ..phrases['es'] = (Phrases()
          ..name = 'Descontaminación'
          ..url = 'descontaminacion'
          ..description = 'Puesta en práctica de la descontaminación.'
          ..estimated_time_for_completion = '1 min 13 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Dekontamination'
          ..url = 'dekontamination'
          ..description = 'Dekontamination durchführen.'
          ..estimated_time_for_completion = '1 Min. 13 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910425?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735739?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321934135?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326586443?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477666?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Varför är skötseln så viktig?': Video()
        ..icon = 'video'
        ..id = 'Varför är skötseln så viktig? '
        ..img_url = 'pics/why_is_care_so_important.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Varför är skötseln så viktig?'
          ..url = 'varfor-ar-skotseln-sa-viktig'
          ..description =
              'Servicetekniker understryker vikten av god skötsel av amalgamavskiljare och sugsystem.'
          ..estimated_time_for_completion = '49 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'Why is maintenance so important?'
          ..url = 'why-is-maintenance-so-important'
          ..description =
              'A service engineer explains the importance of good maintenance for amalgam separators and suction systems.'
          ..estimated_time_for_completion = '49 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Pourquoi la maintenance est-elle si importante ?'
          ..url = 'pourquoi-maintenance-si-importante'
          ..description =
              'Un ingénieur de service explique l’importance de la bonne maintenance des séparateurs d’amalgames et des systèmes d’aspiration.'
          ..estimated_time_for_completion = '49 sec')
        ..phrases['es'] = (Phrases()
          ..name = '¿Por qué es tan importante el mantenimiento?'
          ..url = 'por-que-es-tan-importante-el-mantenimiento'
          ..description =
              'Un ingeniero de servicio explica la importancia de llevar a cabo un mantenimiento correcto para los separadores de amalgama y los sistemas de succión.'
          ..estimated_time_for_completion = '49 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Warum ist Wartung so wichtig?'
          ..url = 'warum-ist-wartung-so-wichtig'
          ..description =
              'Ein Servicetechniker erklärt die Bedeutung guter Wartung für Amalgamabscheider und Sauganlagen'
          ..estimated_time_for_completion = '49 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299908734?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735678?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933777?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326586809?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477358?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Vad är kvicksilver?': Video()
        ..icon = 'video'
        ..id = 'Vad är kvicksilver?'
        ..img_url = 'pics/what_is_mercury.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Vad är kvicksilver?'
          ..url = 'vad-ar-kvicksilver'
          ..description = 'Michelle Nerentorp berättar om vad kvicksilver är.'
          ..estimated_time_for_completion = '29 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'What is mercury?'
          ..url = 'what-is-mercury'
          ..description =
              'Michelle Nerentorp tells us what the element of mercury is.'
          ..estimated_time_for_completion = '29 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Qu’est-ce que le mercure ?'
          ..url = 'qu-est-ce-que-mercure'
          ..description =
              'Michelle Nerentorp nous explique ce qu’est l’élément du mercure.'
          ..estimated_time_for_completion = '29 sec')
        ..phrases['es'] = (Phrases()
          ..name = '¿Qué es el mercurio?'
          ..url = 'que-es-el-mercurio'
          ..description =
              'Michelle Nerentorp nos explica qué tipo de elemento es el mercurio.'
          ..estimated_time_for_completion = '29 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Was ist Quecksilber?'
          ..url = 'was-ist-quecksilber'
          ..description =
              'Michelle Nerentorp erklärt uns das Element Quecksilber.'
          ..estimated_time_for_completion = '29 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901545?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735382?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933808?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326586851?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477452?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Var finns kvicksilver?': Video()
        ..icon = 'video'
        ..id = 'Var finns kvicksilver?'
        ..img_url = 'pics/where_is_mercury.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Var finns kvicksilver?'
          ..url = 'var-finns-kvicksilver'
          ..description =
              'Michelle Nerentorp berättar om var kvicksilver finns i naturen och hur människan har bidragit till att sprida det.'
          ..estimated_time_for_completion = '1 min 10 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'Where is mercury found?'
          ..url = 'where-is-mercury-found'
          ..description =
              'Michelle Nerentorp talks about where mercury is found in nature and how human activities have increased emissions.'
          ..estimated_time_for_completion = '1 min 10 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Où se trouve le mercure ?'
          ..url = 'ou-se-trouve-mercure'
          ..description =
              'Michelle Nerentorp explique où se trouve le mercure dans la nature, et comment les hommes ont favorisé sa propagation.'
          ..estimated_time_for_completion = '1 min 10 sec')
        ..phrases['es'] = (Phrases()
          ..name = '¿Dónde se encuentra el mercurio?'
          ..url = 'donde-se-encuentra-el-mercurio'
          ..description =
              'Michelle Nerentorp habla sobre los lugares en los que se puede encontrar mercurio en la naturaleza y de qué forma el humano ha contribuido a su propagación.'
          ..estimated_time_for_completion = '1 min 10 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Wo ist Quecksilber zu finden?'
          ..url = 'wo-ist-quecksilber-zu-finden'
          ..description =
              'Michelle Nerentorp spricht darüber, wo Quecksilber in der Natur zu finden ist und wie der Mensch zu seiner Verbreitung beigetragen hat.'
          ..estimated_time_for_completion = '1 Min. 10 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901700?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735641?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933728?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326586501?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477632?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Vilken roll har tandvården?': Video()
        ..icon = 'video'
        ..id = 'Vilken roll har tandvården?'
        ..img_url = 'pics/what_is_the_role_of_dental_care_proffessionals.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Vilken roll har tandvården?'
          ..url = 'vilken-roll-har-tandvarden'
          ..description =
              'Michelle Nerentorp berättar om tandvårdens ansvar för problemet med att kvicksilver kommer ut i naturen.'
          ..estimated_time_for_completion = '43 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'What is the role of the dental industry?'
          ..url = 'what-is-the-role-of-the-dental-industry'
          ..description =
              'Michelle Nerentorp about the dental clinics´ responsibility minimising emissions of mercury.'
          ..estimated_time_for_completion = '43 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'Quel est le rôle du secteur dentaire ?'
          ..url = 'quel-est-le-role-du-secteur-dentaire'
          ..description =
              'Michelle Nerentorp explique la responsabilité du secteur dentaire dans le problème de libération du mercure dans la nature.'
          ..estimated_time_for_completion = '43 sec')
        ..phrases['es'] = (Phrases()
          ..name = '¿Qué papel ejerce la industria dental?'
          ..url = 'que-papel-ejerce-la-industria-dental'
          ..description =
              'Michelle Nerentorp habla sobre la responsabilidad que posee la industria dental con respecto al problema que supone liberar mercurio en la naturaleza.'
          ..estimated_time_for_completion = '43 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Welche Rolle spielt die Dentalindustrie'
          ..url = 'welche-rolle-spielt-die-dentalindustrie'
          ..description =
              'Michelle Nerentorp spricht über die Verantwortung der Dentalindustrie bei der Freisetzung von Quecksilber in der Natur.'
          ..estimated_time_for_completion = '43 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299902118?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735594?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933874?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326586953?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477540?color=00acd0&byline=0&portrait=0&texttrack=de',
      'Hur påverkas vi av kvicksilver?': Video()
        ..icon = 'video'
        ..id = 'Hur påverkas vi av kvicksilver?'
        ..img_url = 'pics/how_are_we_affected_by_mercury.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Hur påverkas vi av kvicksilver?'
          ..url = 'hur-paverkas-vi-av-kvicksilver'
          ..description =
              'Michelle Nerentorp berättar om hur människan påverkas av kvicksilver.'
          ..estimated_time_for_completion = '1 min 6 sek')
        ..phrases['en'] = (Phrases()
          ..name = 'How are we affected by mercury?'
          ..url = 'how-are-we-affected-by-mercury'
          ..description =
              'Michelle Nerentorp explains how humans are affected by mercury.'
          ..estimated_time_for_completion = '1 min 6 sec')
        ..phrases['fr'] = (Phrases()
          ..name = 'En quoi le mercure a-t-il un impact sur nous ?'
          ..url = 'en-quoi-mercure-impact-sur-nous'
          ..description =
              'Michelle Nerentorp explique en quoi les humains sont affectés par le mercure.'
          ..estimated_time_for_completion = '1 min 6 sec')
        ..phrases['es'] = (Phrases()
          ..name = '¿Cómo nos afecta el mercurio?'
          ..url = 'como-nos-afecta-el-mercurio'
          ..description =
              'Michelle Nerentorp explica cómo el mercurio afecta a los seres humanos.'
          ..estimated_time_for_completion = '1 min 6 seg')
        ..phrases['de'] = (Phrases()
          ..name = 'Inwieweit betrifft uns Quecksilber?'
          ..url = 'inwieweit-betrifft-uns-quecksilber'
          ..description =
              'Michelle Nerentorp erklärt die Wirkung von Quecksilber auf den Menschen.'
          ..estimated_time_for_completion = '1 Min. 6 Sek.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901270?color=00acd0&byline=0&portrait=0&texttrack=sv'
        ..url['en'] =
            'https://player.vimeo.com/video/314735088?color=00acd0&byline=0&portrait=0&texttrack=en'
        ..url['fr'] =
            'https://player.vimeo.com/video/321933545?color=00acd0&byline=0&portrait=0&texttrack=fr'
        ..url['es'] =
            'https://player.vimeo.com/video/326587344?color=00acd0&byline=0&portrait=0&texttrack=es'
        ..url['de'] =
            'https://player.vimeo.com/video/321477486?color=00acd0&byline=0&portrait=0&texttrack=de'
    };
  }
}
