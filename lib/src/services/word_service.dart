import 'dart:async';
import 'package:angular/angular.dart';
import '../models/resource.dart';
import '../models/word.dart';

@Injectable()
class WordService {
  Future<Map<String, Word>> fetchAll() async {
    await Future.delayed(const Duration(milliseconds: 1));
    return _data;
  }

  Map<String, Word> get data => _data;

  final Map<String, Word> _data = {
    'Amalgamavskiljare': Word()
      ..img_urls = [
        'pics/amalgam_separator.jpg',
        'pics/amalgam_separators_dry_system.jpeg'
      ]
      ..alts = {
        'sv': 'amalgamavskiljare torrt system',
        'en': 'amalgam separator dry system'
      }
      ..phrases['sv'] = (Phrases()
        ..description =
            'En anordning som fångar upp amalgampartiklar i det vatten som används vid tandvårdsbehandlingar, innan det går ut i avloppet. Genom filtrering, sedimentation, centrifugering eller en kombination av dessa skiljs amalgamet ut och blir kvar i behållaren. Amalgamet omhändertas sedan som miljöfarligt avfall. Amalgamavskiljare kan vara inbyggda i en unit eller placeras så att den kan kopplas till flera unitar.'
        ..name = 'Amalgamavskiljare')
      ..phrases['en'] = (Phrases()
        ..description =
            'A device which collects amalgam particles in the water used in dental treatment before it reaches the drain. By means of filtration, sedimentation, centrifuging or a combination of these methods the amalgam is separated and retained in the container. The amalgam is subsequently handled as environmentally hazardous waste. Amalgam separators can be built into a unit or located where they can be connected to multiple units.'
        ..name = 'Amalgam Separator')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Un dispositif qui capture les particules d’amalgames dans l’eau utilisée pour les traitements dentaires avant qu’elle n’atteigne les siphons. Par filtration, sédimentation, centrifugation ou association de tous, l’amalgame est séparé et reste dans le récipient. L’amalgame est ensuite géré comme déchet dangereux pour l’environnement. Les séparateurs d’amalgames peuvent être intégrés dans une unité ou placés là où ils peuvent être branchés à plusieurs unités.'
        ..name = 'Séparateur d’amalgames')
      ..phrases['es'] = (Phrases()
        ..description =
            'Se trata de un dispositivo capaz de recolectar las partículas de amalgama en el agua utilizada en los tratamientos dentales antes de que esta llegue al desagüe. La amalgama se separa y permanece en el recipiente gracias a procedimientos de filtración, sedimentación, centrifugación o una combinación de los anteriores. Posteriormente, se procede a gestionar la amalgama como residuo peligroso para el medio ambiente. Los separadores de amalgama se pueden instalar en una unidad en concreto o ubicarse en lugares en los que puedan quedar conectados a varias unidades.'
        ..name = 'Separador de amalgama')
      ..phrases['de'] = (Phrases()
        ..description =
            'Ein Gerät, das Amalgampartikel aus der zahnärztlichen Behandlung im Abwasser abscheidet. Durch Filtration, Sedimentation, Zentrifugation oder eine Kombination daraus wird das Amalgam abgeschieden und verbleibt im Sammelbehälter. Das Amalgam als gefährlicher Abfall behandelt. Amalgamabscheider können in eine Einheit eingebaut oder zentral in der Klinik verbaut sein.'
        ..name = 'Amalgamabscheider'),
    'Backventil': Word()
      ..img_urls = ['pics/check_valve.jpg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'I våta system måste det finnas en backventil efter amalgamavskiljaren för att undvika baksug.'
        ..name = 'Backventil')
      ..phrases['en'] = (Phrases()
        ..description =
            'Wet systems must incorporate a check valve ahead of the amalgam separator in order to prevent backflow.'
        ..name = 'Non-return valve')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Les systèmes humides doivent comprendre un clapet de retenue avant le séparateur d’amalgames afin d’éviter les reflux.'
        ..name = 'Clapet de retenue')
      ..phrases['es'] = (Phrases()
        ..description =
            'Los sistemas húmedos deben incorporar una válvula antirretorno delante del separador de amalgama para evitar el reflujo de líquido.'
        ..name = 'Válvula antirretorno')
      ..phrases['de'] = (Phrases()
        ..description =
            'Nasssaugsysteme müssen über ein Rückschlagventil hinterdem Amalgamabscheider verfügen, um einen Rückflusszu verhindern.'
        ..name = 'Amalgama dental'),
    'Dentalt amalgam': Word()
      ..img_urls = ['pics/dental_amalgam.jpg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Amalgam som fram till år 2009 var tillåtet som tandfyllnadsmaterial i Sverige. Består av kvicksilver (40-50%), silver (20-35%), tenn (12-15%) koppar (5-15%), zink (2%).'
        ..name = 'Dentalt amalgam')
      ..phrases['en'] = (Phrases()
        ..description =
            'Amalgam which, up until 2009, was permitted for use as dental filling material in Sweden. Consists of mercury (40-50%), silver (20-35%), tin (12-15%), copper (5-15%) and zinc (2%)'
        ..name = 'Dental amalgam')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Amalgames qui, jusqu’en 2009, pouvaient être utilisés comme matière de remplissage dentaire en Suède.’ Il comprend du mercure (40 à 50 %), de l’argent (20 à 35 %), de l’étain (12 à 15 %), du cuivre (5 à 15 %) et du zinc (2 %).'
        ..name = 'Amalgame dentaire')
      ..phrases['es'] = (Phrases()
        ..description =
            'La amalgama es un tipo de material cuya utilización como relleno para empastes dentales estuvo permitida en Suecia hasta el año 2009. Está compuesta de mercurio (40-50%), plata (20-35%), estaño (12-15%), cobre (5-15%) y zinc (2%). '
        ..name = 'Amalgama dental')
      ..phrases['de'] = (Phrases()
        ..description =
            'Nasssysteme müssen über ein Rückschlagventil vor dem Amalgamabscheider verfügen, um einen Rückfluss zu verhindern.'
        ..name = 'Rückschlagventil'),
    'Diskbänksavskiljare': Word()
      ..img_urls = ['pics/sink_separator.jpg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Amalgamavskiljare som fångar upp amalgampartiklar i det vatten som används vid vask för rengöring av instrument och övrig utrustning som har varit i kontakt med amalgam, innan de diskas/steriliseras i diskdesinfektor och autoklav.'
        ..name = 'Diskbänksavskiljare')
      ..phrases['en'] = (Phrases()
        ..description =
            'A dental amalgam separator which captures amalgam particles in the water which is used in the cleaning of dental instruments and other equipment which has been in contact with amalgam prior to being washed/sterilised in a disinfector and autoclave.'
        ..name = 'Sink trap')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Un séparateur d’amalgames dentaires qui capture les particules d’amalgames dans l’eau utilisée lors du nettoyage des instruments dentaires et autres équipements en contact avec les amalgames avant d’être nettoyés/stérilisés dans un désinfecteur et un autoclave.'
        ..name = 'Valves du lavabo')
      ..phrases['es'] = (Phrases()
        ..description =
            'Un tipo de separador de amalgama dental que es capaz de capturar las partículas de amalgama existentes en el agua utilizada para la limpieza de herramientas dentales y otros equipos que hayan podido estar en contacto con la amalgama antes de proceder a su lavado/esterilización en un esterilizador y en un autoclave.'
        ..name = 'Sifón')
      ..phrases['de'] = (Phrases()
        ..description =
            'Ein Dentalamalgamabscheider, der Amalgampartikel im Wasser aufnimmt, das für die Reinigung von zahnärztlichen Instrumenten und anderen Geräten verwendet wird, die vor dem Waschen/Sterilisieren in einem Desinfektionsgerät bzw. Autoklav mit Amalgam in Berührung kamen.'
        ..name = 'Amalgamabscheider unter dem Waschbecken'),
    'Föravskiljare': Word()
      ..img_urls = ['pics/amalgam_pre_separators.jpeg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Föravskiljare Installeras innan amalgamavskiljare för att fånga upp större partiklar som skulle kunna blockera efterföljande amalgamavskiljare.'
        ..name = 'Föravskiljare')
      ..phrases['en'] = (Phrases()
        ..description =
            'Pre-separator Installed ahead of the dental amalgam separator in order to collect large particles which have the potential to block the dental amalgam separator which it feeds.'
        ..name = 'Pre-separator')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Pré-séparateur installé en amont du séparateur d’amalgames dentaires afin de collecter les particules larges qui peuvent potentiellement bloquer le séparateur d’amalgames dentaires qu’il alimente.'
        ..name = 'Pré-séparateur')
      ..phrases['es'] = (Phrases()
        ..description =
            'Separador previo instalado delante del separador de amalgama dental para capturar las partículas más grandes que podrían llegar a bloquear el separador de amalgama en sí.'
        ..name = 'Separador previo')
      ..phrases['de'] = (Phrases()
        ..description =
            'Der Vorabscheider wird vor dem Amalgamabscheider montiert, um zum Beispiel größere Mengen Strahlmittel abzupuffern. Er kann auch verwendet werden, falls keine Filtersiebe vorgeschaltet sind.'
        ..name = 'Vorabscheider'),
    'Godkänd avfallsbehållare': Word()
      ..img_urls = ['pics/approved_waste_container.jpg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Behållare för riskavfall såsom kvicksilver ska vara UN-godkänd och uppfylla kraven för transport av farligt avfall. UN-nummer är ett identifieringsnummer för farligt gods.'
        ..name = 'Godkänd avfallsbehållare')
      ..phrases['en'] = (Phrases()
        ..description =
            'Containers for hazardous waste such as mercury must be UN-certified and fulfil requirements for transportation of hazardous waste. The UN number is an identification number for hazardous materials.'
        ..name = 'Approved waste container')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Les conteneurs pour les déchets dangereux tels que le mercure doivent être agréés UN et répondre aux exigences de transport des déchets dangereux. Le nombre UN est un numéro d’identification pour les matières dangereuses.'
        ..name = 'Conteneur à déchets agréé')
      ..phrases['es'] = (Phrases()
        ..description =
            'Los contenedores destinados al deshecho de residuos peligrosos como el mercurio deben estar certificados por la ONU y cumplir con los requisitos dispuestos para el transporte de residuos peligrosos. El número de la ONU es un código que permite identificar los materiales peligrosos.'
        ..name = 'Contenedor certificado para el deshecho de residuos')
      ..phrases['de'] = (Phrases()
        ..description =
            'Die Behälter für gefährliche Abfälle (Quecksilber) müssen UN-zertifiziert sein und sollten über eine Quecksilberdampf unterdrückende Chemikalie verfügen. Die UN Zertifizierung ist für den Transport notwendig.'
        ..name = 'Zugelassener Abfallbehälter'),
    'Grovsil / Salivsugfilter / Partikelfälla': Word()
      ..img_urls = ['pics/particle_filter.png']
      ..phrases['sv'] = (Phrases()
        ..description =
            'För  att  förbättra  amalgamavskiljarens  funktion  och  ta  bort  större  fasta  partiklar  är  unitens  sug  utrustad  med  grovsil/salivsugfilter  eller  partikelfälla.  Den  sistnämnda  är  av  engångstyp.'
        ..name = 'Grovsil / Salivsugfilter / Partikelfälla')
      ..phrases['en'] = (Phrases()
        ..description =
            'In order to improve the functioning of the amalgam separator and remove large solid particles, the unit’s suction unit is equipped with a coarse strainer/saliva suction filter or a particulate trap.  The latter is of the disposable variety.'
        ..name = 'Coarse strainer/saliva suction filter/particle trap')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Afin d’améliorer le fonctionnement du séparateur d’amalgames et de retirer les larges particules solides, l’élément d’aspiration de l’unité est doté d’un gros filtre/un filtre d’aspiration de la salive, ou d’un piège à particules.  Le dernier est jetable.'
        ..name =
            'Gros filtre/filtre d’aspiration de la salive/piège à particules')
      ..phrases['es'] = (Phrases()
        ..description =
            'Para optimizar el funcionamiento del separador de amalgama y poder, de esta forma, eliminar las partículas sólidas más grandes, el dispositivo de succión de la unidad está equipado con un filtro grueso/filtro de succión de saliva o con un retenedor de partículas  Este último tipo de filtro de partículas mencionado es desechable.'
        ..name =
            'Filtro grueso/filtro de succión de saliva/retenedor de partículas')
      ..phrases['de'] = (Phrases()
        ..description =
            'Um die Funktion des Amalgamabscheiders zu verbessern und größerePartikel zu entfernen, ist die Behandlungseinheitmit einem Grobsieb/Speichelsaugfilter oder Partikelfilter auszustatten'
        ..name = 'Grobsieb/Speichelsaugfilter/Partikelfilter'),
    'Kompressor': Word()
      ..img_urls = ['pics/compressor.jpg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Kompressor är ett aggregat som tar luft från omgivningen, pressar ihop den med hjälp av en motor och lagrar den komprimerade luften i en tank (tryckkärl/behållare). Den komprimerade luften kan sen användas vid behov genom att dras via luftrör/slangar till den plats där t. ex. tandläkarutrustningen är placerad. Tryckluft används bl. a. för att kunna driva turbiner/hand/vinkelstycket och för att blåsa rent vid behandlingar.'
        ..name = 'Kompressor')
      ..phrases['en'] = (Phrases()
        ..description =
            'A compressor is a unit which takes air from its surroundings, compresses it using a motor and stores it in a tank (pressurised). The compressed air can then be used when needed via an air hose leading to where e.g. dental equipment is located. Compressed air is used to power turbines and implements and to clear saliva and debris during treatment.'
        ..name = 'Compressor')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Un compresseur est une unité qui absorbe l’air de son environnement, le comprime à l’aide d’un moteur et le stocke dans un réservoir (sous pression). L’air comprimé peut ensuite être utilisé lorsque requis avec un tuyau d’air allant où se trouve l’équipement dentaire par ex. L’air comprimé est utilisé pour alimenter les turbines et les outils, ainsi que pour aspirer la salive et les débris lors du traitement.'
        ..name = 'Compresseur')
      ..phrases['es'] = (Phrases()
        ..description =
            'Un compresor es una unidad que toma aire de sus alrededores, lo comprime y, a continuación, se sirve de un motor para almacenarlo en un tanque (presurizado). Gracias a ello, cuando sea necesario, se puede conducir el aire comprimido, a través de mangueras de aire, hasta distintos puntos, como por ejemplo, el lugar en el que los equipos de la clínica están instalados. El aire comprimido permite impulsar las turbinas y herramientas, así como para limpiar la saliva y los residuos durante el tratamiento.'
        ..name = 'Compresor')
      ..phrases['de'] = (Phrases()
        ..description =
            'Ein Kompressor ist einGerät, dasLuft aus der Umgebung mithilfe eines Motors verdichtet und sie in einem (Druck-)Tank speichert. Die Druckluft kann dann bei Bedarf über einen Luftschlauch, der zu den zahnärztlichen Geräten führt, verwendet werden. Druckluft wird verwendet, um Turbinen und Geräte anzutreiben'
        ..name = 'Kompressor'),
    'Pumpbox': Word()
      ..img_urls = ['pics/pumpbox.jpeg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Installeras för att förflytta vatten, från sekretkärl/bufferttank eller där flödesfall ej är tillräckligt.'
        ..name = 'Pumpbox')
      ..phrases['en'] = (Phrases()
        ..description =
            'Installed in order to transfer water from a secretion tank/buffer tank or where the flow of water is insufficient.'
        ..name = 'Pump box')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Installé pour transférer l’eau d’un réservoir de sécrétion/tampon ou où le flux d’eau est insuffisant.'
        ..name = 'Boîtier de pompe')
      ..phrases['es'] = (Phrases()
        ..description =
            'Se instala para permitir el paso del agua desde un tanque de secreción/tanque intermedio o en cualquier lugar en el que el flujo de agua sea insuficiente.'
        ..name = 'Bomba de agua')
      ..phrases['de'] = (Phrases()
        ..description =
            'Installiert, um Wasser von einem Sekrettank/Puffertank zu befördern, oder wenn der Wasserfluss nicht ausreichend ist.'
        ..name = 'Pumpe'),
    'Sanering': Word()
      ..img_urls = ['pics/decontamination.jpg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Vid en sanering högtrycksspolas kvicksilverförorenade avloppsrör och vattenlås och golvbrunnar töms och rengörs. Amalgamslammet och spolvattnet omhändertas som farligt avfall av företag som har tillstånd att transportera detta. Rören blir aldrig helt rena från kvicksilver och måste därför märkas upp så att de omhändertas som farligt avfall vid demontering. Driftsaneringar ska göras regelbundet. I samband med att en mottagning läggs ned görs en så kallad nedläggningssanering, vilket innebär att man demonterar sugledningar och pluggar igen spolpunkter för att inget kvicksilver ska rinna ut i avloppet.'
        ..name = 'Sanering')
      ..phrases['en'] = (Phrases()
        ..description =
            'Decontamination involves pressure-washing drainpipes and emptying/cleaning water locks and floor drains contaminated with mercury,  Amalgam slurry and water from the pressure washer are treated as hazardous waste by companies authorised to transport them. The pipe is never quite free of mercury and therefore has to be labelled for handling as hazardous waste when dismantled. Decontamination must be performed regularly. When a dental practice closes down, a final decontamination is performed, which involves dismantling suction pipes and plugging rinsing points to prevent mercury getting into the drains.'
        ..name = 'Decontamination')
      ..phrases['fr'] = (Phrases()
        ..description =
            'La décontamination implique le nettoyage à haute pression des tuyaux de vidange et la vidange/le nettoyage des clapets anti-retour et siphons de sol contaminés par le mercure. L’eau et boues des amalgames provenant du nettoyeur à haute pression sont traitées comme des déchets dangereux par les entreprises agréées pour les transporter. Le tuyau a toujours une faible quantité de mercure et, par conséquent, cela doit être indiqué pour assurer un traitement comme déchet dangereux lors de sa destruction. La décontamination doit être régulièrement réalisée. Lorsqu’un cabinet dentaire ferme, une décontamination finale est réalisée, qui implique la destruction des tuyaux d’aspiration et l’obturation des points de rinçage pour empêcher au mercure d’aller dans les siphons.'
        ..name = 'Décontamination')
      ..phrases['es'] = (Phrases()
        ..description =
            'La descontaminación implica el lavado a presión de tuberías de desagüe, el vaciado/limpiado de esclusas de agua y desagües de suelo contaminados con mercurio. El lodo lodo y el agua con amalgama del limpiador a presión han de ser gestionados como residuos peligrosos por empresas autorizadas para su transporte. Los tubos nunca están completamente libres de mercurio y, por tanto, deben ser etiquetados para su manejo como desechos peligrosos una vez desmontados. Se debe proceder a la descontaminación de forma regular. Cuando se cierra una clínica dental, se lleva a cabo una descontaminación final, un proceso a lo largo del cual se procede a desmantelar las tuberías de succión y los puntos de enjuague para evitar que el mercurio penetre en los desagües.'
        ..name = 'Descontaminación')
      ..phrases['de'] = (Phrases()
        ..description =
            'Dekontamination umfasst die Reinigung von Abwasserleitungenund das Reinigen von mit Quecksilber kontaminierten Siphonsund Bodenabläufen. Anfallender Amalgamschlammund Abwasser aus dem Reinigungsind als gefährlicher Abfallzu behandeln und dürfen nur von qualifizierten Entsorgungsunternehmen entsorgt werden. Die Abwasserleitungensindnie frei von Quecksilber und müssen daher bei der Demontage als gefährlicher Abfall gekennzeichnet werden. Die Dekontamination muss regelmäßig erfolgen. Wenn eine Zahnarztpraxis geschlossen wird, muss eine abschließende Dekontamination durchgeführtwerden.Wenn möglich müssen die Abwasser-und Saugleitungen demontiert werden und die Bodenabläufe festverschlossen werden.'
        ..name = 'Dekontamination'),
    'Saneringsprotokoll': Word()
      ..img_urls = ['pics/remidiation_protocol.jpeg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Dokumentation från företaget som utfört saneringen där bl.a. metod som använts och mängd insamlat kvicksilver framgår. I dokumentationen syns också hur det farliga avfallet har omhändertagits, d.v.s. att transportören har tillstånd och att det lämnats in på en anläggning som tar emot farligt avfall. '
        ..name = 'Saneringsprotokoll')
      ..phrases['en'] = (Phrases()
        ..description =
            'Documentation recorded by the practice concerning decontamination carried out, including the method used and the quantity of mercury collected. The documentation also covers how hazardous waste is dealt with, i.e. that the transporter is authorised and that it is taken to a facility licensed to receive hazardous waste.'
        ..name = 'Decomtamination protocol')
      ..phrases['fr'] = (Phrases()
        ..description =
            'La documentation enregistrée par le cabinet à propos de la décontamination réalisée, notamment la méthode utilisée et la quantité de mercure collectée. La documentation couvre également la méthode de traitement des déchets dangereux, c.-à-d. que le transporteur est autorisé et que les déchets sont transportés vers une installation autorisée à recevoir des déchets dangereux.'
        ..name = 'Protocole de décontamination')
      ..phrases['es'] = (Phrases()
        ..description =
            'Documentación registrada en la clínica en relación a los procedimientos de descontaminación llevados a cabo. En dicha documentación también se especifican los métodos utilizados y las cantidades de mercurio recolectadas. La documentación también incluye información sobre la forma en la que se gestionan los residuos peligrosos. Es decir, que el transportista está autorizado y que se llevan a instalaciones específicas para su recepción.'
        ..name = 'Protocolo de descontaminación')
      ..phrases['de'] = (Phrases()
        ..description =
            'Von der Praxis erstellte Dokumentation über die durchgeführte Dekontamination, welche u.a. die verwendete Methode und die Menge des gesammelten Quecksilbers enthält. Die Dokumentation umfasst auch den fachgerechten Transport, sowie die fachgerechte Entsorgung des gefährlichen Abfalls.'
        ..name = 'Dekontaminationsprotokoll'),
    'Torrt sugsystem': Word()
      ..img_urls = ['pics/amalgam_separators_dry_system.jpeg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Vid torra sugsystem sker separationen av vätska och luft i en vätskeavskiljare (sekretavskiljare) som finns i uniten. Amalgamavskiljaren finns i eller i anslutning till uniten. Utgående vätska efter amalgamavskiljaren ansluter direkt till fastighetens spillavloppssystem, ofta till en golvbrunn. Luften sugs från vätskeavskiljaren till sugmotorn, som betjänar flera unitar. Sugmotorn kan vara placerad på vinden, samma plan som uniten eller på källarplan.'
        ..name = 'Torrt sugsystem')
      ..phrases['en'] = (Phrases()
        ..description =
            'In the case of a dry suction system the separation of liquid and air takes place in a liquid separator (secretion separator) located in the unit. The amalgam separator is located at, or is connected to, the unit. Outgoing liquid after the amalgam separator is directly connected to the facility’s waste water drain, typically a floor drain. The air is extracted from the liquid separator by a suction motor which serves multiple units. The suction motor may be situated in the loft, on the same floor as the unit or in the basement.'
        ..name = 'Dry suction system')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Si un système d’aspiration sec, la séparation des liquides et de l’air a lieu dans un séparateur de liquides (séparateur de sécrétions) situé dans l’unité. Le séparateur d’amalgames se trouve dans, ou est branché à, l’unité. Le liquide sortant après le séparateur d’amalgames est directement relié à la purge des eaux usées de l’installation, généralement un siphon de sol. L’air est extrait du séparateur de liquides grâce à un moteur d’aspiration qui désert plusieurs unités. Le moteur d’aspiration peut se trouver dans le grenier, au même étage sur l’unité ou au sous-sol.'
        ..name = 'Système d’aspiration à sec')
      ..phrases['es'] = (Phrases()
        ..description =
            'En los casos en los que se esté utilizando un sistema de succión en seco, la separación de líquido y aire se produce en un separador de líquido ubicado en la unidad. El separador de amalgama está ubicado en la unidad o conectado a ella. El líquido saliente del separador de amalgama queda conectado directamente al sistema de drenaje de aguas residuales de la instalación, que normalmente suele ser un desagüe de suelo. > El aire se extrae del separador de líquidos mediante un motor de succión que funciona para varias unidades al mismo tiempo.> El motor de succión puede estar situado en una buhardilla, en el mismo piso que la unidad o en un sótano.'
        ..name = 'Sistema de succión seca')
      ..phrases['de'] = (Phrases()
        ..description =
            'Bei einem Trockensaugsystem wird in der Behandlungseinheit Wasser/Amalgam von derLuft separiert. Dezentrale Der Amalgamabscheider befindet sich in der Einheit oder ist an dieserangeschlossen. Hinterdem Amalgamabscheidergelangt das gereinigte Wasser direkt in die Hausentwässerung des Objektes, in der Regel ein Bodenablauf. Die Saugmaschine ist zentral aufgestellt und bedient mehrere Behandlungseinheiten. Die Saugmaschine kann sich oberhalb/unterhalb der Zahnarztpraxis befinden, oder kann auf der gleichen Etage installiert sein'
        ..name = 'Trockensauganlage'),
    'Utjämningskärl': Word()
      ..img_urls = ['pics/surge_vessel_2.jpeg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Utjämningskärl på tio liter installeras ofta till diskbänksavskiljare. Det har ingen effekt på amalgamavskiljningen, men medför att man kan spola med ett högre flöde. Genom att använda ett utjämningskärl undviker man att vatten blir stående i vasken.'
        ..name = 'Utjämningskärl')
      ..phrases['en'] = (Phrases()
        ..description =
            'A 10-litre surge tank is typically installed in connection with a sink trap. This has no effect on the amalgam separation process, but allows for sluicing at a higher flow rate. The use of a surge tank makes it possible to avoid water remaining in the sink.'
        ..name = 'Surge tank')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Un réservoir tampon de 10 litres est généralement installé avec une valve de lavabo. Cela n’a aucun effet sur le processus de séparation des amalgames, mais cela permet de drainer à des débits plus élevés. L’utilisation d’un réservoir tampon permet d’empêcher l’eau de rester dans le lavabo.'
        ..name = 'Réservoir tampon')
      ..phrases['es'] = (Phrases()
        ..description =
            'Normalmente, se suele instalar una cámara de compensación de 10 litros de capacidad que funciona en conexión con un sifón. Ello no tiene ningún tipo de efecto en el procedimiento de separación de amalgama, pero sí permite escurrir un flujo de agua mayor. El uso de una cámara de compensación permite evitar que quede agua en el lavabo.'
        ..name = 'Cámara de compensación')
      ..phrases['de'] = (Phrases()
        ..description =
            'Ein 10-Liter-Ausgleichsbehälter ist in der Regel in Verbindung mit einem Amalgamabscheider unter dem Waschbeckeninstalliert. Das hat keine Auswirkungen auf den Vorgang der Amalgamabscheidung, ermöglicht aber eine höhere Durchflussrate. Durch die Verwendung eines Ausgleichsbehälters wird verhindert, dass Wasser in der Spüle steht.'
        ..name = 'Ausgleichsbehälter'),
    'Vattenlås': Word()
      ..img_urls = ['pics/siphon.jpeg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'En sektion av ett vattenrör som är böjt så att en mängd vatten stannar kvar i böjen, tack vare gravitationen, och skiljer luftmassorna på låsets båda sidor. Vattnet i vattenlåset förhindrar på så sätt att dålig lukt, sjukdomar och ohyra från avloppssystemet passerar. På en tandvårdsmottagning finns vattenlås på tvättställ i t ex behandlingsrum, steril och på patienttoalett.'
        ..name = 'Vattenlås')
      ..phrases['en'] = (Phrases()
        ..description =
            'A section of a water pipe which is curved such that a quantity of water comes to a standstill in the bend by means of gravity and separates the pockets of air on either side of the trap. In this way the water in the water trap prevents unpleasant odours, disease and vermin from passing through the drainage system. Water traps in dental practices are fitted in washbasins e.g. in the treatment room, sterilisation areas and in the patient toilet.'
        ..name = 'Water trap')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Une partie du tuyau d’eau qui est courbée de sorte qu’une quantité d’eau soit à l’arrêt dans le coude à cause de la gravité et sépare les poches d’air des deux côtés du séparateur. De cette manière, le séparateur d’eau évite les odeurs déplaisantes, les maladies et les vermines de passer par le système de drainage. Les séparateurs d’eau dans les cabinets dentaires sont dotés de bassins de lavage, par ex. dans la salle de traitement, les zones de stérilisation et dans les toilettes des patients.'
        ..name = 'Séparateur d’eau')
      ..phrases['es'] = (Phrases()
        ..description =
            'Se trata de una sección de tubería de agua que presenta una forma curvada para que el agua se estanque en ella por efecto de la gravedad y, gracias a ello, separar las bolsas de agua a cada lado del colector de agua. De esta forma, el agua que queda en el colector evita que los olores desagradables, enfermedades y plagas avancen a través del sistema de drenaje. Los colectores de agua de las clínicas dentales están instalados en lavabos. Por ejemplo, en aquellos situados en las salas de tratamiento, las áreas de esterilización y los baños de los pacientes.'
        ..name = 'Colector de agua')
      ..phrases['de'] = (Phrases()
        ..description =
            'Der Siphon ist ein Geruchsverschluss der in einer Abwasserleitung installiert wird. Dadurch wird verhindert das, unangenehme Gerüche, Krankheitskeime und Ungeziefer aus der Kanalisation austreten können. Siphons in Zahnarztpraxis sind an Waschbecken angebracht, z. B. im Behandlungsraum, in Sterilisatonsbereichen und in der Patiententoilette'
        ..name = 'Siphon'),
    'Vattenprov': Word()
      ..img_urls = ['pics/water_sample.jpeg']
      ..phrases['sv'] = (Phrases()
        ..description =
            'Analys av kvicksilverutsläpp i avloppsvattnet. Provet tas efter amalgamavskiljaren.'
        ..name = 'Vattenprov')
      ..phrases['en'] = (Phrases()
        ..description =
            'Analysis of mercury emissions in waste water. Samples are taken after the water has passed through the amalgam separator.'
        ..name = 'Water sampling')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Analyse des émissions de mercure dans les eaux usées. Des échantillons sont prélevés une fois l’eau passée par le séparateur d’amalgames.'
        ..name = 'Échantillon d’eau')
      ..phrases['es'] = (Phrases()
        ..description =
            'Análisis realizados para determinar el nivel de emisiones de mercurio en aguas residuales. Las muestras se toman después de que el agua haya pasado por el separador de amalgama.'
        ..name = 'Muestras de agua')
      ..phrases['de'] = (Phrases()
        ..description =
            'Analyse von Quecksilberemissionen im Abwasser. Proben werden genommen, nachdem das Wasser durch den Amalgamabscheider geflossen ist.'
        ..name = 'Abwasserprobenahme'),
    'Vått sugsystem': Word()
      ..img_urls = [
        'pics/wet_suction_system.jpg',
        'pics/wet_suction_system_2.jpg'
      ]
      ..alts = {
        'sv': 'Exempel på våta sugsystem med sedimenterande amalgamavskiljning.'
      }
      ..phrases['sv'] = (Phrases()
        ..description =
            'I ett vått sugsystem är en eller flera behandlingsstolar kopplade till ett vakuumrörsystem där luft och vätska transporteras till den centrala sugutrustningen. I utrustningen separeras luft och vatten. Vattnet avleds vidare via amalgamavskiljare och luften går vidare via sugmotorn. Denna typ av sugutrustning kan installeras på samma plan som kliniken, men rekommendation är att installation görs på våningen under då det är lättare att uppnå bästa möjliga driftförutsättningar.'
        ..name = 'Vått sugsystem')
      ..phrases['en'] = (Phrases()
        ..description =
            'In a wet suction system, one or more treatment chairs are linked to a vacuum pipe system in which air and liquids are carried to the central suction system. Air and water are separated in the equipment. Water is passed onwards via the amalgam separator and the air via the suction motor. This type of suction equipment can be installed on the same floor as the clinic, but installation is recommended on the floor below to ensure the best possible operating conditions.'
        ..name = 'Wet section system')
      ..phrases['fr'] = (Phrases()
        ..description =
            'Dans un système d’aspiration humide, une ou plusieurs chaises de traitements sont associées à un système de tuyaux d’aspiration où les airs et liquides sont transportés vers le système d’aspiration central. L’air et l’eau sont séparés dans l’équipement. L’eau passe en avant depuis le séparateur d’amalgames, et l’air passe par le moteur d’aspiration. Ce type d’équipement d’aspiration peut être installé sur le même sol que la clinique, mais une installation au niveau inférieur est recommandée pour assurer les meilleures conditions de fonctionnement possibles.'
        ..name = 'Système d’aspiration humide')
      ..phrases['es'] = (Phrases()
        ..description =
            'En los sistemas de succión húmedos, se conecta una o más sillas de tratamiento a un sistema de tubos de vacío en el que el aire y los líquidos son transportados al sistema de succión central. El aire y el agua quedan, de esta forma, separados en el equipo. El agua avanza hacia adelante a través del separador de amalgama y el aire hace lo mismo a través del motor de succión. Es posible instalar este tipo de equipos de succión en la misma planta que en la que se encuentra la clínica, pero se recomienda hacerlo en un piso inferior para garantizar unas condiciones de funcionamiento óptimas.'
        ..name = 'Sistemas de succión húmeda')
      ..phrases['de'] = (Phrases()
        ..description =
            'In einem Nasssaugsystemsind ein oder mehrere Behandlungsstühle mit einem Vakuumrohrsystem verbunden, in dem Luft und Flüssigkeiten zu einer zentralen Sauganlage befördert werden. Luft und Wasser werden in der Anlage getrennt. Wasser wirdüber den Amalgamabscheider geleitet und die Luft über die Saugmaschine abgeführt. Diese Art von Saugsystem kann auf der gleichen Etage in der Zahnarztpraxis installiert werden, aber die Installation in der darunterliegenden Etage wird empfohlen, um die bestmöglichen Betriebsbedingungen zu gewährleisten.'
        ..name = 'Nasssaugsystem'),
  };
}
