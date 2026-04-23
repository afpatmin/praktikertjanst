import 'dart:async';

import 'package:angular/angular.dart';

import '../models/course_room.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../services/resource_service.dart';

@Injectable()
class CourseRoomService extends ResourceService<CourseRoom> {
  @override
  Future<Map<String, CourseRoom>> fetchAll() async {
    await Future.delayed(const Duration(milliseconds: 1));

    return data = {
      'kursrum-for-nyfikna': CourseRoom()
        ..backgroud_image = 'pics/courseroom_for_curious.jpg'
        ..document_ids = [
          'Affisch om tappade amalgamplomber',
          'Checklista varje arbetsdag och vecka',
          'Fördelning av kvicksilver avfall'
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-nyfikna'
        ..img_url = 'pics/courseroom_for_curious.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'För dig som bara är nyfiken'
          ..description = 'Innehåll för dig som bara är nyfiken.'
          ..url = 'kursrum-for-nyfikna')
        ..phrases['en'] = (Phrases()
          ..name = 'If you’re just curious'
          ..description = 'Content for you who is curious'
          ..url = 'training-room-for-the-curious')
        ..phrases['fr'] = (Phrases()
          ..name = 'Si vous êtes juste curieux'
          ..description = 'Contenu si vous êtes juste curieux.'
          ..url = 'salle-de-formation-pour-les-curieux')
        ..phrases['es'] = (Phrases()
          ..name = 'Para curiosos'
          ..description = 'Contenido para curiosos.'
          ..url = 'sala-de-formacion-para-los-mas-curiosos')
        ..phrases['de'] = (Phrases()
          ..name = 'Wenn Sie Interesse haben'
          ..description = 'Inhalte für Interessierte.'
          ..url = 'schulungsraum-fur-interessenten')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'Quiz för allmänheten'
        ]
        ..type = ResourceType.courseRoom
        ..video_ids = [
          'Att lämna amalgam bakom sig',
          'Vad är kvicksilver?',
          'Var finns kvicksilver?',
          'Vilken roll har tandvården?',
          'Hur påverkas vi av kvicksilver?'
        ],
      'kursrum-for-tandvardsteam': CourseRoom()
        ..backgroud_image = 'pics/responsibility.jpg'
        ..document_ids = [
          'Affisch om tappade amalgamplomber',
          'Checklista varje arbetsdag och vecka',
          'Fördelning av kvicksilver avfall'
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-tandvardsteam'
        ..img_url = 'pics/responsibility.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'För dig på tandvårdsmottagning'
          ..description = 'Innehåll för dig som jobbar i tandvårdsteam.'
          ..url = 'kursrum-for-tandvardsteam')
        ..phrases['en'] = (Phrases()
          ..name = 'For dental practices'
          ..description = 'Content for dental care team personnel'
          ..url = 'training-room-for-the-dental-care-teams')
        ..phrases['fr'] = (Phrases()
          ..name = 'Pour les cabinets dentaires'
          ..description = 'Contenu pour le personnel de soins dentaires.'
          ..url = 'salle-de-formation-pour-equipe-soins-dentaires')
        ..phrases['es'] = (Phrases()
          ..name = 'Para clínicas dentales'
          ..description =
              'Contenido para el personal del equipo de cuidado dental.'
          ..url = 'sala-de-formacion-para-equipos-de-cuidado-dental')
        ..phrases['de'] = (Phrases()
          ..name = 'Für Zahnarztpraxen'
          ..description = 'Inhalte für Personal in der Zahnarztpraxis.'
          ..url = 'schulungsraum-fur-das-praxisteam')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'Tandvårdsteamets ansvar',
          'Quiz för dig i tandvårdsteam'
        ]
        ..video_ids = [
          'Rutiner vid patientbehandling',
          'Skötsel av amalgamavskiljare',
          'Varför är skötseln så viktig?',
          'Att lämna amalgam bakom sig',
          'Vad är kvicksilver?',
          'Var finns kvicksilver?',
          'Vilken roll har tandvården?',
          'Hur påverkas vi av kvicksilver?'
        ],
      'kursrum-for-servicetekniker': CourseRoom()
        ..backgroud_image = 'pics/dentist_responsibility.jpg'
        ..document_ids = [
          'Affisch om tappade amalgamplomber',
          'Checklista varje arbetsdag och vecka',
          'Fördelning av kvicksilver avfall'
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-servicetekniker'
        ..img_url = 'pics/dentist_responsibility.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'För dig som servicetekniker'
          ..description = 'Innehåll för dig som jobbar som servicetekniker.'
          ..url = 'kursrum-for-servicetekniker')
        ..phrases['en'] = (Phrases()
          ..name = 'For service technicians'
          ..description = 'Content for service technicians.'
          ..url = 'training-room-for-service-technicians')
        ..phrases['fr'] = (Phrases()
          ..name = 'Pour les techniciens de service'
          ..description = 'Contenu pour les techniciens de service.'
          ..url = 'salle-de-formation-pour-techniciens-de-service')
        ..phrases['es'] = (Phrases()
          ..name = 'Para técnicos de servicio'
          ..description = 'Contenido para técnicos de servicio.'
          ..url = 'sala-de-formacion-para-tecnicos-de-servicio')
        ..phrases['de'] = (Phrases()
          ..name = 'Für Servicetechniker'
          ..description = 'Inhalte für Servicetechniker.'
          ..url = 'schulungsraum-fur-servicetechniker')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'serviceteknikerns ansvar',
          'Quiz för dig som är servicetekniker'
        ]
        ..type = ResourceType.courseRoom
        ..video_ids = [
          'Att tänka på vid installation',
          'Att lämna amalgam bakom sig',
          'Vad är kvicksilver?',
          'Var finns kvicksilver?',
          'Vilken roll har tandvården?',
          'Hur påverkas vi av kvicksilver?'
        ],
      'kursrum-for-miljoserviceforetag': CourseRoom()
        ..backgroud_image = 'pics/environmental_service_companies.jpg'
        ..document_ids = [
          'Affisch om tappade amalgamplomber',
          'Checklista varje arbetsdag och vecka',
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-miljoserviceforetag'
        ..img_url = 'pics/environmental_service_companies.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'För dig på miljöserviceföretag'
          ..description = 'Innehåll för dig som jobbar på miljöserviceföretag.'
          ..url = 'kursrum-for-miljoserviceforetag')
        ..phrases['en'] = (Phrases()
          ..name = 'For environmental maintenance service personnel'
          ..description =
              'Content for environmental maintenance service personnel'
          ..url =
              'training-room-for-environmental-maintenance-service-personnel')
        ..phrases['fr'] = (Phrases()
          ..name =
              'Pour le personnel de service de maintenance environnementale'
          ..description =
              'Contenu pour le personnel de service de maintenance environnementale.'
          ..url =
              'salle-de-formation-pour-personnel-du-service-de-maintenance-environnementale')
        ..phrases['es'] = (Phrases()
          ..name = 'Para el personal de los equipos de mantenimiento ambiental'
          ..description =
              'Contenido para el personal de los equipos de mantenimiento ambiental.'
          ..url = 'sala-de-formacion-para-personal-de-mantenimiento-ambiental')
        ..phrases['de'] = (Phrases()
          ..name = 'Für Servicemitarbeiter in des Entsorgungsunternehmens'
          ..description =
              'Für Servicemitarbeiter in des Entsorgungsunternehmens.'
          ..url = 'schulungsraum-fur-entsorgungsfachberater')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'Instruktioner för miljöserviceföretag'
        ]
        ..type = ResourceType.courseRoom
        ..video_ids = [
          'Byte av amalgamavskiljare',
          'Funktionskontroll',
          'Tömning av vattenlås',
          'Sanering',
          'Slutförvaring',
          'Att lämna amalgam bakom sig',
          'Vad är kvicksilver?',
          'Var finns kvicksilver?',
          'Vilken roll har tandvården?',
          'Hur påverkas vi av kvicksilver?'
        ]
    };
  }
}
