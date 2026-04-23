import 'dart:async';
import 'package:angular/angular.dart';
import '../models/question_data.dart';
import '../models/quiz.dart';

@Injectable()
class QuestionService {
  Future<QuestionData> fetchAll() async {
    await Future.delayed(const Duration(milliseconds: 1));
    return data = QuestionData()
      ..qustions = {
        'sv': {
          'Vad ska du göra med en tappad tand som är lagad med amalgam?':
              Question()
                ..value =
                    'Vad ska du göra med en tappad tand som är lagad med amalgam?'
                ..label =
                    'Vad ska du göra med en tappad tand som är lagad med amalgam?'
                ..options = [
                  Option()
                    ..value =
                        'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen'
                    ..label =
                        'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen'
                    ..score = 1,
                  Option()
                    ..value = 'Spola ned i toaletten'
                    ..label = 'Spola ned i toaletten'
                    ..score = 0,
                  Option()
                    ..value = 'Kasta i soporna'
                    ..label = 'Kasta i soporna'
                    ..score = 0
                ],
          'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?':
              Question()
                ..value =
                    'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'
                ..label =
                    'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'
                ..options = [
                  Option()
                    ..label = 'Metylkvicksilver'
                    ..value = 'Metylkvicksilver'
                    ..score = 1,
                  Option()
                    ..label = 'Kvicksilverhydrat'
                    ..value = 'Kvicksilverhydrat'
                    ..score = 0,
                  Option()
                    ..label = 'Nukleinkvicksilver'
                    ..value = 'Nukleinkvicksilver'
                    ..score = 0
                ],
          'Hur påverkar framför allt metylkvicksilver, oss människor?':
              Question()
                ..label =
                    'Hur påverkar framför allt metylkvicksilver, oss människor?'
                ..value =
                    'Hur påverkar framför allt metylkvicksilver, oss människor?'
                ..options = [
                  Option()
                    ..label = 'Det kan skada nervsystemet'
                    ..value = 'Det kan skada nervsystemet'
                    ..score = 1,
                  Option()
                    ..label = 'Det har en kvävande effekt'
                    ..value = 'Det har en kvävande effekt'
                    ..score = 0,
                  Option()
                    ..label = 'Det är inte farligt för människor'
                    ..value = 'Det är inte farligt för människor'
                    ..score = 0,
                ],
          'Vilken råvara har högst andel kvicksilver?': Question()
            ..label = 'Vilken råvara har högst andel kvicksilver?'
            ..value = 'Vilken råvara har högst andel kvicksilver?'
            ..options = [
              Option()
                ..label = 'Fisk'
                ..value = 'Fisk'
                ..score = 1,
              Option()
                ..label = 'Fläskkött'
                ..value = 'Fläskkött'
                ..score = 0,
              Option()
                ..label = 'Mejeriprodukter'
                ..value = 'Mejeriprodukter'
                ..score = 0,
            ],
          'Hur stor del kvicksilver finns det i amalgam?': Question()
            ..label = 'Hur stor del kvicksilver finns det i amalgam?'
            ..value = 'Hur stor del kvicksilver finns det i amalgam?'
            ..options = [
              Option()
                ..label = 'Ca 50%'
                ..value = 'Ca 50%'
                ..score = 1,
              Option()
                ..label = 'Ca 20%'
                ..value = 'Ca 20%'
                ..score = 0,
              Option()
                ..label = 'Ca 5%'
                ..value = 'Ca 5%'
                ..score = 0
            ],
          'När trädde EU:s skärpta regler kring amalgam i kraft?': Question()
            ..label = 'När trädde EU:s skärpta regler kring amalgam i kraft?'
            ..value = 'När trädde EU:s skärpta regler kring amalgam i kraft?'
            ..options = [
              Option()
                ..label = '2018'
                ..value = '2018'
                ..score = 1,
              Option()
                ..label = '2013'
                ..value = '2013'
                ..score = 0,
              Option()
                ..label = '2019'
                ..value = '2019'
                ..score = 0,
            ],
          'Vad ska man göra av uppsamlat kvicksilver från svensk tandvård?':
              Question()
                ..label =
                    'Vad ska man göra av uppsamlat kvicksilver från svensk tandvård?'
                ..value =
                    'Vad ska man göra av uppsamlat kvicksilver från svensk tandvård?'
                ..options = [
                  Option()
                    ..label = 'Slutförvara det'
                    ..value = 'Slutförvara det'
                    ..score = 1,
                  Option()
                    ..label = 'Förstöra det'
                    ..value = 'Förstöra det'
                    ..score = 0,
                  Option()
                    ..label = 'Dumpa det i havet'
                    ..value = 'Dumpa det i havet'
                    ..score = 0
                ],
          'Var ska sugmotorn vara installerad?': Question()
            ..label = 'Var ska sugmotorn vara installerad?'
            ..value = 'Var ska sugmotorn vara installerad?'
            ..options = [
              Option()
                ..label = 'I ett separat sugrum avskilt från människor. '
                ..value = 'I ett separat sugrum avskilt från människor. '
                ..score = 1,
              Option()
                ..label =
                    'Centralt på mottagningen, så långt det går mellan de behandlingsstolar som ingår i systemet. '
                ..value =
                    'Centralt på mottagningen, så långt det går mellan de behandlingsstolar som ingår i systemet. '
                ..score = 0,
              Option()
                ..label = 'Det spelar ingen större roll, där det får plats. '
                ..value = 'Det spelar ingen större roll, där det får plats. '
                ..score = 0
            ],
          'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?':
              Question()
                ..label =
                    'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?'
                ..value =
                    'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?'
                ..options = [
                  Option()
                    ..label = 'Varje arbetsdag'
                    ..value = 'Varje arbetsdag'
                    ..score = 1,
                  Option()
                    ..label = 'En gång per månad'
                    ..value = 'En gång per månad'
                    ..score = 0,
                  Option()
                    ..label = 'En gång per kvartal'
                    ..value = 'En gång per kvartal'
                    ..score = 0
                ],
          'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?':
              Question()
                ..label =
                    'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?'
                ..value =
                    'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?'
                ..options = [
                  Option()
                    ..value =
                        'Tömning och sköljning av grovsil/salivsug eller partikelfälla.'
                    ..label =
                        'Tömning och sköljning av grovsil/salivsug eller partikelfälla.'
                    ..score = 1,
                  Option()
                    ..label =
                        'Kontroll av fyllnadsgraden i amalgamavskiljarens behållare'
                    ..value =
                        'Kontroll av fyllnadsgraden i amalgamavskiljarens behållare'
                    ..score = 0,
                  Option()
                    ..label = 'Tömning och rengöring av bufferttank'
                    ..value = 'Tömning och rengöring av bufferttank'
                    ..score = 0
                ],
          'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?':
              Question()
                ..label =
                    'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?'
                ..value =
                    'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?'
                ..options = [
                  Option()
                    ..label =
                        'Tandvårdsmottagningen ansvarar för protokoll över funktionskontroll och avvikelser vid hanteringen av amalgamavskiljaren och sugsystemet'
                    ..value =
                        'Tandvårdsmottagningen ansvarar för protokoll över funktionskontroll och avvikelser vid hanteringen av amalgamavskiljaren och sugsystemet'
                    ..score = 1,
                  Option()
                    ..label =
                        'Fastighetsägaren ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem.'
                    ..value =
                        'Fastighetsägaren ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem.'
                    ..score = 0,
                  Option()
                    ..label =
                        'Servicetekniker ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem.'
                    ..value =
                        'Servicetekniker ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem.'
                    ..score = 0
                ],
          'Vad stämmer om installationen av sugslangar?': Question()
            ..label = 'Vad stämmer om installationen av sugslangar?'
            ..value = 'Vad stämmer om installationen av sugslangar?'
            ..options = [
              Option()
                ..label = 'Slangarnas vinklar bör vara högst 45 grader.'
                ..value = 'Slangarnas vinklar bör vara högst 45 grader.'
                ..score = 1,
              Option()
                ..label = 'Sugslangarna från uniten till golven bör limmas noga'
                ..value = 'Sugslangarna från uniten till golven bör limmas noga'
                ..score = 0,
              Option()
                ..label = 'Sugslangarna bör vara gjorda av kolfiber'
                ..value = 'Sugslangarna bör vara gjorda av kolfiber'
                ..score = 0
            ],
        },
        'en': {
          'Vad ska du göra med en tappad tand som är lagad med amalgam?':
              Question()
                ..value =
                    'What should you do with a lost tooth filled with amalgam?'
                ..label =
                    'What should you do with a lost tooth filled with amalgam?'
                ..options = [
                  Option()
                    ..value =
                        'Ensure that it is dealt with as hazardous waste, e.g. by taking it to a dental practice'
                    ..label =
                        'Ensure that it is dealt with as hazardous waste, e.g. by taking it to a dental practice'
                    ..score = 1,
                  Option()
                    ..value = 'Flush it down the toilet'
                    ..label = 'Flush it down the toilet'
                    ..score = 0,
                  Option()
                    ..value = 'Throw it in the rubbish bin'
                    ..label = 'Throw it in the rubbish bin'
                    ..score = 0
                ],
          'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?':
              Question()
                ..value =
                    'Microorganisms can transform mercury to a compound that can be absorbed by animals. What is it called?'
                ..label =
                    'Microorganisms can transform mercury to a compound that can be absorbed by animals. What is it called?'
                ..options = [
                  Option()
                    ..value = 'Methylmercury'
                    ..label = 'Methylmercury'
                    ..score = 1,
                  Option()
                    ..value = 'Mercuryhydrate'
                    ..label = 'Mercuryhydrate'
                    ..score = 0,
                  Option()
                    ..value = 'Nucleic mercury'
                    ..label = 'Nucleic mercury'
                    ..score = 0
                ],
          'Hur påverkar framför allt metylkvicksilver, oss människor?':
              Question()
                ..label = 'How does methylmercury primarily affect humans?'
                ..value = 'How does methylmercury primarily affect humans?'
                ..options = [
                  Option()
                    ..label = 'It can damage the nervous system'
                    ..value = 'It can damage the nervous system'
                    ..score = 1,
                  Option()
                    ..label = 'It can have a suffocating effect'
                    ..value = 'It can have a suffocating effect'
                    ..score = 0,
                  Option()
                    ..label = 'It is not hazardous to humans'
                    ..value = 'It is not hazardous to humans'
                    ..score = 0,
                ],
          'Vilken råvara har högst andel kvicksilver?': Question()
            ..label = 'What commodity has the highest proportion of mercury?'
            ..value = 'What commodity has the highest proportion of mercury?'
            ..options = [
              Option()
                ..label = 'Fish'
                ..value = 'Fish'
                ..score = 1,
              Option()
                ..label = 'Meat'
                ..value = 'Meat'
                ..score = 0,
              Option()
                ..label = 'Dairy products'
                ..value = 'Dairy products'
                ..score = 0,
            ],
          'Hur stor del kvicksilver finns det i amalgam?': Question()
            ..label = 'How much mercury is found in amalgam?'
            ..value = 'How much mercury is found in amalgam?'
            ..options = [
              Option()
                ..label = 'Approx. 50%'
                ..value = 'Approx. 50%'
                ..score = 1,
              Option()
                ..label = 'Approx. 20%'
                ..value = 'Approx. 20%'
                ..score = 0,
              Option()
                ..label = 'Approx. 5%'
                ..value = 'Approx. 5%'
                ..score = 0
            ],
          'När trädde EU:s skärpta regler kring amalgam i kraft?': Question()
            ..label =
                'When did the EU’s tougher rules on amalgam come into effect?'
            ..value =
                'When did the EU’s tougher rules on amalgam come into effect?'
            ..options = [
              Option()
                ..label = '2018'
                ..value = '2018'
                ..score = 1,
              Option()
                ..label = '2013'
                ..value = '2013'
                ..score = 0,
              Option()
                ..label = '2019'
                ..value = '2019'
                ..score = 0,
            ],
          'Vad ska man göra av uppsamlat kvicksilver från svensk tandvård?':
              Question()
                ..label =
                    'What should you do with accumulated mercury from dentistry in Sweden?'
                ..value =
                    'What should you do with accumulated mercury from dentistry in Sweden?'
                ..options = [
                  Option()
                    ..label = 'Send it for terminal storage'
                    ..value = 'Send it for terminal storage'
                    ..score = 1,
                  Option()
                    ..label = 'Destroy it'
                    ..value = 'Destroy it'
                    ..score = 0,
                  Option()
                    ..label = 'Dump it in the sea'
                    ..value = 'Dump it in the sea'
                    ..score = 0
                ],
          'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?':
              Question()
                ..label =
                    'How often should the drain under sink traps be disinfected?'
                ..value =
                    'How often should the drain under sink traps be disinfected?'
                ..options = [
                  Option()
                    ..label = 'Every workday'
                    ..value = 'Every workday'
                    ..score = 1,
                  Option()
                    ..label = 'Once monthly'
                    ..value = 'Once monthly'
                    ..score = 0,
                  Option()
                    ..label = 'Once quarterly'
                    ..value = 'Once quarterly'
                    ..score = 0
                ],
          'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?':
              Question()
                ..label =
                    'The dental practice is responsible for routines and maintenance of amalgam separators and suction systems. What does daily maintenance involve?'
                ..value =
                    'The dental practice is responsible for routines and maintenance of amalgam separators and suction systems. What does daily maintenance involve?'
                ..options = [
                  Option()
                    ..value =
                        'Emptying and rinsing the coarse strainer/saliva suction tube, or particle trap.'
                    ..label =
                        'Emptying and rinsing the coarse strainer/saliva suction tube, or particle trap.'
                    ..score = 1,
                  Option()
                    ..label = 'Check level of amalgam separator container.'
                    ..value = 'Check level of amalgam separator container.'
                    ..score = 0,
                  Option()
                    ..label = 'Emptying and cleaning buffer tank'
                    ..value = 'Emptying and cleaning buffer tank'
                    ..score = 0
                ],
          'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?':
              Question()
                ..label =
                    'Which is correct concerning delegation of responsibility with regard to documentation?'
                ..value =
                    'Which is correct concerning delegation of responsibility with regard to documentation?'
                ..options = [
                  Option()
                    ..label =
                        'The dental practice is responsible for logging function checks and non-conformities concerning the amalgam separator and suction system'
                    ..value =
                        'The dental practice is responsible for logging function checks and non-conformities concerning the amalgam separator and suction system'
                    ..score = 1,
                  Option()
                    ..label =
                        'The property owner is responsible for all documentation concerning amalgam separators and suction systems.'
                    ..value =
                        'The property owner is responsible for all documentation concerning amalgam separators and suction systems.'
                    ..score = 0,
                  Option()
                    ..label =
                        'Service technicians are responsible for all documentation concerning amalgam separators and suction systems'
                    ..value =
                        'Service technicians are responsible for all documentation concerning amalgam separators and suction systems'
                    ..score = 0
                ],
          'Vad stämmer om installationen av sugslangar?': Question()
            ..label =
                'Which is correct concerning the installation of suction hoses?'
            ..value =
                'Which is correct concerning the installation of suction hoses?'
            ..options = [
              Option()
                ..label = 'Hose angles should not exceed 45 degrees.'
                ..value = 'Hose angles should not exceed 45 degrees.'
                ..score = 1,
              Option()
                ..label =
                    'Suction hoses from the unit to the floor should be glued'
                ..value =
                    'Suction hoses from the unit to the floor should be glued'
                ..score = 0,
              Option()
                ..label = 'Suction hoses should be made of carbon fibre'
                ..value = 'Suction hoses should be made of carbon fibre'
                ..score = 0
            ],
          'Var ska sugmotorn vara installerad?': Question()
            ..label = 'Where should a suction motor be installed?'
            ..value = 'Where should a suction motor be installed?'
            ..options = [
              Option()
                ..label =
                    'In a separate ‘suction room’, separated from personnel.'
                ..value =
                    'In a separate ‘suction room’, separated from personnel.'
                ..score = 1,
              Option()
                ..label =
                    'Centrally in the practice, as long as it can fit between the treatment chairs in the system.'
                ..value =
                    'Centrally in the practice, as long as it can fit between the treatment chairs in the system.'
                ..score = 0,
              Option()
                ..label = 'It doesn’t matter, as long as there is room.'
                ..value = 'It doesn’t matter, as long as there is room.'
                ..score = 0
            ],
        },
        'fr': {
          'Vad ska du göra med en tappad tand som är lagad med amalgam?':
              Question()
                ..value =
                    'Que devez-vous faire avec une dent réparée avec un amalgame ?'
                ..label =
                    'Que devez-vous faire avec une dent réparée avec un amalgame ?'
                ..options = [
                  Option()
                    ..value =
                        'S’assurer qu’il est traité comme déchet dangereux, par ex. en le laissant à la clinique dentaire'
                    ..label =
                        'S’assurer qu’il est traité comme déchet dangereux, par ex. en le laissant à la clinique dentaire'
                    ..score = 1,
                  Option()
                    ..value = 'Le jeter dans les toilettes'
                    ..label = 'Le jeter dans les toilettes'
                    ..score = 0,
                  Option()
                    ..value = 'Le jeter à la poubelle'
                    ..label = 'Le jeter à la poubelle'
                    ..score = 0
                ],
          'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?':
              Question()
                ..value =
                    'Les micro-organismes peuvent transformer le mercure en un composé pouvant être absorbé par les animaux. Comment s’appelle ce composé ?'
                ..label =
                    'Les micro-organismes peuvent transformer le mercure en un composé pouvant être absorbé par les animaux. Comment s’appelle ce composé ?'
                ..options = [
                  Option()
                    ..label = 'Méthylmercure'
                    ..value = 'Méthylmercure'
                    ..score = 1,
                  Option()
                    ..label = 'Hydrate de mercure'
                    ..value = 'Hydrate de mercure'
                    ..score = 0,
                  Option()
                    ..label = 'Mercure nucléique'
                    ..value = 'Mercure nucléique'
                    ..score = 0
                ],
          'Hur påverkar framför allt metylkvicksilver, oss människor?':
              Question()
                ..label =
                    'Quel est le premier effet du méthylmercure sur les humains ?'
                ..value =
                    'Quel est le premier effet du méthylmercure sur les humains ?'
                ..options = [
                  Option()
                    ..label = 'Il peut endommager le système nerveux'
                    ..value = 'Il peut endommager le système nerveux'
                    ..score = 1,
                  Option()
                    ..label = 'Il peut avoir un effet suffocant'
                    ..value = 'Il peut avoir un effet suffocant'
                    ..score = 0,
                  Option()
                    ..label = 'Il n’est pas dangereux pour les humains'
                    ..value = 'Il n’est pas dangereux pour les humains'
                    ..score = 0,
                ],
          'Vilken råvara har högst andel kvicksilver?': Question()
            ..label =
                'Quel produit de base dispose de la plus grande proportion de mercure ?'
            ..value =
                'Quel produit de base dispose de la plus grande proportion de mercure ?'
            ..options = [
              Option()
                ..label = 'Le poisson'
                ..value = 'Le poisson'
                ..score = 1,
              Option()
                ..label = 'La viande'
                ..value = 'La viande'
                ..score = 0,
              Option()
                ..label = 'Les produits laitiers'
                ..value = 'Les produits laitiers'
                ..score = 0,
            ],
          'Hur stor del kvicksilver finns det i amalgam?': Question()
            ..label =
                'Quelle quantité de mercure se trouve dans les amalgames ?'
            ..value =
                'Quelle quantité de mercure se trouve dans les amalgames ?'
            ..options = [
              Option()
                ..label = 'Env. 50 %'
                ..value = 'Env. 50 %'
                ..score = 1,
              Option()
                ..label = 'Env. 20 %'
                ..value = 'Env. 20 %'
                ..score = 0,
              Option()
                ..label = 'Env. 5 %'
                ..value = 'Env. 5 %'
                ..score = 0
            ],
          'När trädde EU:s skärpta regler kring amalgam i kraft?': Question()
            ..label =
                'En quelle année les règles les plus strictes de l’UE relatives aux amalgames sont-elles entrées en vigueur ?'
            ..value =
                'En quelle année les règles les plus strictes de l’UE relatives aux amalgames sont-elles entrées en vigueur ?'
            ..options = [
              Option()
                ..label = '2018'
                ..value = '2018'
                ..score = 1,
              Option()
                ..label = '2013'
                ..value = '2013'
                ..score = 0,
              Option()
                ..label = '2019'
                ..value = '2019'
                ..score = 0,
            ],
          'Vad ska man göra av uppsamlat kvicksilver från svensk tandvård?':
              Question()
                ..label = 'Que devez-vous faire avec le mercure cumulé ?'
                ..value = 'Que devez-vous faire avec le mercure cumulé ?'
                ..options = [
                  Option()
                    ..label = 'L’envoyer au stockage final'
                    ..value = 'L’envoyer au stockage final'
                    ..score = 1,
                  Option()
                    ..label = 'Le détruire'
                    ..value = 'Le détruire'
                    ..score = 0,
                  Option()
                    ..label = 'Le jeter à la mer'
                    ..value = 'Le jeter à la mer'
                    ..score = 0
                ],
          'Var ska sugmotorn vara installerad?': Question()
            ..label = 'Où le moteur d’aspiration doit-il être installé ?'
            ..value = 'Où le moteur d’aspiration doit-il être installé ?'
            ..options = [
              Option()
                ..label =
                    'Dans une ’salle d’aspiration’ distincte, séparée du personnel.'
                ..value =
                    'Dans une ’salle d’aspiration’ distincte, séparée du personnel.'
                ..score = 1,
              Option()
                ..label =
                    'Centralt på mottagningen, så långt det går mellan de behandlingsstolar som ingår i systemet. '
                ..value =
                    'De manière centrale dans le cabinet, tant qu’il peut être placé entre les chaises de traitement du système.'
                ..score = 0,
              Option()
                ..label =
                    'Cela n’a pas d’importance, tant qu’il est dans la pièce.'
                ..value =
                    'Cela n’a pas d’importance, tant qu’il est dans la pièce.'
                ..score = 0
            ],
          'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?':
              Question()
                ..label =
                    'À quelle fréquence les siphons sous les valves du lavabo doivent-ils être désinfectés ?'
                ..value =
                    'À quelle fréquence les siphons sous les valves du lavabo doivent-ils être désinfectés ?'
                ..options = [
                  Option()
                    ..label = 'Chaque jour de travail'
                    ..value = 'Chaque jour de travail'
                    ..score = 1,
                  Option()
                    ..label = 'Une fois par mois'
                    ..value = 'Une fois par mois'
                    ..score = 0,
                  Option()
                    ..label = 'Une fois par trimestre'
                    ..value = 'Une fois par trimestre'
                    ..score = 0
                ],
          'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?':
              Question()
                ..label =
                    'Le cabinet dentaire est responsable des vérifications quotidiennes et de la maintenance des séparateurs d’amalgames et systèmes d’aspiration. Qu’implique la maintenance quotidienne ?'
                ..value =
                    'Le cabinet dentaire est responsable des vérifications quotidiennes et de la maintenance des séparateurs d’amalgames et systèmes d’aspiration. Qu’implique la maintenance quotidienne ?'
                ..options = [
                  Option()
                    ..value =
                        'Vider et rincer les gros filtres/tubes d’aspiration de salive, ou les pièges à particules.'
                    ..label =
                        'Vider et rincer les gros filtres/tubes d’aspiration de salive, ou les pièges à particules.'
                    ..score = 1,
                  Option()
                    ..label =
                        'Vérifier le niveau du récipient du séparateur d’amalgames.'
                    ..value =
                        'Vérifier le niveau du récipient du séparateur d’amalgames.'
                    ..score = 0,
                  Option()
                    ..label = 'Vider et nettoyer le réservoir tampon'
                    ..value = 'Vider et nettoyer le réservoir tampon'
                    ..score = 0
                ],
          'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?':
              Question()
                ..label =
                    'Quelle affirmation est vraie concernant la délégation de responsabilité selon la documentation ?'
                ..value =
                    'Quelle affirmation est vraie concernant la délégation de responsabilité selon la documentation ?'
                ..options = [
                  Option()
                    ..label =
                        'Le cabinet dentaire est responsable de la consignation des vérifications des fonctions et des non-conformités du séparateur d’amalgame et du système d’aspiration'
                    ..value =
                        'Le cabinet dentaire est responsable de la consignation des vérifications des fonctions et des non-conformités du séparateur d’amalgame et du système d’aspiration'
                    ..score = 1,
                  Option()
                    ..label =
                        'Le propriétaire du bien est responsable de toute la documentation concernant les séparateurs d’amalgames et les systèmes d’aspiration.'
                    ..value =
                        'Le propriétaire du bien est responsable de toute la documentation concernant les séparateurs d’amalgames et les systèmes d’aspiration.'
                    ..score = 0,
                  Option()
                    ..label =
                        'Les techniciens de service sont responsables de toute la documentation concernant les séparateurs d’amalgames et les systèmes d’aspiration.'
                    ..value =
                        'Les techniciens de service sont responsables de toute la documentation concernant les séparateurs d’amalgames et les systèmes d’aspiration.'
                    ..score = 0
                ],
          'Vad stämmer om installationen av sugslangar?': Question()
            ..label =
                'Quelle affirmation est vraie concernant l’installation des flexibles d’aspiration ?'
            ..value =
                'Quelle affirmation est vraie concernant l’installation des flexibles d’aspiration ?'
            ..options = [
              Option()
                ..label =
                    'Les angles des flexibles ne doivent pas dépasser 45 degrés.'
                ..value =
                    'Les angles des flexibles ne doivent pas dépasser 45 degrés.'
                ..score = 1,
              Option()
                ..label =
                    'Les flexibles d’aspiration entre l’unité et le sol doivent être collés'
                ..value =
                    'Les flexibles d’aspiration entre l’unité et le sol doivent être collés'
                ..score = 0,
              Option()
                ..label =
                    'Les flexibles d’aspiration doivent être fabriqués à partir de fibres de carbone'
                ..value =
                    'Les flexibles d’aspiration doivent être fabriqués à partir de fibres de carbone'
                ..score = 0
            ],
        },
        'es': {
          'Vad ska du göra med en tappad tand som är lagad med amalgam?':
              Question()
                ..value =
                    '¿Qué debería hacer con un diente empastado con amalgama?'
                ..label =
                    '¿Qué debería hacer con un diente empastado con amalgama?'
                ..options = [
                  Option()
                    ..value =
                        'Cerciorarse de que se gestiona como residuo peligroso. Por ejemplo, llevarlo a una clínica dental'
                    ..label =
                        'Cerciorarse de que se gestiona como residuo peligroso. Por ejemplo, llevarlo a una clínica dental'
                    ..score = 1,
                  Option()
                    ..value = 'Tirarlo por el inodoro'
                    ..label = 'Tirarlo por el inodoro'
                    ..score = 0,
                  Option()
                    ..value = 'Tirarlo a la papelera'
                    ..label = 'Tirarlo a la papelera'
                    ..score = 0
                ],
          'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?':
              Question()
                ..value =
                    'Los microorganismos pueden transformar el mercurio en un compuesto que podría llegar a ser absorbido por los animales. ¿Cómo se llama?'
                ..label =
                    'Los microorganismos pueden transformar el mercurio en un compuesto que podría llegar a ser absorbido por los animales. ¿Cómo se llama?'
                ..options = [
                  Option()
                    ..label = 'Metilmercurio'
                    ..value = 'Metilmercurio'
                    ..score = 1,
                  Option()
                    ..label = 'Hidrato de mercurio'
                    ..value = 'Hidrato de mercurio'
                    ..score = 0,
                  Option()
                    ..label = 'Mercurio nucleico'
                    ..value = 'Mercurio nucleico'
                    ..score = 0
                ],
          'Hur påverkar framför allt metylkvicksilver, oss människor?':
              Question()
                ..label = '¿Cómo afecta el metilmercurio a los seres humanos?'
                ..value = '¿Cómo afecta el metilmercurio a los seres humanos?'
                ..options = [
                  Option()
                    ..label = 'Puede dañar el sistema nervioso'
                    ..value = 'Puede dañar el sistema nervioso'
                    ..score = 1,
                  Option()
                    ..label = 'Puede tener efectos asfixiantes'
                    ..value = 'Puede tener efectos asfixiantes'
                    ..score = 0,
                  Option()
                    ..label = 'No es peligroso para los seres humanos'
                    ..value = 'No es peligroso para los seres humanos'
                    ..score = 0,
                ],
          'Vilken råvara har högst andel kvicksilver?': Question()
            ..label = '¿Qué producto tiene la mayor proporción de mercurio?'
            ..value = '¿Qué producto tiene la mayor proporción de mercurio?'
            ..options = [
              Option()
                ..label = 'El pescado'
                ..value = 'El pescado'
                ..score = 1,
              Option()
                ..label = 'La carne'
                ..value = 'La carne'
                ..score = 0,
              Option()
                ..label = 'Los productos lácteos'
                ..value = 'Los productos lácteos'
                ..score = 0,
            ],
          'Hur stor del kvicksilver finns det i amalgam?': Question()
            ..label = '¿Qué cantidad de mercurio contiene la amalgama?'
            ..value = '¿Qué cantidad de mercurio contiene la amalgama?'
            ..options = [
              Option()
                ..label = 'Un 50% aproximadamente'
                ..value = 'Un 50% aproximadamente'
                ..score = 1,
              Option()
                ..label = 'Un 20% aproximadamente'
                ..value = 'Un 20% aproximadamente'
                ..score = 0,
              Option()
                ..label = 'Un 5% aproximadamente'
                ..value = 'Un 5% aproximadamente'
                ..score = 0
            ],
          'När trädde EU:s skärpta regler kring amalgam i kraft?': Question()
            ..label =
                '¿Cuándo entraron en vigor las normas más estrictas relacionadas la amalgama en la Unión Europea?'
            ..value =
                '¿Cuándo entraron en vigor las normas más estrictas relacionadas la amalgama en la Unión Europea?'
            ..options = [
              Option()
                ..label = '2018'
                ..value = '2018'
                ..score = 1,
              Option()
                ..label = '2013'
                ..value = '2013'
                ..score = 0,
              Option()
                ..label = '2019'
                ..value = '2019'
                ..score = 0,
            ],
          'Vad ska man göra av uppsamlat kvicksilver från svensk tandvård?':
              Question()
                ..label = '¿Qué se ha de hacer con el mercurio acumulado?'
                ..value = '¿Qué se ha de hacer con el mercurio acumulado?'
                ..options = [
                  Option()
                    ..label = 'Enviarlo para su almacenamiento definitivo'
                    ..value = 'Enviarlo para su almacenamiento definitivo'
                    ..score = 1,
                  Option()
                    ..label = 'Destruirlo'
                    ..value = 'Destruirlo'
                    ..score = 0,
                  Option()
                    ..label = 'Tirarlo en el mar'
                    ..value = 'Tirarlo en el mar'
                    ..score = 0
                ],
          'Var ska sugmotorn vara installerad?': Question()
            ..label =
                '¿En cuál de los siguientes lugares se debe instalar un motor de succión?'
            ..value =
                '¿En cuál de los siguientes lugares se debe instalar un motor de succión?'
            ..options = [
              Option()
                ..label = 'En una "sala de succión" separada del personal. '
                ..value = 'En una "sala de succión" separada del personal. '
                ..score = 1,
              Option()
                ..label =
                    'Centralt på mottagningen, så långt det går mellan de behandlingsstolar som ingår i systemet. '
                ..value =
                    'En todas las salas, siempre que quepa bien entre las sillas de tratamiento del sistema.'
                ..score = 0,
              Option()
                ..label = 'No importa, siempre que haya espacio.'
                ..value = 'No importa, siempre que haya espacio.'
                ..score = 0
            ],
          'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?':
              Question()
                ..label =
                    '¿Con qué frecuencia se debe desinfectar el desagüe situado debajo del sifón?'
                ..value =
                    '¿Con qué frecuencia se debe desinfectar el desagüe situado debajo del sifón?'
                ..options = [
                  Option()
                    ..label = 'Cada día laboral'
                    ..value = 'Cada día laboral'
                    ..score = 1,
                  Option()
                    ..label = 'Una vez al mes'
                    ..value = 'Una vez al mes'
                    ..score = 0,
                  Option()
                    ..label = 'Una vez cada tres meses'
                    ..value = 'Una vez cada tres meses'
                    ..score = 0
                ],
          'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?':
              Question()
                ..label =
                    'La clínica dental es responsable de llevar a cabo rutinas de mantenimiento de los separadores de amalgama y de los sistemas de succión. ¿En qué consiste dicho mantenimiento diario?'
                ..value =
                    'La clínica dental es responsable de llevar a cabo rutinas de mantenimiento de los separadores de amalgama y de los sistemas de succión. ¿En qué consiste dicho mantenimiento diario?'
                ..options = [
                  Option()
                    ..value =
                        'En vaciar el contenido del filtro del filtro grueso/filtro de succión de saliva/retenedor de partículas.'
                    ..label =
                        'En vaciar el contenido del filtro del filtro grueso/filtro de succión de saliva/retenedor de partículas.'
                    ..score = 1,
                  Option()
                    ..label =
                        'En comprobar el nivel del recipiente separador de amalgama'
                    ..value =
                        'En comprobar el nivel del recipiente separador de amalgama'
                    ..score = 0,
                  Option()
                    ..label =
                        'En vaciar y limpiar el tanque intermedio de limpieza'
                    ..value =
                        'En vaciar y limpiar el tanque intermedio de limpieza'
                    ..score = 0
                ],
          'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?':
              Question()
                ..label =
                    '¿Qué afirmación es correcta en cuanto a la delegación de responsabilidades relacionadas con la documentación?'
                ..value =
                    '¿Qué afirmación es correcta en cuanto a la delegación de responsabilidades relacionadas con la documentación?'
                ..options = [
                  Option()
                    ..label =
                        'La clínica dental es responsable de realizar verificaciones de funciones y de revisar posibles irregularidades relacionadas con el separador de amalgama y los sistemas de succión'
                    ..value =
                        'La clínica dental es responsable de realizar verificaciones de funciones y de revisar posibles irregularidades relacionadas con el separador de amalgama y los sistemas de succión'
                    ..score = 1,
                  Option()
                    ..label =
                        'El propietario será responsable de toda la documentación relacionada con los separadores de amalgama y los sistemas de succión.'
                    ..value =
                        'El propietario será responsable de toda la documentación relacionada con los separadores de amalgama y los sistemas de succión.'
                    ..score = 0,
                  Option()
                    ..label =
                        'Los técnicos de servicio son responsables de toda la documentación relacionada con los separadores de amalgama y los sistemas de succión.'
                    ..value =
                        'Los técnicos de servicio son responsables de toda la documentación relacionada con los separadores de amalgama y los sistemas de succión.'
                    ..score = 0
                ],
          'Vad stämmer om installationen av sugslangar?': Question()
            ..label =
                '¿Qué afirmación es correcta en relación con la instalación de mangueras de succión?'
            ..value =
                '¿Qué afirmación es correcta en relación con la instalación de mangueras de succión?'
            ..options = [
              Option()
                ..label =
                    'Los ángulos de la manguera no deben exceder los 45 grados.'
                ..value =
                    'Los ángulos de la manguera no deben exceder los 45 grados.'
                ..score = 1,
              Option()
                ..label =
                    'Las mangueras de succión que conectan la unidad con el suelo deben estar plegadas'
                ..value =
                    'Las mangueras de succión que conectan la unidad con el suelo deben estar plegadas'
                ..score = 0,
              Option()
                ..label =
                    'Las mangueras de succión deben estar hechas de fibra de carbono'
                ..value =
                    'Las mangueras de succión deben estar hechas de fibra de carbono'
                ..score = 0
            ],
        },
        'de': {
          'Vad ska du göra med en tappad tand som är lagad med amalgam?':
              Question()
                ..value =
                    'Was ist mit einemausgefallenenZahn zu tun, der mit Amalgam gefüllt ist?'
                ..label =
                    'Was ist mit einemausgefallenenZahn zu tun, der mit Amalgam gefüllt ist?'
                ..options = [
                  Option()
                    ..value =
                        'Dafür sorgen, dass er als gefährlicher Abfallbehandelt wird, z. B. durch die Abgabe in einer Zahnarztpraxis'
                    ..label =
                        'Dafür sorgen, dass er als gefährlicher Abfallbehandelt wird, z. B. durch die Abgabe in einer Zahnarztpraxis'
                    ..score = 1,
                  Option()
                    ..value = 'In der Toilette hinunterspülen'
                    ..label = 'In der Toilette hinunterspülen'
                    ..score = 0,
                  Option()
                    ..value = 'In den Mülleimer werfen'
                    ..label = 'In den Mülleimer werfen'
                    ..score = 0
                ],
          'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?':
              Question()
                ..value =
                    'Mikroorganismen können Quecksilber in eine Verbindung umwandeln, die von Lebewesenaufgenommen werden kann. Wie heißt diese?'
                ..label =
                    'Mikroorganismen können Quecksilber in eine Verbindung umwandeln, die von Lebewesenaufgenommen werden kann. Wie heißt diese?'
                ..options = [
                  Option()
                    ..label = 'Methylquecksilber'
                    ..value = 'Methylquecksilber'
                    ..score = 1,
                  Option()
                    ..label = 'Quecksilberhydrat'
                    ..value = 'Quecksilberhydrat'
                    ..score = 0,
                  Option()
                    ..label = 'NukleinQuecksilber'
                    ..value = 'NukleinQuecksilber'
                    ..score = 0
                ],
          'Hur påverkar framför allt metylkvicksilver, oss människor?':
              Question()
                ..label =
                    'Wie wirkt Methylquecksilber hauptsächlich auf Menschen?'
                ..value =
                    'Wie wirkt Methylquecksilber hauptsächlich auf Menschen?'
                ..options = [
                  Option()
                    ..label = 'Es kann das Nervensystem schädigen'
                    ..value = 'Es kann das Nervensystem schädigen'
                    ..score = 1,
                  Option()
                    ..label = 'Es kann eine erstickende Wirkung haben'
                    ..value = 'Es kann eine erstickende Wirkung haben'
                    ..score = 0,
                  Option()
                    ..label = 'Es ist nicht gefährlich für Menschen'
                    ..value = 'Es ist nicht gefährlich für Menschen'
                    ..score = 0,
                ],
          'Vilken råvara har högst andel kvicksilver?': Question()
            ..label =
                'Welches Nahrungsmittel hat den höchsten Quecksilberanteil?'
            ..value =
                'Welches Nahrungsmittel hat den höchsten Quecksilberanteil?'
            ..options = [
              Option()
                ..label = 'Fisch'
                ..value = 'Fisch'
                ..score = 1,
              Option()
                ..label = 'Fleisch'
                ..value = 'Fleisch'
                ..score = 0,
              Option()
                ..label = 'Milchprodukte'
                ..value = 'Milchprodukte'
                ..score = 0,
            ],
          'Hur stor del kvicksilver finns det i amalgam?': Question()
            ..label = 'Wie viel Quecksilber ist in Amalgam enthalten?'
            ..value = 'Wie viel Quecksilber ist in Amalgam enthalten?'
            ..options = [
              Option()
                ..label = 'Ca. 50%'
                ..value = 'Ca. 50%'
                ..score = 1,
              Option()
                ..label = 'Ca. 20%'
                ..value = 'Ca. 20%'
                ..score = 0,
              Option()
                ..label = 'Ca. 5%'
                ..value = 'Ca. 5%'
                ..score = 0
            ],
          'När trädde EU:s skärpta regler kring amalgam i kraft?': Question()
            ..label =
                'Wann sind die strengeren Vorschriften der EU für Amalgam in Kraft getreten?'
            ..value =
                'Wann sind die strengeren Vorschriften der EU für Amalgam in Kraft getreten?'
            ..options = [
              Option()
                ..label = '2018'
                ..value = '2018'
                ..score = 1,
              Option()
                ..label = '2013'
                ..value = '2013'
                ..score = 0,
              Option()
                ..label = '2019'
                ..value = '2019'
                ..score = 0,
            ],
          'Vad ska man göra av uppsamlat kvicksilver från svensk tandvård?':
              Question()
                ..label = 'Was ist mit angesammeltem Quecksilber zu tun?'
                ..value = 'Was ist mit angesammeltem Quecksilber zu tun?'
                ..options = [
                  Option()
                    ..label =
                        'Abgabe bei einem qualifizierten Entsorgungsfachbetrieb'
                    ..value =
                        'Abgabe bei einem qualifizierten Entsorgungsfachbetrieb'
                    ..score = 1,
                  Option()
                    ..label = 'Zerstören'
                    ..value = 'Zerstören'
                    ..score = 0,
                  Option()
                    ..label = 'Über das Abwasser entsorgen'
                    ..value = 'Über das Abwasser entsorgen'
                    ..score = 0
                ],
          'Var ska sugmotorn vara installerad?': Question()
            ..label = 'Wo ist ein Saugmotor zu installieren?'
            ..value = 'Wo ist ein Saugmotor zu installieren?'
            ..options = [
              Option()
                ..label =
                    'In einem eigenen ‘Technikraum, getrennt vom Personal.'
                ..value =
                    'In einem eigenen ‘Technikraum, getrennt vom Personal.'
                ..score = 1,
              Option()
                ..label =
                    'Zentral in der Praxis, solange er zwischen die Behandlungsstühle und das System passt.'
                ..value =
                    'Zentral in der Praxis, solange er zwischen die Behandlungsstühle und das System passt.'
                ..score = 0,
              Option()
                ..label = 'Es spielt keine Rolle, solange Platz vorhanden ist.'
                ..value = 'Es spielt keine Rolle, solange Platz vorhanden ist.'
                ..score = 0
            ],
          'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?':
              Question()
                ..label =
                    'Wie oft ist das Waschbecken mit Amalgamabscheiderzu desinfizieren?'
                ..value =
                    'Wie oft ist das Waschbecken mit Amalgamabscheiderzu desinfizieren?'
                ..options = [
                  Option()
                    ..label = 'Jeden Arbeitstag'
                    ..value = 'Jeden Arbeitstag'
                    ..score = 1,
                  Option()
                    ..label = 'Einmal monatlich'
                    ..value = 'Einmal monatlich'
                    ..score = 0,
                  Option()
                    ..label = 'Einmal vierteljährlich'
                    ..value = 'Einmal vierteljährlich'
                    ..score = 0
                ],
          'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?':
              Question()
                ..label =
                    'Die Zahnarztpraxis ist verantwortlich für Routinen und Wartung von Amalgamabscheidern und Sauganlagen. Was gehört zur täglichen Wartung?'
                ..value =
                    'Die Zahnarztpraxis ist verantwortlich für Routinen und Wartung von Amalgamabscheidern und Sauganlagen. Was gehört zur täglichen Wartung?'
                ..options = [
                  Option()
                    ..value =
                        'Entleeren und Spülen der Grobsiebe/Speichelsaugersiebeoder Partikelfilter imWaschbecken mit Amalgamabscheidern.'
                    ..label =
                        'Entleeren und Spülen der Grobsiebe/Speichelsaugersiebeoder Partikelfilter imWaschbecken mit Amalgamabscheidern.'
                    ..score = 1,
                  Option()
                    ..label = 'Behälterfüllstand des Amalgamabscheiders prüfen.'
                    ..value = 'Behälterfüllstand des Amalgamabscheiders prüfen.'
                    ..score = 0,
                  Option()
                    ..label = 'Entleeren und Reinigen des Puffertanks'
                    ..value = 'Entleeren und Reinigen des Puffertanks'
                    ..score = 0
                ],
          'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?':
              Question()
                ..label =
                    'Was ist bei der Übertragung von Verantwortung im Hinblick auf die Dokumentation richtig?'
                ..value =
                    'Was ist bei der Übertragung von Verantwortung im Hinblick auf die Dokumentation richtig?'
                ..options = [
                  Option()
                    ..label =
                        'Die Zahnarztpraxis ist verantwortlich für die Aufzeichnung von Funktionsprüfungen und Abweichungen des Amalgamabscheiders und der Sauganlage'
                    ..value =
                        'Die Zahnarztpraxis ist verantwortlich für die Aufzeichnung von Funktionsprüfungen und Abweichungen des Amalgamabscheiders und der Sauganlage'
                    ..score = 1,
                  Option()
                    ..label =
                        'Der Hausbesitzer ist verantwortlich für die gesamte Dokumentation von Amalgamabscheidern und Sauganlagen.'
                    ..value =
                        'Der Hausbesitzer ist verantwortlich für die gesamte Dokumentation von Amalgamabscheidern und Sauganlagen.'
                    ..score = 0,
                  Option()
                    ..label =
                        'Servicetechniker sind verantwortlich für die gesamte Dokumentation von Amalgamabscheidern und Sauganlagen.'
                    ..value =
                        'Servicetechniker sind verantwortlich für die gesamte Dokumentation von Amalgamabscheidern und Sauganlagen.'
                    ..score = 0
                ],
          'Vad stämmer om installationen av sugslangar?': Question()
            ..label =
                'Was ist in Bezug auf die Installation von Saugleitungenrichtig?'
            ..value =
                'Was ist in Bezug auf die Installation von Saugleitungenrichtig?'
            ..options = [
              Option()
                ..label = 'Winkel solltenmindestens45 Grad betragen'
                ..value = 'Winkel solltenmindestens45 Grad betragen'
                ..score = 1,
              Option()
                ..label =
                    'Saugleitungen von der Einheit zum Boden sind zu verkleben'
                ..value =
                    'Saugleitungen von der Einheit zum Boden sind zu verkleben'
                ..score = 0,
              Option()
                ..label = 'Saugleitungen müssen aus Kohlefaser sein'
                ..value = 'Saugleitungen müssen aus Kohlefaser sein'
                ..score = 0
            ],
        }
      };
  }

  QuestionData data;
}
