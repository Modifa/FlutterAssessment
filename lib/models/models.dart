import 'dart:ffi';

class Countries {
  final String name;
  final String alpha2Code;
  final String alpha3Code;
  final String capital;
  final List callingCodes;
  final String region;
  final String subregion;
  final int population;
  final List latlng;
  final String demonym;
  final double area;
  final double gini;
  final List timezones;
  final List borders;
  final String nativeName;
  final String numericCode;
  final List currencies;
  final List languages;
  final Map<String, dynamic> translations;
  final String flag;
  final List regionalBlocs;
  final String cioc;

  Countries(
      this.name,
      this.alpha2Code,
      this.alpha3Code,
      this.callingCodes,
      this.region,
      this.subregion,
      this.population,
      this.capital,
      this.latlng,
      this.demonym,
      this.area,
      this.gini,
      this.timezones,
      this.borders,
      this.nativeName,
      this.numericCode,
      this.currencies,
      this.languages,
      this.translations,
      this.flag,
      this.regionalBlocs,
      this.cioc);
}

class RegionalBlocs {
  final List<RegionalBloc> regionalBloc;
  RegionalBlocs(this.regionalBloc);
}

class RegionalBloc {
  final String acronym;
  final String name;
  final List<String> otherAcronyms;
  final List<String> otherNames;
  RegionalBloc(this.acronym, this.name, this.otherAcronyms, this.otherNames);
}

class Languages {
  final List<Language> language;
  Languages(this.language);
}

class Translations {
  final String de;
  final String es;
  final String fr;
  final String ja;
  final String it;
  final String br;
  final String pt;
  final String nl;
  final String hr;
  final String fa;
  Translations(this.br, this.de, this.es, this.fa, this.fr, this.hr, this.it,
      this.ja, this.nl, this.pt);
}

class Language {
  final String iso639_1;
  final String iso639_2;
  final String name;
  final String nativeName;
  Language(this.iso639_1, this.iso639_2, this.name, this.nativeName);
}

class CallingCodes {
  final String capital;
  final AltSpellings altSpellings;
  CallingCodes(this.altSpellings, this.capital);
}

class AltSpellings {
  final List<String> altSpellings;
  AltSpellings(this.altSpellings);
}

class Currencies {
  final String code;
  final String name;
  final String symbol;
  Currencies(this.code, this.name, this.symbol);
}
