import 'dart:async';
import 'package:angular/angular.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../models/rise.dart';
import '../services/resource_service.dart';

@Injectable()
class RiseService extends ResourceService<Rise> {
  @override
  Future<Map<String, Rise>> fetchAll() async {
    await Future.delayed(const Duration(milliseconds: 1));

    return data = {
      'Kvicksilver i naturen': Rise()
        ..icon = 'article'
        ..id = 'Kvicksilver i naturen'
        ..img_url = 'pics/mercury_in_nature.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Kvicksilver i naturen'
          ..description =
              'Artikel om vad kvicksilver är och hur det påverkar naturen.'
          ..url = 'kvicksilver-i-naturen'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'Mercury in nature'
          ..description =
              'Article on what mercury is and how it affects nature.'
          ..url = 'mercury-in-nature'
          ..estimated_time_for_completion = 'Approx. 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Le mercure dans la nature'
          ..description =
              'Article présentant le mercure et expliquant en quoi il affecte la nature.'
          ..url = 'mercure-dans-nature'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'El mercurio en la naturaleza'
          ..description =
              'Artículo sobre qué es el mercurio y cómo afecta a la naturaleza.'
          ..url = 'el-mercurio-en-la-naturaleza'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Quecksilber in der Natur'
          ..description =
              'Artikel über die Eigenschaften von Quecksilber und wie es sich auf die Natur auswirkt.'
          ..url = 'quecksilber-in-der-natur'
          ..estimated_time_for_completion = '5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/sv/kvicksilver-i-naturen/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/en/mercury-in-nature/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/fr/le-mercure-dans-la-nature/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/es/el-mercurio-en-la-naturaleza/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/de/quecksilber-in-der-natur/content/index.html',
      'Lagar och regler': Rise()
        ..icon = 'article'
        ..id = 'Lagar och regler'
        ..img_url = 'pics/laws_and_regulations.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (Phrases()
          ..name = 'Lagar och regler'
          ..url = 'lagar-och-regler'
          ..description =
              'Artikel om de lagar och regler som styr hanteringen av amalgam.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'Regulations'
          ..url = 'regulations'
          ..description =
              'Swedish regulations on mercury and The EU Mercury Regulation (EU) 2017/852)'
          ..estimated_time_for_completion = 'Approx. 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Lois et règlementations'
          ..url = 'lois-et-reglementations'
          ..description =
              'Article sur les lois et règlementations qui régissent le traitement des amalgames.'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Leyes y reglamentos'
          ..url = 'leyes-y-reglamentos'
          ..description =
              'Artículo sobre las leyes y normas que rigen la manipulación de la amalgama.'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Gesetze und Vorschriften'
          ..url = 'gesetze-und-vorschriften'
          ..description =
              'Artikel über die Gesetze und Vorschriften zum Umgang mit Amalgam.'
          ..estimated_time_for_completion = '5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/sv/lagar-och-regler/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/en/laws-and-regulations/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/fr/loi-et-regles/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/es/leyes-y-reglamentos/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/de/gesetze-und-vorschriften/content/index.html',
      'Vad är vad på mottagningen?': Rise()
        ..icon = 'article'
        ..id = 'Vad är vad på mottagningen?'
        ..img_url = 'pics/what_is_what_on_the_reception.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (Phrases()
          ..name = 'På mottagningen'
          ..url = 'vad-ar-vad-pa-mottagningen'
          ..description = 'Översikt av utrustning på mottagningen.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'At the dental clinic'
          ..url = 'whats-what-in-the-practices'
          ..description = 'Overview of equipment at dental clinics.'
          ..estimated_time_for_completion = 'Approx. 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Au cabinet'
          ..url = 'presentation-equipement-cabinets'
          ..description = 'Présentation de l’équipement dans les cabinets.'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'En la clínica'
          ..url = 'que-es-que-en-la-clinica'
          ..description = 'Resumen de los equipos de la clínica.'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'In der Praxis'
          ..url = 'was-ist-was-in-der-praxis'
          ..description = 'Übersicht über die Geräte in Praxen.'
          ..estimated_time_for_completion = '5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/sv/vad-ar-vad-pa-mottagningen/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/en/overview-over-equipment/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/fr/quest-ce-quil-y-a-dans-une-pratique/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/es/que-es-que-en-las-clinicas-dentales/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/de/was-ist-was-in-der-praxis/content/index.html',
      'Tandvårdsteamets ansvar': Rise()
        ..icon = 'article'
        ..id = 'Tandvårdsteamets ansvar '
        ..img_url = 'pics/responsibility.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (Phrases()
          ..name = 'Tandvårdsteamets ansvar'
          ..url = 'tandvardsteamets-ansvar'
          ..description = 'Här får du instruktioner om tandvårdsteamets ansvar.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'The dental care team’s responsibilities'
          ..url = 'the-dental-care-teams-responsibilities'
          ..description =
              'Instructions on the dental care team’s responsibilities are available here.'
          ..estimated_time_for_completion = 'Approx. 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Les responsabilités de l’équipe de soins dentaires'
          ..url = 'les-responsabilites-equipe-soins-dentaires'
          ..description =
              'Des instructions sur les responsabilités de l’équipe de soins dentaires sont disponibles ici.'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Las responsabilidades del equipo de cuidado dental'
          ..url = 'las-responsabilidades-del-equipo-de-cuidado-dental'
          ..description =
              'Aquí encontrará instrucciones relacionadas con las responsabilidades del equipo de cuidado dental.'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Aufgaben des Praxisteams'
          ..url = 'aufgaben-des-praxisteams'
          ..description =
              'Anleitungen für die Aufgaben des Praxisteamssind hier zu finden.'
          ..estimated_time_for_completion = '5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/sv/tandvardsteamets-ansvar/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/en/dental-care-teams-responsibility/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/fr/responsabilites-du-technicien-dentretien/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/es/las-responsabilidades-del-equipo-de-cuidado-dental/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/de/aufgaben-des-zahnpflegeteams/content/index.html',
      'serviceteknikerns ansvar': Rise()
        ..icon = 'article'
        ..id = 'serviceteknikerns ansvar'
        ..img_url = 'pics/dentist_responsibility.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (Phrases()
          ..name = 'Serviceteknikerns ansvar'
          ..url = 'serviceteknikerns-ansvar'
          ..description =
              'Här får du instruktioner om serviceteknikerns ansvar.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'Instructions for service engineers.'
          ..url = 'instructions-for-service-engineers.'
          ..description =
              'Instructions on the service technician’s responsibilities are available here.'
          ..estimated_time_for_completion = 'Approx. 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Les responsabilités de l’ingénieur de service'
          ..url = 'les-responsabilites-ingenieur-service'
          ..description =
              'Des instructions sur les responsabilités de l’ingénieur de service sont disponibles ici.'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Las responsabilidades del ingeniero de servicio'
          ..url = 'las-responsabilidades-del-ingeniero-de-servicio'
          ..description =
              'Aquí podrá encontrar instrucciones relacionadas con las responsabilidades de los técnicos de servicio.'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Aufgaben des Servicetechnikers'
          ..url = 'aufgaben-des-servicetechnikers'
          ..description =
              'Anleitungen für die Aufgaben des Servicetechnikers sind hier zu finden.'
          ..estimated_time_for_completion = '5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/sv/serviceteknikerns-ansvar/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/en/dental-technicians-responsibility/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/fr/les-responsabilites-de-lequipe-de-soins-dentaires/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/es/las-responsabilidades-del-ingeniero-de-servicio/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/de/die-verantwortlichkeiten-des-servicetechnikers/content/index.html',
      'Instruktioner för miljöserviceföretag': Rise()
        ..icon = 'article'
        ..id = 'Instruktioner för miljöserviceföretag'
        ..img_url = 'pics/environmental_service_companies.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (Phrases()
          ..name = 'Det här gör ett miljöserviceföretag'
          ..url = 'instruktioner-for-miljoserviceforetag'
          ..description =
              'Här får du instruktioner om miljöserviceföretagens ansvar.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'Instructions for an environmental maintenance service.'
          ..url = 'instructions-for-environmental-maintenance-services'
          ..description =
              'Instructions on an environmental maintenance service’s responsibilities are available here.'
          ..estimated_time_for_completion = 'Approx. 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Que fait un service de maintenance environnementale'
          ..url = 'instructions-pour-services-maintenance-environnementale'
          ..description =
              'Des instructions sur les responsabilités d’un service de maintenance environnementale sont disponibles ici.'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Qué hace un equipo de mantenimiento ambiental'
          ..url =
              'instrucciones-para-los-servicios-del-equipo-de-mantenimiento-ambiental'
          ..description =
              'Aquí podrá encontrar instrucciones relacionadas con las responsabilidades del equipo de mantenimiento ambiental.'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Was ein qualifiziertes Entsorgungsunternehmenmacht'
          ..url = 'anleitungen-fur-entsorgungsunternehmen'
          ..description =
              'Anleitungen für die Aufgaben des qualifiziertes Entsorgungsunternehmen.'
          ..estimated_time_for_completion = '5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/sv/instruktioner-for-miljoserviceforetag/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/en/instructions-for-environmental-services-companies/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/fr/ce-que-fait-un-service-dentretien-de-lenvironnement/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/es/que-hace-un-servicio-de-mantenimiento-ambiental/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/de/was-ein-umweltwartungsdienst-macht/content/index.html'
    };
  }
}
