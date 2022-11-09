final List<double> energyKjQualityBreakpoints = [0, 670, 1340, 2345, 3350];
final List<double> energyKcalQualityBreakpoints = [0, 160, 320, 560, 800];
//final List<double> sugarGQualityBreakpoints = [0, 9, 18, 31, 45];
final List<double> sugarGQualityBreakpoints = [0, 1.5, 4.5, 9, 13.5];
final List<double> saturatedFatGQualityBreakpoints = [0, 2, 4, 7, 10];
final List<double> sodiumMgQualityBreakpoints = [0, 180, 360, 630, 900];

final List<double> fruiteVegeQualityBreakpoints = [0, 40, 60, 80, 100];
final List<double> fiberQualityBreakpoints = [0, 0.7, 1.4, 2.8, 3.5];
final List<double> prteinsQualityBreakpoints = [0, 1.6, 3.2, 6.4, 8];

/// breakpoints specific for beverages products
final List<double> energyKjQualityBreakpointsForBeverage = [
  0,
  30,
  90,
  180,
  270
];
// final List<double> energyKcalQualityBreakpointsForBeverage = [0, 7, 21, 42, 65];
final List<double> energyKcalQualityBreakpointsForBeverage = [
  0,
  30,
  90,
  180,
  270
];

// final List<double> sugarGQualityBreakpointsForBeverage = [0, 1.5, 4.5, 9, 13.5];
final List<double> sugarGQualityBreakpointsForBeverage = [0, 9, 18, 31, 45];
final List<double> fruiteVegeQualityBreakpointsForBeverage = [
  0,
  40,
  60,
  80,
  100
];

/// breakpoints specific for added fat products
final List<double> saturatedFatGQualityBreakpointsForAddedFat = [
  0,
  15,
  27,
  45,
  64
];

final additivesData = {
  "e100": {
    "tag": "E100",
    "penalty": 0,
    "name": "Curcumine",
    "family": "Colorants Jaune"
  },
  "e100i": {
    "tag": "E100i",
    "penalty": 0,
    "name": "Curcumine",
    "family": "Colorants Jaune"
  },
  "e100ii": {
    "tag": "E100ii",
    "penalty": 0,
    "name": "Curcuma",
    "family": "Colorants Jaune"
  },
  "e101": {
    "tag": "E101",
    "penalty": 0,
    "name": "Vitamine G",
    "family": "Colorants Jaune"
  },
  "e101i": {
    "tag": "E101i",
    "penalty": 0,
    "name": "Riboflavin",
    "family": "Colorants Jaune"
  },
  "e101ii": {
    "tag": "E101ii",
    "penalty": 0,
    "name": "Riboflavine 5'-phosphate",
    "family": "Colorants Jaune"
  },
  "e101iii": {
    "tag": "E101iii",
    "penalty": 0,
    "name": "Riboflavine de Bacillus subtilis",
    "family": "Colorants Jaune"
  },
  "e130": {
    "tag": "E130",
    "penalty": 0,
    "name": "Manascorubine",
    "family": "Colorants Bleu"
  },
  "e140": {
    "tag": "E140",
    "penalty": 0,
    "name": "Chlorophylle",
    "family": "Colorants Vert"
  },
  "e141": {
    "tag": "E141",
    "penalty": 0,
    "name": "Complexes cuivre-chlorophylles",
    "family": "Colorants Vert"
  },
  "e141i": {
    "tag": "E141i",
    "penalty": 0,
    "name": "Complexes cupriques de chlorophylles",
    "family": "Colorants Vert"
  },
  "e141ii": {
    "tag": "E141ii",
    "penalty": 0,
    "name":
        "Sels de sodium et de potassium de complexes cupriques de chlorophyllines",
    "family": "Colorants Vert"
  },
  "e150a": {
    "tag": "E150a",
    "penalty": 0,
    "name": "Caramel",
    "family": "Colorants Brun"
  },
  "e150c": {
    "tag": "E150c",
    "penalty": 0,
    "name": "Caramel ammoniacal",
    "family": "Colorants Brun"
  },
  "e153": {
    "tag": "E153",
    "penalty": 0,
    "name": "Charbon végétal",
    "family": "Colorants Noir"
  },
  "e160c": {
    "tag": "E160c",
    "penalty": 0,
    "name": "Paprika",
    "family": "Colorants Orange"
  },
  "e160d": {
    "tag": "E160d",
    "penalty": 0,
    "name": "Lycopène",
    "family": "Colorants Orange"
  },
  "e160di": {
    "tag": "E160di",
    "penalty": 0,
    "name": "Lycopène de synthèse",
    "family": "Colorants Orange"
  },
  "e160dii": {
    "tag": "E160dii",
    "penalty": 0,
    "name": "Lycopène de tomate",
    "family": "Colorants Orange"
  },
  "": {"tag": "", "penalty": "", "name": "", "family": ""},
  "e160diii": {
    "tag": "E160diii",
    "penalty": 0,
    "name": "Lycopène de Blakeslea trispora",
    "family": "Colorants Orange"
  },
  "e160e": {
    "tag": "E160e",
    "penalty": 0,
    "name": "Apocaroténal",
    "family": "Colorants Rouge"
  },
  "e160f": {
    "tag": "E160f",
    "penalty": 0,
    "name": "Food orange 7",
    "family": "Colorants Orange"
  },
  "e161": {
    "tag": "E161",
    "penalty": 0,
    "name": "Xanthophylle",
    "family": "Colorants Jaune"
  },
  "e161a": {
    "tag": "E161a",
    "penalty": 0,
    "name": "Flavoxanthine",
    "family": "Colorants Jaune"
  },
  "e161b": {
    "tag": "E161b",
    "penalty": 0,
    "name": "Lutéines",
    "family": "Colorants Jaune"
  },
  "e161bi": {
    "tag": "E161bi",
    "penalty": 0,
    "name": "Lutéines de Tagetes erecta",
    "family": "Colorants Jaune"
  },
  "e161bii": {
    "tag": "E161bii",
    "penalty": 0,
    "name": "Extraits de tagetes",
    "family": "Colorants Jaune"
  },
  "e161c": {
    "tag": "E161c",
    "penalty": 0,
    "name": "Cryptoxanthine",
    "family": "Colorants Jaune"
  },
  "e161d": {
    "tag": "E161d",
    "penalty": 0,
    "name": "Rubixanthine",
    "family": "Colorants Jaune"
  },
  "e161e": {
    "tag": "E161e",
    "penalty": 0,
    "name": "Violaxanthine",
    "family": "Colorants Jaune"
  },
  "e161f": {
    "tag": "E161f",
    "penalty": 0,
    "name": "Rhodoxanthine",
    "family": "Colorants Jaune"
  },
  "e161j": {
    "tag": "E161j",
    "penalty": 0,
    "name": "Astaxanthin",
    "family": "Colorants Rose"
  },
  "e162": {
    "tag": "E162",
    "penalty": 0,
    "name": "Rouge de betterave",
    "family": "Colorants Rouge"
  },
  "e163": {
    "tag": "E163",
    "penalty": 0,
    "name": "Anthocyanes",
    "family": "Colorants Rouge"
  },
  "e163ii": {
    "tag": "E163ii",
    "penalty": 0,
    "name": "Extrait de peau de raisin",
    "family": "Colorants Rouge"
  },
  "e163iii": {
    "tag": "E163iii",
    "penalty": 0,
    "name": "Extrait de cassis",
    "family": "Colorants Rouge"
  },
  "e163iv": {
    "tag": "E163iv",
    "penalty": 0,
    "name": "Colorant du maïs pourpre",
    "family": "Colorants Rouge"
  },
  "e163v": {
    "tag": "E163v",
    "penalty": 0,
    "name": "Colorant du chou rouge",
    "family": "Colorants Rouge"
  },
  "e164": {
    "tag": "E164",
    "penalty": 0,
    "name": "Jaune de gardénia",
    "family": "Colorants Jaune"
  },
  "e165": {
    "tag": "E165",
    "penalty": 0,
    "name": "Bleu de gardénia",
    "family": "Colorants Bleu"
  },
  "e166": {
    "tag": "E166",
    "penalty": 0,
    "name": "Bois de santal",
    "family": "Colorants Rouge"
  },
  "e170": {
    "tag": "E170",
    "penalty": 0,
    "name": "Carbonate de calcium",
    "family": "Colorants Blanc"
  },
  "e170i": {
    "tag": "E170i",
    "penalty": 0,
    "name": "Carbonate de calcium",
    "family": "Colorants Blanc"
  },
  "e170ii": {
    "tag": "E170ii",
    "penalty": 0,
    "name": "Carbonate acide de calcium",
    "family": "Colorants Blanc"
  },
  "e172": {
    "tag": "E172",
    "penalty": 0,
    "name": "Oxydes de fer",
    "family": "Colorants Diverses"
  },
  "e172i": {
    "tag": "E172i",
    "penalty": 0,
    "name": "Oxyde de fer, noir",
    "family": "Colorants Noir"
  },
  "e172ii": {
    "tag": "E172ii",
    "penalty": 0,
    "name": "Oxyde de fer, rouge",
    "family": "Colorants Rouge"
  },
  "e172iii": {
    "tag": "E172iii",
    "penalty": 0,
    "name": "Oxyde de fer, jaune",
    "family": "Colorants Jaune"
  },
  "e175": {"tag": "E175", "penalty": 0, "name": "Or", "family": "Colorants Or"},
  "e180": {
    "tag": "E180",
    "penalty": 0,
    "name": "Pigments rubine",
    "family": "Colorants Rubis"
  },
  "e182": {
    "tag": "E182",
    "penalty": 0,
    "name": "Orseille",
    "family": "Colorants rouge violet"
  },
  "e200": {
    "tag": "E200",
    "penalty": 0,
    "name": "Acide sorbique",
    "family": "Conservateurs"
  },
  "e201": {
    "tag": "E201",
    "penalty": 0,
    "name": "Sorbate de sodium",
    "family": "Conservateurs"
  },
  "e202": {
    "tag": "E202",
    "penalty": 0,
    "name": "Sorbate de potassium",
    "family": "Conservateurs"
  },
  "e203": {
    "tag": "E203",
    "penalty": 0,
    "name": "Sorbate de calcium",
    "family": "Conservateurs"
  },
  "e234": {
    "tag": "E234",
    "penalty": 0,
    "name": "Nisine",
    "family": "Conservateurs"
  },
  "e262": {
    "tag": "E262",
    "penalty": 0,
    "name": "Diacétate de sodium hydrogène",
    "family": "Conservateurs"
  },
  "e262i": {
    "tag": "E262i",
    "penalty": 0,
    "name": "Acétate de sodium",
    "family": "Conservateurs"
  },
  "e262ii": {
    "tag": "E262ii",
    "penalty": 0,
    "name": "Diacétate de sodium",
    "family": "Conservateurs"
  },
  "e263": {
    "tag": "E263",
    "penalty": 0,
    "name": "Acétate de calcium",
    "family": "Conservateurs"
  },
  "e270": {
    "tag": "E270",
    "penalty": 0,
    "name": "Acide lactique",
    "family": "Acidifiants"
  },
  "e290": {
    "tag": "E290",
    "penalty": 0,
    "name": "Dioxyde de carbone",
    "family": "Conservateurs"
  },
  "e297": {
    "tag": "E297",
    "penalty": 0,
    "name": "Acide fumarique",
    "family": "Acidifiants"
  },
  "e300": {
    "tag": "E300",
    "penalty": 0,
    "name": "Vitamine C",
    "family": "Anti-oxydants"
  },
  "e301": {
    "tag": "E301",
    "penalty": 0,
    "name": "Ascorbate de sodium",
    "family": "Anti-oxydants"
  },
  "e302": {
    "tag": "E302",
    "penalty": 0,
    "name": "Ascorbate de calcium",
    "family": "Anti-oxydants"
  },
  "e303": {
    "tag": "E303",
    "penalty": 0,
    "name": "Ascorbate de potassium",
    "family": "Anti-oxydants"
  },
  "e304": {
    "tag": "E304",
    "penalty": 0,
    "name": "Palmitate d'ascorbyle",
    "family": "Anti-oxydants"
  },
  "e305": {
    "tag": "E305",
    "penalty": 0,
    "name": "Stéarate d'ascorbyle",
    "family": "Anti-oxydants"
  },
  "e306": {
    "tag": "E306",
    "penalty": 0,
    "name": "Vitamine E",
    "family": "Anti-oxydants"
  },
  "e307": {
    "tag": "E307",
    "penalty": 0,
    "name": "Alpha tocophérol",
    "family": "Anti-oxydants"
  },
  "e307a": {
    "tag": "E307a",
    "penalty": 0,
    "name": "D-alpha-tocophérol",
    "family": "Anti-oxydants"
  },
  "e307b": {
    "tag": "E307b",
    "penalty": 0,
    "name": "Tocophérol concentré",
    "family": "Anti-oxydants"
  },
  "e307c": {
    "tag": "E307c",
    "penalty": 0,
    "name": "DL-alpha-tocophérol",
    "family": "Anti-oxydants"
  },
  "e308": {
    "tag": "E308",
    "penalty": 0,
    "name": "Gamma tocophérol",
    "family": "Anti-oxydants"
  },
  "e309": {
    "tag": "E309",
    "penalty": 0,
    "name": "Delta tocophérol",
    "family": "Anti-oxydants"
  },
  "e311": {
    "tag": "E311",
    "penalty": 0,
    "name": "Gallate d'octyle",
    "family": "Anti-oxydants"
  },
  "e312": {
    "tag": "E312",
    "penalty": 0,
    "name": "Gallate de dodécyle",
    "family": "Anti-oxydants"
  },
  "e313": {
    "tag": "E313",
    "penalty": 0,
    "name": "Gallate d'éthyle",
    "family": "Anti-oxydants"
  },
  "e314": {
    "tag": "E314",
    "penalty": 0,
    "name": "Résine de gaïac",
    "family": "Anti-oxydants"
  },
  "e315": {
    "tag": "E315",
    "penalty": 0,
    "name": "Acide érythorbique",
    "family": "Anti-oxydants"
  },
  "e316": {
    "tag": "E316",
    "penalty": 0,
    "name": "Erythorbate de sodium",
    "family": "Anti-oxydants"
  },
  "e317": {
    "tag": "E317",
    "penalty": 0,
    "name": "Erythorbate de potassium",
    "family": "Anti-oxydants"
  },
  "e318": {
    "tag": "E318",
    "penalty": 0,
    "name": "Erythorbate de calcium",
    "family": "Anti-oxydants"
  },
  "e322": {
    "tag": "E322",
    "penalty": 0,
    "name": "Lécithines",
    "family": "Émulsifiants"
  },
  "e322i": {
    "tag": "E322i",
    "penalty": 0,
    "name": "Lécithine",
    "family": "Émulsifiants"
  },
  "e322ii": {
    "tag": "E322ii",
    "penalty": 0,
    "name": "Lécithine partiellement hydrolysée",
    "family": "Émulsifiants"
  },
  "e323": {
    "tag": "E323",
    "penalty": 0,
    "name": "Anoxomère",
    "family": "Anti-oxydants"
  },
  "e325": {
    "tag": "E325",
    "penalty": 0,
    "name": "Lactate de sodium",
    "family": "Anti-oxydants"
  },
  "e326": {
    "tag": "E326",
    "penalty": 0,
    "name": "Lactate de potassium",
    "family": "Anti-oxydants"
  },
  "e327": {
    "tag": "E327",
    "penalty": 0,
    "name": "Lactate de calcium",
    "family": "Anti-oxydants"
  },
  "e328": {
    "tag": "E328",
    "penalty": 0,
    "name": "Lactate d'ammonium",
    "family": "Acidifiants"
  },
  "e329": {
    "tag": "E329",
    "penalty": 0,
    "name": "Lactate de magnésium",
    "family": "Acidifiants"
  },
  "e331": {
    "tag": "E331",
    "penalty": 0,
    "name": "Citrates de sodium",
    "family": "Acidifiants"
  },
  "e331i": {
    "tag": "E331i",
    "penalty": 0,
    "name": "Citrate biacide de sodium",
    "family": "Acidifiants"
  },
  "e331ii": {
    "tag": "E331ii",
    "penalty": 0,
    "name": "Citrate monoacide disodique",
    "family": "Acidifiants"
  },
  "e331iii": {
    "tag": "E331iii",
    "penalty": 0,
    "name": "Citrate trisodique",
    "family": "Acidifiants"
  },
  "e332": {
    "tag": "E332",
    "penalty": 0,
    "name": "Citrates de potassium",
    "family": "Acidifiants"
  },
  "e332i": {
    "tag": "E332i",
    "penalty": 0,
    "name": "Citrate biacide de potassium",
    "family": "Acidifiants"
  },
  "e332ii": {
    "tag": "E332ii",
    "penalty": 0,
    "name": "Citrate tripotassique",
    "family": "Acidifiants"
  },
  "e333": {
    "tag": "E333",
    "penalty": 0,
    "name": "Citrate de calcium",
    "family": "Acidifiants"
  },
  "e333i": {
    "tag": "E333i",
    "penalty": 0,
    "name": "Citrate de monocalcium",
    "family": "Acidifiants"
  },
  "e333ii": {
    "tag": "E333ii",
    "penalty": 0,
    "name": "Citrate de dicalcium",
    "family": "Acidifiants"
  },
  "e333iii": {
    "tag": "E333iii",
    "penalty": 0,
    "name": "Citrate de tricalcium",
    "family": "Acidifiants"
  },
  "e334": {
    "tag": "E334",
    "penalty": 0,
    "name": "Acide tartrique",
    "family": "Acidifiants"
  },
  "e335": {
    "tag": "E335",
    "penalty": 0,
    "name": "Tartrate de sodium",
    "family": "Acidifiants"
  },
  "e335i": {
    "tag": "E335i",
    "penalty": 0,
    "name": "Tartrate monosodique",
    "family": "Acidifiants"
  },
  "e335ii": {
    "tag": "E335ii",
    "penalty": 0,
    "name": "Tartrate disodique",
    "family": "Acidifiants"
  },
  "e336": {
    "tag": "E336",
    "penalty": 0,
    "name": "Tartrate de potassium",
    "family": "Acidifiants"
  },
  "e336i": {
    "tag": "E336i",
    "penalty": 0,
    "name": "Tartrate monopotassique",
    "family": "Acidifiants"
  },
  "e336ii": {
    "tag": "E336ii",
    "penalty": 0,
    "name": "Tartrate dipotassique",
    "family": "Acidifiants"
  },
  "e337": {
    "tag": "E337",
    "penalty": 0,
    "name": "Tartrate de potassium sodium",
    "family": "Acidifiants"
  },
  "e339": {
    "tag": "E339",
    "penalty": 0,
    "name": "Orthophosphate de sodium",
    "family": "Anti-oxydants"
  },
  "e339i": {
    "tag": "E339i",
    "penalty": 0,
    "name": "Orthophosphate monosodique",
    "family": "Anti-oxydants"
  },
  "e339ii": {
    "tag": "E339ii",
    "penalty": 0,
    "name": "Orthophosphate disodique",
    "family": "Anti-oxydants"
  },
  "e339iii": {
    "tag": "E339iii",
    "penalty": 0,
    "name": "Orthophosphate trisodique",
    "family": "Anti-oxydants"
  },
  "e340": {
    "tag": "E340",
    "penalty": 0,
    "name": "Orthophosphate de potassium",
    "family": "Anti-oxydants"
  },
  "e340i": {
    "tag": "E340i",
    "penalty": 0,
    "name": "Orthophosphate monopotassique",
    "family": "Anti-oxydants"
  },
  "e340ii": {
    "tag": "E340ii",
    "penalty": 0,
    "name": "Orthophosphate dipotassique",
    "family": "Anti-oxydants"
  },
  "e340iii": {
    "tag": "E340iii",
    "penalty": 0,
    "name": "Orthophosphate tripotassique",
    "family": "Anti-oxydants"
  },
  "e341": {
    "tag": "E341",
    "penalty": 0,
    "name": "Orthophosphate de calcium",
    "family": "Acidifiants"
  },
  "e341i": {
    "tag": "E341i",
    "penalty": 0,
    "name": "Orthophosphate monocalcique",
    "family": "Acidifiants"
  },
  "e341ii": {
    "tag": "E341ii",
    "penalty": 0,
    "name": "Orthophosphate dicalcique",
    "family": "Acidifiants"
  },
  "e341iii": {
    "tag": "E341iii",
    "penalty": 0,
    "name": "Orthophosphate tricalcique",
    "family": "Acidifiants"
  },
  "e342": {
    "tag": "E342",
    "penalty": 0,
    "name": "Phosphate d'ammonium",
    "family": "Acidifiants"
  },
  "e342i": {
    "tag": "E342i",
    "penalty": 0,
    "name": "Orthophosphate monoammonié",
    "family": "Acidifiants"
  },
  "e342ii": {
    "tag": "E342ii",
    "penalty": 0,
    "name": "Orthophosphate diammonié",
    "family": "Acidifiants"
  },
  "e343": {
    "tag": "E343",
    "penalty": 0,
    "name": "Phosphate de magnésium",
    "family": "Acidifiants"
  },
  "e343i": {
    "tag": "E343i",
    "penalty": 0,
    "name": "Orthophosphate monomagnésien",
    "family": "Acidifiants"
  },
  "e343ii": {
    "tag": "E343ii",
    "penalty": 0,
    "name": "Orthophosphate dimagnésien",
    "family": "Acidifiants"
  },
  "e343iii": {
    "tag": "E343iii",
    "penalty": 0,
    "name": "Orthophosphate trimagnésien",
    "family": "Acidifiants"
  },
  "e344": {
    "tag": "E344",
    "penalty": 0,
    "name": "Citrate de lécithine",
    "family": "Conservateurs"
  },
  "e345": {
    "tag": "E345",
    "penalty": 0,
    "name": "Citrate de magnésium",
    "family": "Acidifiants"
  },
  "e349": {
    "tag": "E349",
    "penalty": 0,
    "name": "Malate d'ammonium",
    "family": "Acidifiants"
  },
  "e350": {
    "tag": "E350",
    "penalty": 0,
    "name": "Malate de sodium",
    "family": "Acidifiants"
  },
  "e350i": {
    "tag": "E350i",
    "penalty": 0,
    "name": "Malate acide de sodium",
    "family": "Acidifiants"
  },
  "e350ii": {
    "tag": "E350ii",
    "penalty": 0,
    "name": "Malate de sodium",
    "family": "Acidifiants"
  },
  "e351": {
    "tag": "E351",
    "penalty": 0,
    "name": "Malate de potassium",
    "family": "Acidifiants"
  },
  "e351i": {
    "tag": "E351i",
    "penalty": 0,
    "name": "Malate acide de potassium",
    "family": "Acidifiants"
  },
  "e351ii": {
    "tag": "E351ii",
    "penalty": 0,
    "name": "Malate de potassium",
    "family": "Acidifiants"
  },
  "e352": {
    "tag": "E352",
    "penalty": 0,
    "name": "Malate de calcium",
    "family": "Acidifiants"
  },
  "e352i": {
    "tag": "E352i",
    "penalty": 0,
    "name": "Malate acide de calcium",
    "family": "Acidifiants"
  },
  "e352ii": {
    "tag": "E352ii",
    "penalty": 0,
    "name": "Malate de calcium",
    "family": "Acidifiants"
  },
  "e353": {
    "tag": "E353",
    "penalty": 0,
    "name": "Acide métatartrique",
    "family": "Acidifiants"
  },
  "e354": {
    "tag": "E354",
    "penalty": 0,
    "name": "Tartrate de calcium",
    "family": "Acidifiants"
  },
  "e356": {
    "tag": "E356",
    "penalty": 0,
    "name": "Adipate de sodium",
    "family": "Acidifiants"
  },
  "e357": {
    "tag": "E357",
    "penalty": 0,
    "name": "Adipate de potassium",
    "family": "Acidifiants"
  },
  "e359": {
    "tag": "E359",
    "penalty": 0,
    "name": "Adipate d'ammonium",
    "family": "Acidifiants"
  },
  "e363": {
    "tag": "E363",
    "penalty": 0,
    "name": "Acide succinique",
    "family": "Acidifiants"
  },
  "e364": {
    "tag": "E364",
    "penalty": 0,
    "name": "Succinates de sodium",
    "family": "Acidifiants"
  },
  "e364i": {
    "tag": "E364i",
    "penalty": 0,
    "name": "Succinate monosodique",
    "family": "Acidifiants"
  },
  "e364ii": {
    "tag": "E364ii",
    "penalty": 0,
    "name": "Succinate disodique",
    "family": "Acidifiants"
  },
  "e365": {
    "tag": "E365",
    "penalty": 0,
    "name": "Fumarate de sodium",
    "family": "Acidifiants"
  },
  "e366": {
    "tag": "E366",
    "penalty": 0,
    "name": "Fumarate de potassium",
    "family": "Acidifiants"
  },
  "e367": {
    "tag": "E367",
    "penalty": 0,
    "name": "Fumarate de calcium",
    "family": "Acidifiants"
  },
  "e368": {
    "tag": "E368",
    "penalty": 0,
    "name": "Fumarate d'ammonium",
    "family": "Acidifiants"
  },
  "e370": {
    "tag": "E370",
    "penalty": 0,
    "name": "Heptonolactone",
    "family": "Acidifiants"
  },
  "e380": {
    "tag": "E380",
    "penalty": 0,
    "name": "Citrate de triammonium",
    "family": "Acidifiants"
  },
  "e381": {
    "tag": "E381",
    "penalty": 0,
    "name": "Citrate ammonium ferrique",
    "family": "Divers"
  },
  "e383": {
    "tag": "E383",
    "penalty": 0,
    "name": "Glycérophosphate de calcium",
    "family": "Épaississants"
  },
  "e384": {
    "tag": "E384",
    "penalty": 0,
    "name": "Citrate d'isopropyle",
    "family": "Acidifiants"
  },
  "e387": {
    "tag": "E387",
    "penalty": 0,
    "name": "Oxystéarine",
    "family": "Anti-oxydants"
  },
  "e388": {
    "tag": "E388",
    "penalty": 0,
    "name": "Acide thiodipropionique",
    "family": "Anti-oxydants"
  },
  "e389": {
    "tag": "E389",
    "penalty": 0,
    "name": "Thiodipropionate de dilauryle",
    "family": "Anti-oxydants"
  },
  "e390": {
    "tag": "E390",
    "penalty": 0,
    "name": "Thiodipropionate de distéaryle",
    "family": "Anti-oxydants"
  },
  "e391": {
    "tag": "E391",
    "penalty": 0,
    "name": "Acide phytique",
    "family": "Conservateurs"
  },
  "e399": {
    "tag": "E399",
    "penalty": 0,
    "name": "Lactobionate de calcium",
    "family": "Émulsifiants"
  },
  "e400": {
    "tag": "E400",
    "penalty": 0,
    "name": "Acide alginique",
    "family": "Épaississants"
  },
  "e401": {
    "tag": "E401",
    "penalty": 0,
    "name": "Alginate de sodium",
    "family": "Épaississants"
  },
  "e402": {
    "tag": "E402",
    "penalty": 0,
    "name": "Alginate de potassium",
    "family": "Épaississants"
  },
  "e403": {
    "tag": "E403",
    "penalty": 0,
    "name": "Alginate d'ammonium",
    "family": "Épaississants"
  },
  "e404": {
    "tag": "E404",
    "penalty": 0,
    "name": "Alginate de calcium",
    "family": "Épaississants"
  },
  "e408": {
    "tag": "E408",
    "penalty": 0,
    "name": "Glycane de levure de boulanger",
    "family": "Épaississants"
  },
  "e410": {
    "tag": "E410",
    "penalty": 0,
    "name": "Gomme de caroube",
    "family": "Épaississants"
  },
  "e414": {
    "tag": "E414",
    "penalty": 0,
    "name": "Gomme arabique",
    "family": "Épaississants"
  },
  "e417": {
    "tag": "E417",
    "penalty": 0,
    "name": "Gomme Tara",
    "family": "Épaississants"
  },
  "e418": {
    "tag": "E418",
    "penalty": 0,
    "name": "Gomme gellane",
    "family": "Épaississants"
  },
  "e419": {
    "tag": "E419",
    "penalty": 0,
    "name": "Gomme ghatti",
    "family": "Épaississants"
  },
  "e424": {
    "tag": "E424",
    "penalty": 0,
    "name": "Curdlan",
    "family": "Épaississants"
  },
  "e426": {
    "tag": "E426",
    "penalty": 0,
    "name": "Hémicellulose de soja",
    "family": "Émulsifiants"
  },
  "e427": {
    "tag": "E427",
    "penalty": 0,
    "name": "Gomme de cassia",
    "family": "Émulsifiants"
  },
  "e428": {
    "tag": "E428",
    "penalty": 0,
    "name": "Gélatine",
    "family": "Épaississants"
  },
  "e429": {
    "tag": "E429",
    "penalty": 0,
    "name": "Peptones",
    "family": "Émulsifiants"
  },
  "e440": {
    "tag": "E440",
    "penalty": 0,
    "name": "Pectines",
    "family": "Épaississants"
  },
  "e440a": {
    "tag": "E440a",
    "penalty": 0,
    "name": "Pectine",
    "family": "Épaississants"
  },
  "e440b": {
    "tag": "E440b",
    "penalty": 0,
    "name": "Pectine amidée",
    "family": "Épaississants"
  },
  "e441": {
    "tag": "E441",
    "penalty": 0,
    "name": "Gélatine",
    "family": "Épaississants"
  },
  "e442": {
    "tag": "E442",
    "penalty": 0,
    "name": "Phosphatides d'ammonium",
    "family": "Émulsifiants"
  },
  "e444": {
    "tag": "E444",
    "penalty": 0,
    "name": "Isobutyrate Acétate de saccharose",
    "family": "Émulsifiants"
  },
  "e446": {
    "tag": "E446",
    "penalty": 0,
    "name": "Succistéarine",
    "family": "Émulsifiants"
  },
  "e450": {
    "tag": "E450",
    "penalty": 0,
    "name": "Sels métalliques de diphosphates",
    "family": "Émulsifiants"
  },
  "e450viii": {
    "tag": "E450viii",
    "penalty": 0,
    "name": "Diphosphate dimagnésien",
    "family": "Émulsifiants"
  },
  "e451": {
    "tag": "E451",
    "penalty": 0,
    "name": "Triphosphates",
    "family": "Acidifiants"
  },
  "e451i": {
    "tag": "E451i",
    "penalty": 0,
    "name": "Triphosphate pentasodique",
    "family": "Acidifiants"
  },
  "e452": {
    "tag": "E452",
    "penalty": 0,
    "name": "Polyphosphates",
    "family": "Émulsifiants"
  },
  "e452v": {
    "tag": "E452v",
    "penalty": 0,
    "name": "Polyphosphate d'ammonium",
    "family": "Émulsifiants"
  },
  "e452vi": {
    "tag": "E452vi",
    "penalty": 0,
    "name": "Tripolyphosphate de sodium et de potassium",
    "family": "Émulsifiants"
  },
  "e457": {
    "tag": "E457",
    "penalty": 0,
    "name": "Alpha-cyclodextrine",
    "family": "Émulsifiants"
  },
  "e458": {
    "tag": "E458",
    "penalty": 0,
    "name": "Gamma-cyclodextrine",
    "family": "Émulsifiants"
  },
  "e459": {
    "tag": "E459",
    "penalty": 0,
    "name": "Bêta-cyclodextrine",
    "family": "Émulsifiants"
  },
  "e467": {
    "tag": "E467",
    "penalty": 0,
    "name": "Ethyl-hydroxyéthyl-cellulose",
    "family": "Épaississants"
  },
  "e470": {
    "tag": "E470",
    "penalty": 0,
    "name":
        "Sels d'acides gras (ayant pour base le calcium, le magnésium, le potassium, le sodium)",
    "family": "Émulsifiants"
  },
  "e471": {
    "tag": "E471",
    "penalty": 0,
    "name": "Monostéarine",
    "family": "Émulsifiants"
  },
  "e472a": {
    "tag": "E472a",
    "penalty": 0,
    "name": "Acétoglycérides",
    "family": "Émulsifiants"
  },
  "e472b": {
    "tag": "E472b",
    "penalty": 0,
    "name": "Lactoglycérides",
    "family": "Émulsifiants"
  },
  "e472c": {
    "tag": "E472c",
    "penalty": 0,
    "name": "Citroglycérides",
    "family": "Émulsifiants"
  },
  "e472d": {
    "tag": "E472d",
    "penalty": 0,
    "name": "Esters tartriques des mono- et diglycérides d'acides gras",
    "family": "Émulsifiants"
  },
  "e472e": {
    "tag": "E472e",
    "penalty": 0,
    "name":
        "Esters monoacétyltartriques et diacétyltartriques des mono- et diglycérides d'acides gras",
    "family": "Émulsifiants"
  },
  "e472f": {
    "tag": "E472f",
    "penalty": 0,
    "name":
        "Esters mixtes acétique et tartrique des mono- et diglycérides d'acides gras",
    "family": "Émulsifiants"
  },
  "e472g": {
    "tag": "E472g",
    "penalty": 0,
    "name": "Monoglycérides succinyles",
    "family": "Émulsifiants"
  },
  "e473": {
    "tag": "E473",
    "penalty": 0,
    "name": "Esters de sucre",
    "family": "Émulsifiants"
  },
  "e473a": {
    "tag": "E473a",
    "penalty": 0,
    "name": "Oligoesters de saccharose de type I et de type II",
    "family": "Émulsifiants"
  },
  "e474": {
    "tag": "E474",
    "penalty": 0,
    "name": "Glycérides de sucre",
    "family": "Émulsifiants"
  },
  "e475": {
    "tag": "E475",
    "penalty": 0,
    "name": "Esters polyglycériques d'acides gras",
    "family": "Émulsifiants"
  },
  "e479": {
    "tag": "E479",
    "penalty": 0,
    "name":
        "Huile de soja oxydée par chauffage avec des mono- et diglycérides d'acides gras",
    "family": "Émulsifiants"
  },
  "e479b": {
    "tag": "E479b",
    "penalty": 0,
    "name":
        "Esters glycériques d'acides gras obtenus à partir d'huile de soja oxydée par chauffage",
    "family": "Émulsifiants"
  },
  "e481": {
    "tag": "E481",
    "penalty": 0,
    "name": "Stéaroyllactylate de sodium",
    "family": "Émulsifiants"
  },
  "e481i": {
    "tag": "E481i",
    "penalty": 0,
    "name": "Stéaryl de sodium lactylé",
    "family": "Émulsifiants"
  },
  "e481ii": {
    "tag": "E481ii",
    "penalty": 0,
    "name": "Oléyl de sodium lactylé",
    "family": "Émulsifiants"
  },
  "e482": {
    "tag": "E482",
    "penalty": 0,
    "name": "Stéaroyllactate de calcium",
    "family": "Émulsifiants"
  },
  "e482i": {
    "tag": "E482i",
    "penalty": 0,
    "name": "Stéaryl de calcium lactylé",
    "family": "Émulsifiants"
  },
  "e482ii": {
    "tag": "E482ii",
    "penalty": 0,
    "name": "Oléyl de calcium lactylé",
    "family": "Émulsifiants"
  },
  "e483": {
    "tag": "E483",
    "penalty": 0,
    "name": "Tartrate de stéaryle",
    "family": "Divers"
  },
  "e484": {
    "tag": "E484",
    "penalty": 0,
    "name": "Citrate de stéaryle",
    "family": "Émulsifiants"
  },
  "e485": {
    "tag": "E485",
    "penalty": 0,
    "name": "Stéaroylfumarate de sodium",
    "family": "Émulsifiants"
  },
  "e486": {
    "tag": "E486",
    "penalty": 0,
    "name": "Stéaroylfumarate de calcium",
    "family": "Émulsifiants"
  },
  "e488": {
    "tag": "E488",
    "penalty": 0,
    "name": "Mono- et di-glycérides éthoxyles",
    "family": "Émulsifiants"
  },
  "e489": {
    "tag": "E489",
    "penalty": 0,
    "name": "Ester de méthylglycoside d'huile de coco",
    "family": "Émulsifiants"
  },
  "e491": {
    "tag": "E491",
    "penalty": 0,
    "name": "Monostéarate de sorbitane",
    "family": "Émulsifiants"
  },
  "e492": {
    "tag": "E492",
    "penalty": 0,
    "name": "Tristéarate de sorbitane",
    "family": "Émulsifiants"
  },
  "e493": {
    "tag": "E493",
    "penalty": 0,
    "name": "Monolaurate de sorbitane",
    "family": "Émulsifiants"
  },
  "e494": {
    "tag": "E494",
    "penalty": 0,
    "name": "Monooléate de sorbitane",
    "family": "Émulsifiants"
  },
  "e495": {
    "tag": "E495",
    "penalty": 0,
    "name": "Monopalmitate de sorbitane",
    "family": "Émulsifiants"
  },
  "e496": {
    "tag": "E496",
    "penalty": 0,
    "name": "Trioléate de sorbitane",
    "family": "Émulsifiants"
  },
  "e500": {
    "tag": "E500",
    "penalty": 0,
    "name": "Carbonates de sodium",
    "family": "Acidifiants"
  },
  "e500i": {
    "tag": "E500i",
    "penalty": 0,
    "name": "Carbonate de sodium",
    "family": "Acidifiants"
  },
  "e500ii": {
    "tag": "E500ii",
    "penalty": 0,
    "name": "Bicarbonate de sodium",
    "family": "Acidifiants"
  },
  "e500iii": {
    "tag": "E500iii",
    "penalty": 0,
    "name": "Sesquicarbonate de sodium",
    "family": "Acidifiants"
  },
  "e501": {
    "tag": "E501",
    "penalty": 0,
    "name": "Carbonates de potassium",
    "family": "Acidifiants"
  },
  "e501i": {
    "tag": "E501i",
    "penalty": 0,
    "name": "Carbonate de potassium",
    "family": "Acidifiants"
  },
  "e501ii": {
    "tag": "E501ii",
    "penalty": 0,
    "name": "Bicarbonate de potassium",
    "family": "Acidifiants"
  },
  "e502": {
    "tag": "E502",
    "penalty": 0,
    "name": "Carbonates",
    "family": "Acidifiants"
  },
  "e503": {
    "tag": "E503",
    "penalty": 0,
    "name": "Carbonates d'ammonium",
    "family": "Acidifiants"
  },
  "e503i": {
    "tag": "E503i",
    "penalty": 0,
    "name": "Carbonate d'ammonium",
    "family": "Acidifiants"
  },
  "e503ii": {
    "tag": "E503ii",
    "penalty": 0,
    "name": "Carbonate acide d'ammonium",
    "family": "Acidifiants"
  },
  "e504": {
    "tag": "E504",
    "penalty": 0,
    "name": "Carbonates de magnésium",
    "family": "Acidifiants"
  },
  "e504i": {
    "tag": "E504i",
    "penalty": 0,
    "name": "Carbonate de magnésium",
    "family": "Acidifiants"
  },
  "e504ii": {
    "tag": "E504ii",
    "penalty": 0,
    "name": "Bicarbonate magnésium",
    "family": "Acidifiants"
  },
  "e505": {
    "tag": "E505",
    "penalty": 0,
    "name": "Carbonate ferreux",
    "family": "Acidifiants"
  },
  "e512": {
    "tag": "E512",
    "penalty": 0,
    "name": "Chlorure d'étain",
    "family": "Anti-oxydants"
  },
  "e535": {
    "tag": "E535",
    "penalty": 0,
    "name": "Ferrocyanure de sodium",
    "family": "Divers"
  },
  "e536": {
    "tag": "E536",
    "penalty": 0,
    "name": "Ferrocyanure de potassium",
    "family": "Divers"
  },
  "e537": {
    "tag": "E537",
    "penalty": 0,
    "name": "Hexacyanoman fer",
    "family": "Divers"
  },
  "e538": {
    "tag": "E538",
    "penalty": 0,
    "name": "Ferrocyanure de calcium",
    "family": "Divers"
  },
  "e539": {
    "tag": "E539",
    "penalty": 0,
    "name": "Thiosulfate de sodium",
    "family": "Anti-oxydants"
  },
  "e540": {
    "tag": "E540",
    "penalty": 0,
    "name": "Phosphate de calcium hydrogène",
    "family": "Acidifiants"
  },
  "e542": {
    "tag": "E542",
    "penalty": 0,
    "name": "Phosphate d'os",
    "family": "Acidifiants"
  },
  "e544": {
    "tag": "E544",
    "penalty": 0,
    "name": "Polyphosphates de calcium",
    "family": "Acidifiants"
  },
  "e545": {
    "tag": "E545",
    "penalty": 0,
    "name": "Polyphosphates d'ammonium",
    "family": "Acidifiants"
  },
  "e546": {
    "tag": "E546",
    "penalty": 0,
    "name": "Pyrophosphate de magnésium",
    "family": "Divers"
  },
  "e550": {
    "tag": "E550",
    "penalty": 0,
    "name": "Silicate de sodium",
    "family": "Divers"
  },
  "e550i": {
    "tag": "E550i",
    "penalty": 0,
    "name": "Silicate de sodium",
    "family": "Divers"
  },
  "e550ii": {
    "tag": "E550ii",
    "penalty": 0,
    "name": "Métasilicate de sodium",
    "family": "Divers"
  },
  "e552": {
    "tag": "E552",
    "penalty": 0,
    "name": "Silicate de calcium",
    "family": "Divers"
  },
  "e553": {
    "tag": "E553",
    "penalty": 0,
    "name": "Silicate de magnésium",
    "family": "Divers"
  },
  "e553i": {
    "tag": "E553i",
    "penalty": 0,
    "name": "Silicate de magnésium",
    "family": "Divers"
  },
  "e553ii": {
    "tag": "E553ii",
    "penalty": 0,
    "name": "Trisilicate de magnésium",
    "family": "Divers"
  },
  "e570": {
    "tag": "E570",
    "penalty": 0,
    "name": "Acide stéarique",
    "family": "Acidifiants"
  },
  "e572": {
    "tag": "E572",
    "penalty": 0,
    "name": "Stéarate de magnésium",
    "family": "Épaississants"
  },
  "e575": {
    "tag": "E575",
    "penalty": 0,
    "name": "Glucono-delta-lactone",
    "family": "Acidifiants"
  },
  "e576": {
    "tag": "E576",
    "penalty": 0,
    "name": "Gluconate de sodium",
    "family": "Acidifiants"
  },
  "e577": {
    "tag": "E577",
    "penalty": 0,
    "name": "Gluconate de potassium",
    "family": "Acidifiants"
  },
  "e578": {
    "tag": "E578",
    "penalty": 0,
    "name": "Gluconate de calcium",
    "family": "Acidifiants"
  },
  "e579": {
    "tag": "E579",
    "penalty": 0,
    "name": "Gluconate ferreux",
    "family": "Divers"
  },
  "e580": {
    "tag": "E580",
    "penalty": 0,
    "name": "Gluconate de magnésium",
    "family": "Acidifiants"
  },
  "e585": {
    "tag": "E585",
    "penalty": 0,
    "name": "Lactate ferreux",
    "family": "Divers"
  },
  "e586": {
    "tag": "E586",
    "penalty": 0,
    "name": "Hexylrésorcinol",
    "family": "Anti-oxydants"
  },
  "e630": {
    "tag": "E630",
    "penalty": 0,
    "name": "Acide inosinique",
    "family": "Exhausteurs"
  },
  "e631": {
    "tag": "E631",
    "penalty": 0,
    "name": "Inosinate disodique",
    "family": "Exhausteurs"
  },
  "e632": {
    "tag": "E632",
    "penalty": 0,
    "name": "Inosinate dipotassique",
    "family": "Exhausteurs"
  },
  "e633": {
    "tag": "E633",
    "penalty": 0,
    "name": "Inosinate de calcium",
    "family": "Exhausteurs"
  },
  "e634": {
    "tag": "E634",
    "penalty": 0,
    "name": "Ribonucléotides calciques",
    "family": "Exhausteurs"
  },
  "e635": {
    "tag": "E635",
    "penalty": 0,
    "name": "Ribonucléotide Na",
    "family": "Exhausteurs"
  },
  "e637": {
    "tag": "E637",
    "penalty": 0,
    "name": "Isomaltol",
    "family": "Exhausteurs"
  },
  "e638": {
    "tag": "E638",
    "penalty": 0,
    "name": "Aspartame de sodium",
    "family": "Exhausteurs"
  },
  "e639": {
    "tag": "E639",
    "penalty": 0,
    "name": "Alanine",
    "family": "Exhausteurs"
  },
  "e640": {
    "tag": "E640",
    "penalty": 0,
    "name": "Glycine",
    "family": "Exhausteurs"
  },
  "e641": {
    "tag": "E641",
    "penalty": 0,
    "name": "L-Leucine",
    "family": "Exhausteurs"
  },
  "e642": {
    "tag": "E642",
    "penalty": 0,
    "name": "Hydrochlorure de lysine",
    "family": "Exhausteurs"
  },
  "e650": {
    "tag": "E650",
    "penalty": 0,
    "name": "Acétate de zinc",
    "family": "Exhausteurs"
  },
  "e900": {
    "tag": "E900",
    "penalty": 0,
    "name": "Diméthicone",
    "family": "Émulsifiants"
  },
  "e900a": {
    "tag": "E900a",
    "penalty": 0,
    "name": "Polydiméthylsiloxane",
    "family": "Émulsifiants"
  },
  "e900b": {
    "tag": "E900b",
    "penalty": 0,
    "name": "Méthylphénylpolysiloxane",
    "family": "Émulsifiants"
  },
  "e901": {
    "tag": "E901",
    "penalty": 0,
    "name": "Cire d'abeille",
    "family": "Divers"
  },
  "e902": {
    "tag": "E902",
    "penalty": 0,
    "name": "Cire de candelilla",
    "family": "Divers"
  },
  "e903": {
    "tag": "E903",
    "penalty": 0,
    "name": "Cire de carnauba",
    "family": "Divers"
  },
  "e904": {
    "tag": "E904",
    "penalty": 0,
    "name": "Résine de shellac",
    "family": "Divers"
  },
  "e906": {
    "tag": "E906",
    "penalty": 0,
    "name": "Gomme Benjoin",
    "family": "Divers"
  },
  "e907": {
    "tag": "E907",
    "penalty": 0,
    "name": "Poly-1-décène hydrogéné",
    "family": "Divers"
  },
  "e908": {
    "tag": "E908",
    "penalty": 0,
    "name": "Cire son de riz",
    "family": "Divers"
  },
  "e909": {
    "tag": "E909",
    "penalty": 0,
    "name": "Cire de blanc de baleine",
    "family": "Divers"
  },
  "e910": {
    "tag": "E910",
    "penalty": 0,
    "name": "Esters de cires",
    "family": "Divers"
  },
  "e911": {
    "tag": "E911",
    "penalty": 0,
    "name": "Esters méthyliques d'acides gras",
    "family": "Divers"
  },
  "e912": {
    "tag": "E912",
    "penalty": 0,
    "name": "Ester de l'acide montanique",
    "family": "Divers"
  },
  "e913": {"tag": "E913", "penalty": 0, "name": "Lanoline", "family": "Divers"},
  "e915": {
    "tag": "E915",
    "penalty": 0,
    "name": "Ester de colophane",
    "family": "Divers"
  },
  "e916": {
    "tag": "E916",
    "penalty": 0,
    "name": "Iodate de calcium",
    "family": "Divers"
  },
  "e918": {
    "tag": "E918",
    "penalty": 0,
    "name": "Oxydes d'azote",
    "family": "Divers"
  },
  "e919": {
    "tag": "E919",
    "penalty": 0,
    "name": "Chlorure de nitrosyle",
    "family": "Divers"
  },
  "e920": {
    "tag": "E920",
    "penalty": 0,
    "name": "Lcystéine dérivés",
    "family": "Divers"
  },
  "e922": {
    "tag": "E922",
    "penalty": 0,
    "name": "Persulfate de potassium",
    "family": "Divers"
  },
  "e923": {
    "tag": "E923",
    "penalty": 0,
    "name": "Persulfate d'ammonium",
    "family": "Divers"
  },
  "e927": {
    "tag": "E927",
    "penalty": 0,
    "name": "Azoformamide",
    "family": "Divers"
  },
  "e927b": {
    "tag": "E927b",
    "penalty": 0,
    "name": "Carbamide",
    "family": "Divers"
  },
  "e928": {
    "tag": "E928",
    "penalty": 0,
    "name": "Peroxyde de benzoyle",
    "family": "Divers"
  },
  "e929": {
    "tag": "E929",
    "penalty": 0,
    "name": "Peroxyde d'acétone",
    "family": "Divers"
  },
  "e930": {
    "tag": "E930",
    "penalty": 0,
    "name": "Peroxyde de calcium",
    "family": "Divers"
  },
  "e938": {"tag": "E938", "penalty": 0, "name": "Argon", "family": "Divers"},
  "e939": {"tag": "E939", "penalty": 0, "name": "Hélium", "family": "Divers"},
  "e941": {"tag": "E941", "penalty": 0, "name": "Azote", "family": "Divers"},
  "e945": {
    "tag": "E945",
    "penalty": 0,
    "name": "Chloropentafluoroéthane",
    "family": "Divers"
  },
  "e946": {
    "tag": "E946",
    "penalty": 0,
    "name": "Octafluorocyclobutane",
    "family": "Divers"
  },
  "e948": {"tag": "E948", "penalty": 0, "name": "Oxygène", "family": "Divers"},
  "e949": {
    "tag": "E949",
    "penalty": 0,
    "name": "Hydrogène",
    "family": "Divers"
  },
  "e955": {
    "tag": "E955",
    "penalty": 0,
    "name": "Sucralose",
    "family": "Édulcorants"
  },
  "e956": {
    "tag": "E956",
    "penalty": 0,
    "name": "Alitame",
    "family": "Édulcorants"
  },
  "e957": {
    "tag": "E957",
    "penalty": 0,
    "name": "Thaumatine",
    "family": "Édulcorants"
  },
  "e959": {
    "tag": "E959",
    "penalty": 0,
    "name": "Néohespéridine DC",
    "family": "Édulcorants"
  },
  "e960": {
    "tag": "E960",
    "penalty": 0,
    "name": "Stévia",
    "family": "Édulcorants"
  },
  "e961": {
    "tag": "E961",
    "penalty": 0,
    "name": "Neotame",
    "family": "Édulcorants"
  },
  "e963": {
    "tag": "E963",
    "penalty": 0,
    "name": "Tagatose",
    "family": "Édulcorants"
  },
  "e964": {
    "tag": "E964",
    "penalty": 0,
    "name": "Sirop de polyglycitol",
    "family": "Édulcorants"
  },
  "e968": {
    "tag": "E968",
    "penalty": 0,
    "name": "Erythritol",
    "family": "Divers"
  },
  "e999": {
    "tag": "E999",
    "penalty": 0,
    "name": "Extrait de quillaia",
    "family": "Émulsifiants"
  },
  "e999i": {
    "tag": "E999i",
    "penalty": 0,
    "name": "Extrait de quillaia de type 1",
    "family": "Émulsifiants"
  },
  "e999ii": {
    "tag": "E999ii",
    "penalty": 0,
    "name": "Extrait de quillaia de type 2",
    "family": "Émulsifiants"
  },
  "e1000": {
    "tag": "E1000",
    "penalty": 0,
    "name": "Acide cholique",
    "family": "Émulsifiants"
  },
  "e1001": {
    "tag": "E1001",
    "penalty": 0,
    "name": "Sels et esters de choline",
    "family": "Émulsifiants"
  },
  "e1001i": {
    "tag": "E1001i",
    "penalty": 0,
    "name": "Acétate de choline",
    "family": "Émulsifiants"
  },
  "e1001ii": {
    "tag": "E1001ii",
    "penalty": 0,
    "name": "Carbonate de choline",
    "family": "Émulsifiants"
  },
  "e1001iii": {
    "tag": "E1001iii",
    "penalty": 0,
    "name": "Chlorure de choline",
    "family": "Anti-oxydants"
  },
  "e1001iv": {
    "tag": "E1001iv",
    "penalty": 0,
    "name": "Citrate de choline",
    "family": "Émulsifiants"
  },
  "e1001v": {
    "tag": "E1001v",
    "penalty": 0,
    "name": "Tartrate de choline",
    "family": "Émulsifiants"
  },
  "e1001vi": {
    "tag": "E1001vi",
    "penalty": 0,
    "name": "Lactate de choline",
    "family": "Émulsifiants"
  },
  "e1100": {
    "tag": "E1100",
    "penalty": 0,
    "name": "Amylases",
    "family": "Divers"
  },
  "e1101": {
    "tag": "E1101",
    "penalty": 0,
    "name": "Protéases",
    "family": "Divers"
  },
  "e1101i": {
    "tag": "E1101i",
    "penalty": 0,
    "name": "Protéase",
    "family": "Divers"
  },
  "e1101ii": {
    "tag": "E1101ii",
    "penalty": 0,
    "name": "Papaïne",
    "family": "Exhausteurs"
  },
  "e1101iii": {
    "tag": "E1101iii",
    "penalty": 0,
    "name": "Bromélaïne",
    "family": "Divers"
  },
  "e1101iv": {
    "tag": "E1101iv",
    "penalty": 0,
    "name": "Ficine",
    "family": "Divers"
  },
  "e1102": {
    "tag": "E1102",
    "penalty": 0,
    "name": "Glucose oxydase",
    "family": "Anti-oxydants"
  },
  "e1103": {
    "tag": "E1103",
    "penalty": 0,
    "name": "Invertase",
    "family": "Émulsifiants"
  },
  "e1104": {
    "tag": "E1104",
    "penalty": 0,
    "name": "Lipases",
    "family": "Exhausteurs"
  },
  "e1202": {
    "tag": "E1202",
    "penalty": 0,
    "name": "Polyvinylpolypyrrolidone",
    "family": "Divers"
  },
  "e1203": {
    "tag": "E1203",
    "penalty": 0,
    "name": "Alcool polyvinylique",
    "family": "Divers"
  },
  "e1204": {
    "tag": "E1204",
    "penalty": 0,
    "name": "Pullulan",
    "family": "Divers"
  },
  "e1505": {
    "tag": "E1505",
    "penalty": 0,
    "name": "Citrate de triéthyle",
    "family": "Émulsifiants"
  },
  "e1517": {
    "tag": "E1517",
    "penalty": 0,
    "name": "Diacétate de glycéryle",
    "family": "Divers"
  },
  "e101a": {
    "tag": "E101a",
    "penalty": -3,
    "name": "Vitamine B2",
    "family": "Colorants Jaune"
  },
  "e161g": {
    "tag": "E161g",
    "penalty": -3,
    "name": "Canthaxanthine",
    "family": "Colorants Orange"
  },
  "e161h": {
    "tag": "E161h",
    "penalty": -3,
    "name": "Zéaxanthines",
    "family": "Colorants Orange-Rouge"
  },
  "e161hi": {
    "tag": "E161hi",
    "penalty": -3,
    "name": "Zéaxanthine de synthèse",
    "family": "Colorants Orange-Rouge"
  },
  "e161hii": {
    "tag": "E161hii",
    "penalty": -3,
    "name": "Zéaxanthine riche en extrait de Tagetes erecta",
    "family": "Colorants Orange-Rouge"
  },
  "e161i": {
    "tag": "E161i",
    "penalty": -3,
    "name": "Citranaxanthin",
    "family": "Colorants"
  },
  "e174": {
    "tag": "E174",
    "penalty": -3,
    "name": "Argent",
    "family": "Colorants Métal"
  },
  "e181": {
    "tag": "E181",
    "penalty": -3,
    "name": "Tanins",
    "family": "Colorants Rouge"
  },
  "e235": {
    "tag": "E235",
    "penalty": -3,
    "name": "Pimaricine",
    "family": "Conservateurs"
  },
  "e264": {
    "tag": "E264",
    "penalty": -3,
    "name": "Acétate d'ammonium",
    "family": "Acidifiants"
  },
  "e330": {
    "tag": "E330",
    "penalty": -3,
    "name": "Acide citrique",
    "family": "Acidifiants"
  },
  "e355": {
    "tag": "E355",
    "penalty": -3,
    "name": "Acide adipique",
    "family": "Acidifiants"
  },
  "e405": {
    "tag": "E405",
    "penalty": -3,
    "name": "Alginate de propylène glycol",
    "family": "Épaississants"
  },
  "e406": {
    "tag": "E406",
    "penalty": -3,
    "name": "Agar agar",
    "family": "Épaississants"
  },
  "e409": {
    "tag": "E409",
    "penalty": -3,
    "name": "Arabinogalactane",
    "family": "Épaississants"
  },
  "e412": {
    "tag": "E412",
    "penalty": -3,
    "name": "Gomme de Guar",
    "family": "Épaississants"
  },
  "e413": {
    "tag": "E413",
    "penalty": -3,
    "name": "Gomme adragante",
    "family": "Épaississants"
  },
  "e415": {
    "tag": "E415",
    "penalty": -3,
    "name": "Gomme xanthane",
    "family": "Épaississants"
  },
  "e416": {
    "tag": "E416",
    "penalty": -3,
    "name": "Gomme karaya",
    "family": "Épaississants"
  },
  "e420": {
    "tag": "E420",
    "penalty": -3,
    "name": "Sorbitol",
    "family": "Édulcorants"
  },
  "e420i": {
    "tag": "E420i",
    "penalty": -3,
    "name": "Sorbitol",
    "family": "Édulcorants"
  },
  "e420ii": {
    "tag": "E420ii",
    "penalty": -3,
    "name": "Sirop de sorbitol",
    "family": "Édulcorants"
  },
  "e425": {
    "tag": "E425",
    "penalty": -3,
    "name": "Konjac",
    "family": "Épaississants"
  },
  "e445": {
    "tag": "E445",
    "penalty": -3,
    "name": "Gomme ester",
    "family": "Émulsifiants"
  },
  "e460": {
    "tag": "E460",
    "penalty": -3,
    "name": "Celluloses",
    "family": "Émulsifiants"
  },
  "e460i": {
    "tag": "E460i",
    "penalty": -3,
    "name": "Cellulose microcristalline",
    "family": "Émulsifiants"
  },
  "e460ii": {
    "tag": "E460ii",
    "penalty": -3,
    "name": "Cellulose en poudre",
    "family": "Émulsifiants"
  },
  "e461": {
    "tag": "E461",
    "penalty": -3,
    "name": "Méthylcellulose",
    "family": "Émulsifiants"
  },
  "e462": {
    "tag": "E462",
    "penalty": -3,
    "name": "Ethylcellulose",
    "family": "Émulsifiants"
  },
  "e463": {
    "tag": "E463",
    "penalty": -3,
    "name": "Hydroxypropylcellulose",
    "family": "Épaississants"
  },
  "e464": {
    "tag": "E464",
    "penalty": -3,
    "name": "Hydroxypropylméthylcellulose",
    "family": "Épaississants"
  },
  "e465": {
    "tag": "E465",
    "penalty": -3,
    "name": "Ethylméthylcellulose",
    "family": "Épaississants"
  },
  "e466": {
    "tag": "E466",
    "penalty": -3,
    "name": "Gomme de cellulose",
    "family": "Épaississants"
  },
  "e468": {
    "tag": "E468",
    "penalty": -3,
    "name": "Carboxyméthylcellulose de sodium réticulée",
    "family": "Émulsifiants"
  },
  "e469": {
    "tag": "E469",
    "penalty": -3,
    "name": "Carboxyméthylcellulose hydrolysée par voie enzymatique",
    "family": "Épaississants"
  },
  "e470i": {
    "tag": "E470i",
    "penalty": -3,
    "name": "Sels d'acides gras de calcium, potassium et sodium",
    "family": "Acidifiants"
  },
  "e470ii": {
    "tag": "E470ii",
    "penalty": -3,
    "name": "Sels d'acides gras de magnésium",
    "family": "Émulsifiants"
  },
  "e477": {
    "tag": "E477",
    "penalty": -3,
    "name": "Polyricinoléate de propylène glycol",
    "family": "Émulsifiants"
  },
  "e478": {
    "tag": "E478",
    "penalty": -3,
    "name":
        "Esters glycéroliques et propylène - glycoliques d'acides gras lactyles",
    "family": "Émulsifiants"
  },
  "e480": {
    "tag": "E480",
    "penalty": -3,
    "name": "Sulfosuccinate dioctylique de sodium",
    "family": "Émulsifiants"
  },
  "e487": {
    "tag": "E487",
    "penalty": -3,
    "name": "Laurylsulfate de sodium",
    "family": "Émulsifiants"
  },
  "e507": {
    "tag": "E507",
    "penalty": -3,
    "name": "Acide hydrochlorique",
    "family": "Acidifiants"
  },
  "e508": {
    "tag": "E508",
    "penalty": -3,
    "name": "Chlorure de potassium",
    "family": "Épaississants"
  },
  "e509": {
    "tag": "E509",
    "penalty": -3,
    "name": "Chlorure de calcium",
    "family": "Épaississants"
  },
  "e511": {
    "tag": "E511",
    "penalty": -3,
    "name": "Chlorure de magnésium",
    "family": "Épaississants"
  },
  "e514": {
    "tag": "E514",
    "penalty": -3,
    "name": "Sulfate de sodium",
    "family": "Acidifiants"
  },
  "e515": {
    "tag": "E515",
    "penalty": -3,
    "name": "Sulfate de potassium",
    "family": "Acidifiants"
  },
  "e516": {
    "tag": "E516",
    "penalty": -3,
    "name": "Sulfate de calcium",
    "family": "Divers"
  },
  "e517": {
    "tag": "E517",
    "penalty": -3,
    "name": "Sulfate d'ammonium",
    "family": "Divers"
  },
  "e518": {
    "tag": "E518",
    "penalty": -3,
    "name": "Sulfate de magnésium",
    "family": "Épaississants"
  },
  "e524": {
    "tag": "E524",
    "penalty": -3,
    "name": "Hydroxyde de sodium",
    "family": "Acidifiants"
  },
  "e525": {
    "tag": "E525",
    "penalty": -3,
    "name": "Hydroxyde de potassium",
    "family": "Acidifiants"
  },
  "e526": {
    "tag": "E526",
    "penalty": -3,
    "name": "Hydroxyde de calcium",
    "family": "Acidifiants"
  },
  "e527": {
    "tag": "E527",
    "penalty": -3,
    "name": "Hydroxyde d'ammonium",
    "family": "Acidifiants"
  },
  "e528": {
    "tag": "E528",
    "penalty": -3,
    "name": "Hydroxyde de magnésium",
    "family": "Acidifiants"
  },
  "e529": {
    "tag": "E529",
    "penalty": -3,
    "name": "Oxyde de calcium",
    "family": "Acidifiants"
  },
  "e530": {
    "tag": "E530",
    "penalty": -3,
    "name": "Oxyde de magnésium",
    "family": "Acidifiants"
  },
  "e541": {
    "tag": "E541",
    "penalty": -3,
    "name": "Acide aluminoisodique",
    "family": "Acidifiants"
  },
  "e541i": {
    "tag": "E541i",
    "penalty": -3,
    "name": "Phosphate de sodium-aluminium acide",
    "family": "Acidifiants"
  },
  "e541ii": {
    "tag": "E541ii",
    "penalty": -3,
    "name": "Phosphate de sodium-aluminium basique",
    "family": "Acidifiants"
  },
  "e551": {
    "tag": "E551",
    "penalty": -3,
    "name": "Oxyde de silicium",
    "family": "Divers"
  },
  "e553iii": {
    "tag": "E553iii",
    "penalty": -3,
    "name": "Talc",
    "family": "Divers"
  },
  "e554": {
    "tag": "E554",
    "penalty": -3,
    "name": "Silicate d'aluminium et sodium",
    "family": "Divers"
  },
  "e555": {
    "tag": "E555",
    "penalty": -3,
    "name": "Silicate d'aluminium et potassium",
    "family": "Divers"
  },
  "e556": {
    "tag": "E556",
    "penalty": -3,
    "name": "Silicate d'aluminium et calcium",
    "family": "Divers"
  },
  "e557": {
    "tag": "E557",
    "penalty": -3,
    "name": "Silicate de zinc",
    "family": "Divers"
  },
  "e558": {
    "tag": "E558",
    "penalty": -3,
    "name": "Bentonite",
    "family": "Divers"
  },
  "e560": {
    "tag": "E560",
    "penalty": -3,
    "name": "Silicate de potassium",
    "family": "Divers"
  },
  "e574": {
    "tag": "E574",
    "penalty": -3,
    "name": "Acide gluconique",
    "family": "Acidifiants"
  },
  "e636": {
    "tag": "E636",
    "penalty": -3,
    "name": "Maltol",
    "family": "Exhausteurs"
  },
  "e905c": {
    "tag": "E905c",
    "penalty": -3,
    "name": "Cire de pétrole",
    "family": "Divers"
  },
  "e905ci": {
    "tag": "E905ci",
    "penalty": -3,
    "name": "Cire microcristalline",
    "family": "Divers"
  },
  "e905cii": {
    "tag": "E905cii",
    "penalty": -3,
    "name": "Cire de paraffine",
    "family": "Divers"
  },
  "e917": {
    "tag": "E917",
    "penalty": -3,
    "name": "Iodate de potassium",
    "family": "Divers"
  },
  "e921": {"tag": "E921", "penalty": -3, "name": "Cystine", "family": "Divers"},
  "e942": {
    "tag": "E942",
    "penalty": -3,
    "name": "Protoxyde d'azote",
    "family": "Divers"
  },
  "e943a": {
    "tag": "E943a",
    "penalty": -3,
    "name": "Butane",
    "family": "Divers"
  },
  "e943b": {
    "tag": "E943b",
    "penalty": -3,
    "name": "Isobutane",
    "family": "Divers"
  },
  "e944": {"tag": "E944", "penalty": -3, "name": "Propane", "family": "Divers"},
  "e953": {
    "tag": "E953",
    "penalty": -3,
    "name": "Isomalt",
    "family": "Édulcorants"
  },
  "e958": {
    "tag": "E958",
    "penalty": -3,
    "name": "Glycyrrhizine",
    "family": "Édulcorants"
  },
  "e965": {
    "tag": "E965",
    "penalty": -3,
    "name": "Maltitol",
    "family": "Édulcorants"
  },
  "e965i": {
    "tag": "E965i",
    "penalty": -3,
    "name": "Maltitol",
    "family": "Édulcorants"
  },
  "e965ii": {
    "tag": "E965ii",
    "penalty": -3,
    "name": "Sirop de maltitol",
    "family": "Édulcorants"
  },
  "e966": {
    "tag": "E966",
    "penalty": -3,
    "name": "Lactitol",
    "family": "Édulcorants"
  },
  "e967": {
    "tag": "E967",
    "penalty": -3,
    "name": "Xylitol",
    "family": "Édulcorants"
  },
  "e1200": {
    "tag": "E1200",
    "penalty": -3,
    "name": "Polydextrose",
    "family": "Épaississants"
  },
  "e1518": {
    "tag": "E1518",
    "penalty": -3,
    "name": "Triacétate de glycéryle",
    "family": "Divers"
  },
  "e160a": {
    "tag": "E160a",
    "penalty": -15,
    "name": "Provitamine A",
    "family": "Colorants Orange"
  },
  "e160ai": {
    "tag": "E160ai",
    "penalty": -15,
    "name": "Bêta-carotènes de synthèse",
    "family": "Colorants Orange"
  },
  "e160aii": {
    "tag": "E160aii",
    "penalty": -15,
    "name": "Bêta-carotènes de légumes",
    "family": "Colorants Orange"
  },
  "e160aiii": {
    "tag": "E160aiii",
    "penalty": -15,
    "name": "Bêta-carotènes de Blakeslea trispora",
    "family": "Colorants Orange"
  },
  "e160aiv": {
    "tag": "E160aiv",
    "penalty": -15,
    "name": "Bêta-carotènes d'algues",
    "family": "Colorants Orange"
  },
  "e233": {
    "tag": "E233",
    "penalty": -15,
    "name": "Thiabendazole",
    "family": "Conservateurs"
  },
  "e241": {
    "tag": "E241",
    "penalty": -15,
    "name": "Gomme gaïac",
    "family": "Conservateurs"
  },
  "e243": {
    "tag": "E243",
    "penalty": -15,
    "name": "Arginate d'éthyle laurique",
    "family": "Conservateurs"
  },
  "e260": {
    "tag": "E260",
    "penalty": -15,
    "name": "Acide acétique",
    "family": "Conservateurs"
  },
  "e261": {
    "tag": "E261",
    "penalty": -15,
    "name": "Diacétate de potassium",
    "family": "Conservateurs"
  },
  "e261i": {
    "tag": "E261i",
    "penalty": -15,
    "name": "Acétate de potassium",
    "family": "Conservateurs"
  },
  "e261ii": {
    "tag": "E261ii",
    "penalty": -15,
    "name": "Diacétate de potassium",
    "family": "Conservateurs"
  },
  "e265": {
    "tag": "E265",
    "penalty": -15,
    "name": "Acide déhydracétique",
    "family": "Conservateurs"
  },
  "e266": {
    "tag": "E266",
    "penalty": -15,
    "name": "Déhydroacétate de sodium",
    "family": "Conservateurs"
  },
  "e280": {
    "tag": "E280",
    "penalty": -15,
    "name": "Acide propionique",
    "family": "Conservateurs"
  },
  "e281": {
    "tag": "E281",
    "penalty": -15,
    "name": "Propionate de sodium",
    "family": "Conservateurs"
  },
  "e282": {
    "tag": "E282",
    "penalty": -15,
    "name": "Propionate de calcium",
    "family": "Conservateurs"
  },
  "e283": {
    "tag": "E283",
    "penalty": -15,
    "name": "Propionate de potassium",
    "family": "Conservateurs"
  },
  "e296": {
    "tag": "E296",
    "penalty": -15,
    "name": "Acide malique",
    "family": "Acidifiants"
  },
  "e324": {
    "tag": "E324",
    "penalty": -15,
    "name": "Ethoxyquine",
    "family": "Anti-oxydants"
  },
  "e338": {
    "tag": "E338",
    "penalty": -15,
    "name": "Acide phosphorique",
    "family": "Acidifiants"
  },
  "e375": {
    "tag": "E375",
    "penalty": -15,
    "name": "Vitamine B3",
    "family": "Divers"
  },
  "e407": {
    "tag": "E407",
    "penalty": -15,
    "name": "Carraghénanes",
    "family": "Épaississants"
  },
  "e407a": {
    "tag": "E407a",
    "penalty": -15,
    "name": "Algues Eucheuma transformées",
    "family": "Épaississants"
  },
  "e510": {
    "tag": "E510",
    "penalty": -15,
    "name": "Chlorure d'ammonium",
    "family": "Divers"
  },
  "e905": {
    "tag": "E905",
    "penalty": -15,
    "name": "Paraffines",
    "family": "Divers"
  },
  "e905a": {
    "tag": "E905a",
    "penalty": -15,
    "name": "Huile minérale de qualité alimentaire",
    "family": "Divers"
  },
  "e905b": {
    "tag": "E905b",
    "penalty": -15,
    "name": "Vaseline",
    "family": "Divers"
  },
  "e914": {
    "tag": "E914",
    "penalty": -15,
    "name": "Cire de polyéthylène oxydée",
    "family": "Divers"
  },
  "e102": {
    "tag": "E102",
    "penalty": -20,
    "name": "Tartrazine",
    "family": "Colorants Jaune"
  },
  "e107": {
    "tag": "E107",
    "penalty": -20,
    "name": "Jaune 2G",
    "family": "Colorants Jaune"
  },
  "e120": {
    "tag": "E120",
    "penalty": -20,
    "name": "Cochenille",
    "family": "Colorants Rouge"
  },
  "e121": {
    "tag": "E121",
    "penalty": -20,
    "name": "Orseille orcéine",
    "family": "Colorants Rouge"
  },
  "e122": {
    "tag": "E122",
    "penalty": -20,
    "name": "Carmoisine",
    "family": "Colorants Rouge"
  },
  "e125": {
    "tag": "E125",
    "penalty": -20,
    "name": "Écarlate GN",
    "family": "Colorants Rouge"
  },
  "e126": {
    "tag": "E126",
    "penalty": -20,
    "name": "Ponceau 6R",
    "family": "Colorants Rouge"
  },
  "e129": {
    "tag": "E129",
    "penalty": -20,
    "name": "Rouge allura AC",
    "family": "Colorants Rouge"
  },
  "e131": {
    "tag": "E131",
    "penalty": -20,
    "name": "Bleu patenté V",
    "family": "Colorants Bleu"
  },
  "e132": {
    "tag": "E132",
    "penalty": -20,
    "name": "Indigotine",
    "family": "Colorants Bleu"
  },
  "e133": {
    "tag": "E133",
    "penalty": -20,
    "name": "Bleu brillant FCF",
    "family": "Colorants Bleu"
  },
  "e142": {
    "tag": "E142",
    "penalty": -20,
    "name": "Vert brillant BS",
    "family": "Colorants Vert"
  },
  "e150b": {
    "tag": "E150b",
    "penalty": -20,
    "name": "Caramel sulfité",
    "family": "Colorants Brun"
  },
  "e150d": {
    "tag": "E150d",
    "penalty": -20,
    "name": "Caramel au sulfite d'ammonium",
    "family": "Colorants Brun"
  },
  "e151": {
    "tag": "E151",
    "penalty": -20,
    "name": "Noir brillant BN",
    "family": "Colorants Noir"
  },
  "e154": {
    "tag": "E154",
    "penalty": -20,
    "name": "Brun FK",
    "family": "Colorants Brun"
  },
  "e155": {
    "tag": "E155",
    "penalty": -20,
    "name": "Brun chocolat HT",
    "family": "Colorants Brun"
  },
  "e160b": {
    "tag": "E160b",
    "penalty": -20,
    "name": "Roccou",
    "family": "Colorants Orange"
  },
  "e160bi": {
    "tag": "E160bi",
    "penalty": -20,
    "name": "Extraits d'annato à base de bixine",
    "family": "Colorants Orange"
  },
  "e160bii": {
    "tag": "E160bii",
    "penalty": -20,
    "name": "Extraits d'annato à base de norbixine",
    "family": "Colorants Orange"
  },
  "e171": {
    "tag": "E171",
    "penalty": -20,
    "name": "Bixyde de Titane",
    "family": "Colorants Blanc"
  },
  "e209": {
    "tag": "E209",
    "penalty": -20,
    "name": "Para-Hydroxybenzoate d'hépthyle",
    "family": "Conservateurs"
  },
  "e210": {
    "tag": "E210",
    "penalty": -20,
    "name": "Acide benzoïque",
    "family": "Conservateurs"
  },
  "e211": {
    "tag": "E211",
    "penalty": -20,
    "name": "Benzoate de sodium",
    "family": "Conservateurs"
  },
  "e212": {
    "tag": "E212",
    "penalty": -20,
    "name": "Benzoate de potassium",
    "family": "Conservateurs"
  },
  "e213": {
    "tag": "E213",
    "penalty": -20,
    "name": "Benzoate de calcium",
    "family": "Conservateurs"
  },
  "e214": {
    "tag": "E214",
    "penalty": -20,
    "name": "Éthylparabène",
    "family": "Conservateurs"
  },
  "e215": {
    "tag": "E215",
    "penalty": -20,
    "name": "Éthylparabène sodique",
    "family": "Conservateurs"
  },
  "e216": {
    "tag": "E216",
    "penalty": -20,
    "name": "Propylparabène",
    "family": "Conservateurs"
  },
  "e217": {
    "tag": "E217",
    "penalty": -20,
    "name": "Propylparabène sodique",
    "family": "Conservateurs"
  },
  "e218": {
    "tag": "E218",
    "penalty": -20,
    "name": "Methylparabène",
    "family": "Conservateurs"
  },
  "e219": {
    "tag": "E219",
    "penalty": -20,
    "name": "Methylparabène sodique",
    "family": "Conservateurs"
  },
  "e220": {
    "tag": "E220",
    "penalty": -20,
    "name": "Dioxyde de soufre",
    "family": "Conservateurs"
  },
  "e221": {
    "tag": "E221",
    "penalty": -20,
    "name": "Sulfite de sodium",
    "family": "Conservateurs"
  },
  "e222": {
    "tag": "E222",
    "penalty": -20,
    "name": "Bisulfite de sodium",
    "family": "Acidifiants"
  },
  "e223": {
    "tag": "E223",
    "penalty": -20,
    "name": "Disulfite de sodium",
    "family": "Conservateurs"
  },
  "e224": {
    "tag": "E224",
    "penalty": -20,
    "name": "Disulfite de potassium",
    "family": "Conservateurs"
  },
  "e225": {
    "tag": "E225",
    "penalty": -20,
    "name": "Sulfite de potassium",
    "family": "Conservateurs"
  },
  "e226": {
    "tag": "E226",
    "penalty": -20,
    "name": "Sulfite de calcium",
    "family": "Conservateurs"
  },
  "e227": {
    "tag": "E227",
    "penalty": -20,
    "name": "Sulfite acide de calcium",
    "family": "Conservateurs"
  },
  "e228": {
    "tag": "E228",
    "penalty": -20,
    "name": "Sulfite acide de potassium",
    "family": "Conservateurs"
  },
  "e239": {
    "tag": "E239",
    "penalty": -20,
    "name": "Hexaméthyline tétramine",
    "family": "Conservateurs"
  },
  "e242": {
    "tag": "E242",
    "penalty": -20,
    "name": "Dicarbonate de diméthyle",
    "family": "Conservateurs"
  },
  "e251": {
    "tag": "E251",
    "penalty": -20,
    "name": "Salpêtre du Chili",
    "family": "Conservateurs"
  },
  "e252": {
    "tag": "E252",
    "penalty": -20,
    "name": "Nitrate de potassium",
    "family": "Conservateurs"
  },
  "e284": {
    "tag": "E284",
    "penalty": -20,
    "name": "Acide borique",
    "family": "Conservateurs"
  },
  "e285": {
    "tag": "E285",
    "penalty": -20,
    "name": "Borax",
    "family": "Conservateurs"
  },
  "e321": {
    "tag": "E321",
    "penalty": -20,
    "name": "Butylhydroxytoluène",
    "family": "Anti-oxydants"
  },
  "e411": {
    "tag": "E411",
    "penalty": -20,
    "name": "Gomme d'avoine",
    "family": "Acidifiants"
  },
  "e421": {
    "tag": "E421",
    "penalty": -20,
    "name": "Mannitol",
    "family": "Édulcorants"
  },
  "e422": {
    "tag": "E422",
    "penalty": -20,
    "name": "Glycérol",
    "family": "Divers"
  },
  "e430": {
    "tag": "E430",
    "penalty": -20,
    "name": "Stéarate de polyoxyéthylène 8",
    "family": "Émulsifiants"
  },
  "e431": {
    "tag": "E431",
    "penalty": -20,
    "name": "Polyoxyl 40 stéarate",
    "family": "Émulsifiants"
  },
  "e432": {
    "tag": "E432",
    "penalty": -20,
    "name": "Polysorbate 20",
    "family": "Émulsifiants"
  },
  "e433": {
    "tag": "E433",
    "penalty": -20,
    "name": "Polysorbate 80",
    "family": "Émulsifiants"
  },
  "e434": {
    "tag": "E434",
    "penalty": -20,
    "name": "Polysorbate 40",
    "family": "Émulsifiants"
  },
  "e435": {
    "tag": "E435",
    "penalty": -20,
    "name": "Polysorbate 60",
    "family": "Émulsifiants"
  },
  "e436": {
    "tag": "E436",
    "penalty": -20,
    "name": "Polysorbate 65",
    "family": "Émulsifiants"
  },
  "e450i": {
    "tag": "E450i",
    "penalty": -20,
    "name": "Diphosphate disodique",
    "family": "Émulsifiants"
  },
  "e450ii": {
    "tag": "E450ii",
    "penalty": -20,
    "name": "Diphosphate trisodique",
    "family": "Émulsifiants"
  },
  "e450iii": {
    "tag": "E450iii",
    "penalty": -20,
    "name": "Diphosphate tétrasodique",
    "family": "Émulsifiants"
  },
  "e450iv": {
    "tag": "E450iv",
    "penalty": -20,
    "name": "Diphosphate dipotassique",
    "family": "Émulsifiants"
  },
  "e450v": {
    "tag": "E450v",
    "penalty": -20,
    "name": "Diphosphate tétrapotassique",
    "family": "Émulsifiants"
  },
  "e450vi": {
    "tag": "E450vi",
    "penalty": -20,
    "name": "Diphosphate dicalcique",
    "family": "Émulsifiants"
  },
  "e450vii": {
    "tag": "E450vii",
    "penalty": -20,
    "name": "Diphosphate biacide de calcium",
    "family": "Émulsifiants"
  },
  "e451ii": {
    "tag": "E451ii",
    "penalty": -20,
    "name": "Triphosphate pentapotassique",
    "family": "Acidifiants"
  },
  "e452i": {
    "tag": "E452i",
    "penalty": -20,
    "name": "Polyphosphate de sodium",
    "family": "Émulsifiants"
  },
  "e452ii": {
    "tag": "E452ii",
    "penalty": -20,
    "name": "Polyphosphate de potassium",
    "family": "Émulsifiants"
  },
  "e452iii": {
    "tag": "E452iii",
    "penalty": -20,
    "name": "Polyphosphate de sodium-calcium",
    "family": "Émulsifiants"
  },
  "e452iv": {
    "tag": "E452iv",
    "penalty": -20,
    "name": "Métaphosphate de calcium",
    "family": "Émulsifiants"
  },
  "e476": {
    "tag": "E476",
    "penalty": -20,
    "name": "Polyricinoléate de polyglycérol",
    "family": "Émulsifiants"
  },
  "e513": {
    "tag": "E513",
    "penalty": -20,
    "name": "Acide sulfurique",
    "family": "Acidifiants"
  },
  "e620": {
    "tag": "E620",
    "penalty": -20,
    "name": "Acide glutamique",
    "family": "Exhausteurs"
  },
  "e621": {
    "tag": "E621",
    "penalty": -20,
    "name": "Glutamate monosodique",
    "family": "Exhausteurs"
  },
  "e622": {
    "tag": "E622",
    "penalty": -20,
    "name": "Glutamate monopotassique",
    "family": "Exhausteurs"
  },
  "e623": {
    "tag": "E623",
    "penalty": -20,
    "name": "Diglutamate de calcium",
    "family": "Exhausteurs"
  },
  "e624": {
    "tag": "E624",
    "penalty": -20,
    "name": "Glutamate d'ammonium",
    "family": "Exhausteurs"
  },
  "e625": {
    "tag": "E625",
    "penalty": -20,
    "name": "Diglutamate de magnésium",
    "family": "Exhausteurs"
  },
  "e626": {
    "tag": "E626",
    "penalty": -20,
    "name": "Acide guanylique",
    "family": "Exhausteurs"
  },
  "e627": {
    "tag": "E627",
    "penalty": -20,
    "name": "Guanylate de Sodium",
    "family": "Exhausteurs"
  },
  "e628": {
    "tag": "E628",
    "penalty": -20,
    "name": "Guanylate de Potassium",
    "family": "Exhausteurs"
  },
  "e629": {
    "tag": "E629",
    "penalty": -20,
    "name": "Guanylate de Calcium",
    "family": "Exhausteurs"
  },
  "e905d": {
    "tag": "E905d",
    "penalty": -20,
    "name": "Huile minérale, viscosité élevée",
    "family": "Divers"
  },
  "e905e": {
    "tag": "E905e",
    "penalty": -20,
    "name": "Huile minérale, viscosité moyenne et faible catégorie I",
    "family": "Divers"
  },
  "e905f": {
    "tag": "E905f",
    "penalty": -20,
    "name": "Huile minérale, viscosité moyenne et faible catégorie II",
    "family": "Divers"
  },
  "e905g": {
    "tag": "E905g",
    "penalty": -20,
    "name": "Huile minérale, viscosité moyenne et faible catégorie III",
    "family": "Divers"
  },
  "e927a": {
    "tag": "E927a",
    "penalty": -20,
    "name": "Azodicarbonamide",
    "family": "Divers"
  },
  "e940": {
    "tag": "E940",
    "penalty": -20,
    "name": "Dichlorodifluorométhane",
    "family": "Divers"
  },
  "e950": {
    "tag": "E950",
    "penalty": -20,
    "name": "Acésulfate de potassium",
    "family": "Édulcorants"
  },
  "e954": {
    "tag": "E954",
    "penalty": -20,
    "name": "Saccharine",
    "family": "Édulcorants"
  },
  "e954i": {
    "tag": "E954i",
    "penalty": -20,
    "name": "Saccharine de sodium",
    "family": "Édulcorants"
  },
  "e954ii": {
    "tag": "E954ii",
    "penalty": -20,
    "name": "Saccharine de calcium",
    "family": "Édulcorants"
  },
  "e954iii": {
    "tag": "E954iii",
    "penalty": -20,
    "name": "Saccharine de potassium",
    "family": "Édulcorants"
  },
  "e954iv": {
    "tag": "E954iv",
    "penalty": -20,
    "name": "Saccharine de sodium",
    "family": "Édulcorants"
  },
  "e962": {
    "tag": "E962",
    "penalty": -20,
    "name": "Sel d'aspartame acésulfame",
    "family": "Édulcorants"
  },
  "e1105": {
    "tag": "E1105",
    "penalty": -20,
    "name": "Lysozyme",
    "family": "Conservateurs"
  },
  "e1201": {
    "tag": "E1201",
    "penalty": -20,
    "name": "Polyvinylpyrrolidone",
    "family": "Épaississants"
  },
  "e1400": {
    "tag": "E1400",
    "penalty": -20,
    "name": "Dextrines, amidon torréfié",
    "family": "Épaississants"
  },
  "e1401": {
    "tag": "E1401",
    "penalty": -20,
    "name": "Amidon traité aux acides",
    "family": "Épaississants"
  },
  "e1402": {
    "tag": "E1402",
    "penalty": -20,
    "name": "Amidon traité aux alcalis",
    "family": "Épaississants"
  },
  "e1403": {
    "tag": "E1403",
    "penalty": -20,
    "name": "Amidon blanchi",
    "family": "Épaississants"
  },
  "e1404": {
    "tag": "E1404",
    "penalty": -20,
    "name": "Amidon oxydé",
    "family": "Épaississants"
  },
  "e1405": {
    "tag": "E1405",
    "penalty": -20,
    "name": "Amidons traités aux enzymes",
    "family": "Épaississants"
  },
  "e1410": {
    "tag": "E1410",
    "penalty": -20,
    "name": "Phosphate d'amidon",
    "family": "Épaississants"
  },
  "e1411": {
    "tag": "E1411",
    "penalty": -20,
    "name": "Glycérol de diamidon",
    "family": "Épaississants"
  },
  "e1412": {
    "tag": "E1412",
    "penalty": -20,
    "name": "Phosphate de diamidon",
    "family": "Épaississants"
  },
  "e1413": {
    "tag": "E1413",
    "penalty": -20,
    "name": "Phosphate de diamidon phosphaté",
    "family": "Épaississants"
  },
  "e1414": {
    "tag": "E1414",
    "penalty": -20,
    "name": "Phosphate de diamidon acétylé",
    "family": "Épaississants"
  },
  "e1420": {
    "tag": "E1420",
    "penalty": -20,
    "name": "Amidon acétylé",
    "family": "Épaississants"
  },
  "e1421": {
    "tag": "E1421",
    "penalty": -20,
    "name": "Amidon acétylé à acétate de vinyle",
    "family": "Épaississants"
  },
  "e1422": {
    "tag": "E1422",
    "penalty": -20,
    "name": "Adipate de diamidon acétylé",
    "family": "Épaississants"
  },
  "e1423": {
    "tag": "E1423",
    "penalty": -20,
    "name": "Glycérol de diamidon acétylé",
    "family": "Épaississants"
  },
  "e1440": {
    "tag": "E1440",
    "penalty": -20,
    "name": "Amidon Hydroxypropylé",
    "family": "Épaississants"
  },
  "e1442": {
    "tag": "E1442",
    "penalty": -20,
    "name": "Phosphate de diamidon hydroxypropylé",
    "family": "Épaississants"
  },
  "e1443": {
    "tag": "E1443",
    "penalty": -20,
    "name": "Glycérol de diamidon hydroxypropylé",
    "family": "Épaississants"
  },
  "e1450": {
    "tag": "E1450",
    "penalty": -20,
    "name": "Octényle succinate d'amidon sodique",
    "family": "Épaississants"
  },
  "e1451": {
    "tag": "E1451",
    "penalty": -20,
    "name": "Amidon oxydé acétylé",
    "family": "Épaississants"
  },
  "e1452": {
    "tag": "E1452",
    "penalty": -20,
    "name": "Octényl succinate d'amidon d'aluminium",
    "family": "Émulsifiants"
  },
  "e1503": {
    "tag": "E1503",
    "penalty": -20,
    "name": "Huile de ricin",
    "family": "Divers"
  },
  "e1519": {
    "tag": "E1519",
    "penalty": -20,
    "name": "Alcool benzylique",
    "family": "Divers"
  },
  "e1520": {
    "tag": "E1520",
    "penalty": -20,
    "name": "Propylène glycol",
    "family": "Divers"
  },
  "e1521": {
    "tag": "E1521",
    "penalty": -20,
    "name": "Polyéthylène-glycol",
    "family": "Divers"
  },
  "e104": {
    "tag": "E104",
    "penalty": -30,
    "name": "Jaune de quinoléine",
    "family": "Colorants Jaune"
  },
  "e110": {
    "tag": "E110",
    "penalty": -30,
    "name": "Jaune orangé S",
    "family": "Colorants Orange"
  },
  "e123": {
    "tag": "E123",
    "penalty": -30,
    "name": "Amarante",
    "family": "Colorants Rouge"
  },
  "e127": {
    "tag": "E127",
    "penalty": -30,
    "name": "Erythrosine",
    "family": "Colorants Rouge"
  },
  "e152": {
    "tag": "E152",
    "penalty": -30,
    "name": "Noir de carbone",
    "family": "Colorants Noir"
  },
  "e230": {
    "tag": "E230",
    "penalty": -30,
    "name": "Diphényle",
    "family": "Conservateurs"
  },
  "e231": {
    "tag": "E231",
    "penalty": -30,
    "name": "Orthophénylphénol",
    "family": "Conservateurs"
  },
  "e232": {
    "tag": "E232",
    "penalty": -30,
    "name": "Orthophénylphénate de sodium",
    "family": "Conservateurs"
  },
  "e236": {
    "tag": "E236",
    "penalty": -30,
    "name": "Acide formique",
    "family": "Conservateurs"
  },
  "e237": {
    "tag": "E237",
    "penalty": -30,
    "name": "Formiate de sodium",
    "family": "Conservateurs"
  },
  "e238": {
    "tag": "E238",
    "penalty": -30,
    "name": "Formiate de calcium",
    "family": "Conservateurs"
  },
  "e249": {
    "tag": "E249",
    "penalty": -30,
    "name": "Nitrite de potassium",
    "family": "Conservateurs"
  },
  "e250": {
    "tag": "E250",
    "penalty": -30,
    "name": "Nitrite de sodium",
    "family": "Conservateurs"
  },
  "e310": {
    "tag": "E310",
    "penalty": -30,
    "name": "Gallate de propyle",
    "family": "Anti-oxydants"
  },
  "e319": {
    "tag": "E319",
    "penalty": -30,
    "name": "BHQT",
    "family": "Conservateurs"
  },
  "e320": {
    "tag": "E320",
    "penalty": -30,
    "name": "Buthylhydroxyanisol",
    "family": "Anti-oxydants"
  },
  "e385": {
    "tag": "E385",
    "penalty": -30,
    "name": "Calcium-dinatrium-EDTA",
    "family": "Anti-oxydants"
  },
  "e443": {
    "tag": "E443",
    "penalty": -30,
    "name": "Huile végétale bromée",
    "family": "Émulsifiants"
  },
  "e519": {
    "tag": "E519",
    "penalty": -30,
    "name": "Sulfate de cuivre II",
    "family": "Divers"
  },
  "e520": {
    "tag": "E520",
    "penalty": -30,
    "name": "Sulfate d'aluminium",
    "family": "Épaississants"
  },
  "e521": {
    "tag": "E521",
    "penalty": -30,
    "name": "Sulfate d'aluminium sodique",
    "family": "Épaississants"
  },
  "e522": {
    "tag": "E522",
    "penalty": -30,
    "name": "Sulfate d'aluminium potassique",
    "family": "Acidifiants"
  },
  "e523": {
    "tag": "E523",
    "penalty": -30,
    "name": "Sulfate d'aluminium ammonique",
    "family": "Épaississants"
  },
  "e559": {"tag": "E559", "penalty": -30, "name": "Kaolin", "family": "Divers"},
  "e925": {"tag": "E925", "penalty": -30, "name": "Chlore", "family": "Divers"},
  "e951": {
    "tag": "E951",
    "penalty": -30,
    "name": "Aspartame",
    "family": "Édulcorants"
  },
  "e103": {
    "tag": "E103",
    "penalty": -45,
    "name": "Chrysoïne S",
    "family": "Colorants Jaune"
  },
  "e111": {
    "tag": "E111",
    "penalty": -45,
    "name": "Orange CGN",
    "family": "Colorants Orange"
  },
  "e124": {
    "tag": "E124",
    "penalty": -45,
    "name": "Ponceau 4R",
    "family": "Colorants Rouge"
  },
  "e128": {
    "tag": "E128",
    "penalty": -45,
    "name": "Rouge 2G",
    "family": "Colorants Rouge"
  },
  "e173": {
    "tag": "E173",
    "penalty": -45,
    "name": "Aluminium",
    "family": "Colorants Métal"
  },
  "e952": {
    "tag": "E952",
    "penalty": -45,
    "name": "Acide cyclamique et ses sels de Na et de Ca",
    "family": "Édulcorants"
  },
  "e952i": {
    "tag": "E952i",
    "penalty": -45,
    "name": "Acide cyclamique",
    "family": "Édulcorants"
  },
  "e952ii": {
    "tag": "E952ii",
    "penalty": -45,
    "name": "Cyclamate de calcium",
    "family": "Édulcorants"
  },
  "e952iii": {
    "tag": "E952iii",
    "penalty": -45,
    "name": "Cyclamate de potassium",
    "family": "Édulcorants"
  },
  "e952iv": {
    "tag": "E952iv",
    "penalty": -45,
    "name": "Cyclamate de sodium",
    "family": "Édulcorants"
  },
  "e143": {
    "tag": "E143",
    "penalty": -45,
    "name": "Vert solide FCF",
    "family": "Colorants Vert"
  },
  "e240": {
    "tag": "E240",
    "penalty": -45,
    "name": "Formaldéhyde",
    "family": "Conservateurs"
  },
  "e386": {
    "tag": "E386",
    "penalty": -45,
    "name": "Ethylène-diamine-tétra-acètate disodique",
    "family": "Anti-oxydants"
  },
  "e924": {
    "tag": "E924",
    "penalty": -45,
    "name": "Bromate de potassium",
    "family": "Divers"
  },
  "e924a": {
    "tag": "E924a",
    "penalty": -45,
    "name": "Bromate de potassium",
    "family": "Divers"
  },
  "e924b": {
    "tag": "E924b",
    "penalty": -45,
    "name": "Bromate de calcium",
    "family": "Divers"
  },
  "e926": {
    "tag": "E926",
    "penalty": -45,
    "name": "Oxyde de chlorine",
    "family": "Divers"
  }
};
