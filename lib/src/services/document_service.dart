import 'dart:async';
import 'package:angular/angular.dart';
import '../models/document.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../services/resource_service.dart';

@Injectable()
class DocumentService extends ResourceService<Document> {
  @override
  Future<Map<String, Document>> fetchAll() async {
    await Future.delayed(const Duration(milliseconds: 1));

    return data = {
      'Affisch om tappade amalgamplomber': Document()
        ..icon = 'pool'
        ..id = 'Affisch om tappade amalgamplomber'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Affisch om tappade amalgamplomber'
          ..description = 'Affisch om tappade amalgamplomber'
          ..url = 'affisch-om-tappade-amalgamplomber')
        ..phrases['en'] = (Phrases()
          ..name = 'Poster about lost amalgam plumber'
          ..description = 'Poster about lost amalgam plumber'
          ..url = 'poster-about-lost-amalgam plumber')
        ..phrases['fr'] = (Phrases()
          ..name = 'Affiche sur les remplissages d’amalgames perdus'
          ..description = 'Affiche sur les remplissages d’amalgames perdus'
          ..url = 'affiche-sur-remplissages-amalgames-perdus')
        ..phrases['es'] = (Phrases()
          ..name = 'Cartel de empastes de amalgama perdidos'
          ..description = 'Cartel de empastes de amalgama perdidos'
          ..url = 'cartel-de-empastes-de-amalgama-perdidos')
        ..phrases['de'] = (Phrases()
          ..name = 'Poster, extrahierte Zähne mit Amalgamfüllung'
          ..description = 'Poster, extrahierte Zähne mit Amalgamfüllung'
          ..url = 'poster-extrahierte-zaehne-mit-amalgamfuellung')
        ..type = ResourceType.document
        ..url['sv'] =
            'https://hg-rid.eu/documents/sv/har-du-tappat-en-fyllning-med-amalgam.pdf'
        ..url['en'] =
            'https://hg-rid.eu/documents/en/lost-an-amalgam-filling.pdf'
        ..url['fr'] =
            'https://hg-rid.eu/documents/fr/Vous_avez_perdu_un_plombage_gris.pdf'
        ..url['es'] =
            'https://hg-rid.eu/documents/es/Se_te_ha_caido_un_empaste_con_amalgama.pdf'
        ..url['de'] =
            'https://hg-rid.eu/documents/de/ist-ihnen-eine-amalgamfullung-rausgefallen.pdf'
        ..size = '191.4 kb'
        ..document_type = 'pdf',
      'Checklista varje arbetsdag och vecka': Document()
        ..icon = 'pool'
        ..id = 'Checklista varje arbetsdag och vecka'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Checklista varje arbetsdag och vecka'
          ..description = 'Checklista varje arbetsdag och vecka'
          ..url = 'checklista-varje-arbetsdag-och-vecka')
        ..phrases['en'] = (Phrases()
          ..name = 'Checklist for every work day and week'
          ..description = 'Checklist for every work day and week'
          ..url = 'checklist-for-every-work-day-and-week')
        ..phrases['fr'] = (Phrases()
          ..name =
              'Liste de vérifications pour chaque jour ouvré et chaque semaine'
          ..description =
              'Liste de vérifications pour chaque jour ouvré et chaque semaine'
          ..url = 'liste-verifications-chaque-jour-ouvre-et-semaine')
        ..phrases['es'] = (Phrases()
          ..name =
              'Verificar la lista de verificación de cada día y de cada semana laboral'
          ..description =
              'Verificar la lista de verificación de cada día y de cada semana laboral'
          ..url =
              'verificar-la-lista-de-verificación-de-cada-día-y-de-cada-semana-laboral')
        ..phrases['de'] = (Phrases()
          ..name = 'Checkliste jeder Arbeitstag und jede Woche'
          ..description = 'Checkliste jeder Arbeitstag und jede Woche'
          ..url = 'checkliste-jeder-arbeitstag-und-jede-woche')
        ..type = ResourceType.document
        ..size = '200.9 kb'
        ..url['sv'] =
            'https://hg-rid.eu/documents/sv/checklist-upkeep-of-amalgam-separator-sv.pdf'
        ..url['en'] =
            'https://hg-rid.eu/documents/en/checklist-upkeep-of-amalgam-separator-en.pdf'
        ..url['fr'] =
            'https://hg-rid.eu/documents/fr/checklist-upkeep-of-amalgam-separator-fr.pdf'
        ..url['es'] =
            'https://hg-rid.eu/documents/es/checklist-upkeep-of-amalgam-separator-es.pdf'
        ..url['de'] =
            'https://hg-rid.eu/documents/de/checklist-upkeep-of-amalgam-separator-de.pdf'
        ..document_type = 'pdf',
      'Checklista övrig': Document()
        ..icon = 'pool'
        ..id = 'Checklista övrig'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Checklista övrig'
          ..description = 'Checklista övrig'
          ..url = 'checklista-ovrig')
        ..phrases['en'] = (Phrases()
          ..name = 'Checklist (other)'
          ..description = 'Checklist (other)'
          ..url = 'checklist-other')
        ..phrases['fr'] = (Phrases()
          ..name = 'Liste de vérifications, autre'
          ..description = 'Liste de vérifications, autre'
          ..url = 'liste-verifications-autre')
        ..phrases['es'] = (Phrases()
          ..name = 'Lista de verificación, otros'
          ..description = 'Lista de verificación, otros'
          ..url = 'lista-de-verificacion-otros')
        ..phrases['de'] = (Phrases()
          ..name = 'Checkliste, sonstiges'
          ..description = 'Checkliste, sonstiges'
          ..url = 'checkliste-sonstiges')
        ..type = ResourceType.document
        ..size = '303.3 kb'
        ..url['sv'] =
            'https://hg-rid.eu/documents/sv/checklist-upkeep-of-amalgam-separator-sv-sign.pdf'
        ..url['en'] =
            'https://hg-rid.eu/documents/en/checklist-upkeep-of-amalgam-separator-en-sign.pdf'
        ..url['fr'] =
            'https://hg-rid.eu/documents/fr/checklist-upkeep-of-amalgam-separator-fr-sign.pdf'
        ..url['es'] =
            'https://hg-rid.eu/documents/es/checklist-upkeep-of-amalgam-separator-es-sign.pdf'
        ..url['de'] =
            'https://hg-rid.eu/documents/de/checklist-upkeep-of-amalgam-separator-de-sign.pdf'
        ..document_type = 'pdf',
      'EU:s förordning om kvicksilver': Document()
        ..icon = 'pool'
        ..id = 'EU:s förordning om kvicksilver'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'EU:s förordning om kvicksilver'
          ..description = 'EU:s förordning om kvicksilver'
          ..url = 'eus-forordning-om-kvicksilver')
        ..phrases['en'] = (Phrases()
          ..name = 'The EU Mercury Regulation (EU) 2017/852)'
          ..description = 'The EU Mercury Regulation (EU) 2017/852)'
          ..url = 'eu-mercury-regulations')
        ..phrases['fr'] = (Phrases()
          ..name = 'Réglementation de l’UE concernant le mercure'
          ..description = 'Réglementation de l’UE concernant le mercure'
          ..url = 'reglementation-ue-mercure')
        ..phrases['es'] = (Phrases()
          ..name = 'Reglamentos de la UE sobre el mercurio'
          ..description = 'Reglamentos de la UE sobre el mercurio'
          ..url = 'reglamentos-de-la-UE-sobre-el-mercurio')
        ..phrases['de'] = (Phrases()
          ..name = 'EU-Verordnung über Quecksilber'
          ..description = 'EU-Verordnung über Quecksilber'
          ..url = 'eu-verordnung-uber-quecksilber')
        ..type = ResourceType.document
        ..url['sv'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..url['en'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..url['fr'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..url['es'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..url['de'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..document_type = 'link',
      'Miljöbalken': Document()
        ..icon = 'pool'
        ..id = 'Miljöbalken'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Miljöbalken'
          ..description = 'Miljöbalken'
          ..url = 'spridning-av-kvicksilver')
        ..phrases['en'] = (Phrases()
          ..name = 'The Swedish Environmental Code'
          ..description = 'Environmental Code'
          ..url = 'environmental-code')
        ..phrases['fr'] = (Phrases()
          ..name = 'Règlement environnemental suédois'
          ..description = 'Règlement environnemental suédois'
          ..url = 'propagation-du-mercure')
        ..phrases['es'] = (Phrases()
          ..name = 'El Código Ambiental Sueco'
          ..description = 'El Código Ambiental Sueco'
          ..url = 'la-propagacion-del-mercurio')
        ..phrases['de'] = (Phrases()
          ..name = 'Schwedische Umweltgesetzgebung'
          ..description = 'Schwedische Umweltgesetzgebung'
          ..url = 'verbreitung-von-quecksilber')
        ..type = ResourceType.document
        ..url['sv'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/'
        ..url['en'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/'
        ..url['fr'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/'
        ..url['es'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/'
        ..url['de'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/'
        ..document_type = 'link',
      'Vägledningsdokument': Document()
        ..icon = 'pool'
        ..id = 'Vägledningsdokument'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Vägledningsdokument'
          ..description = 'Vägledningsdokument'
          ..url = 'vagledningsdokument')
        ..phrases['en'] = (Phrases()
          ..name = 'Guidelines for dental care in Sweden'
          ..description = 'Guidelines for dental care in Sweden'
          ..url = 'guidance-document')
        ..phrases['fr'] = (Phrases()
          ..name = 'Directives'
          ..description = 'Directives'
          ..url = 'directives')
        ..phrases['es'] = (Phrases()
          ..name = 'Documento de directrices'
          ..description = 'Documento de directrices'
          ..url = 'documento-de-directrices')
        ..phrases['de'] = (Phrases()
          ..name = 'Richtlinien'
          ..description = 'Richtlinien'
          ..url = 'richtlinien')
        ..type = ResourceType.document
        ..size = '1,6 MB'
        ..url['sv'] =
            'https://hg-rid.eu/documents/sv/vagledning-kvicksilver-tandvarden.pdf'
        ..url['en'] =
            'https://hg-rid.eu/documents/en/guidelines-mercury-for-dental-care-in-sweden.pdf'
        ..url['fr'] =
            'https://hg-rid.eu/documents/fr/Guidelines_mercury_for_dental_care_in_Sweden.pdf'
        ..url['es'] =
            'https://hg-rid.eu/documents/es/Guidelines_mercury_for_dental_care_in_Sweden.pdf'
        ..url['de'] =
            'https://hg-rid.eu/documents/de/guidelines-mercury-for-dental-care-in-sweden.pdf'
        ..document_type = 'pdf',
    };
  }
}
