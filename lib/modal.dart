// class sample {
//   String? activity;
//   String? type;
//   int? participants;
//   double? price;
//   String? link;
//   String? key;
//   double? accessibility;
//
//   sample(
//       {this.activity,
//         this.type,
//         this.participants,
//         this.price,
//         this.link,
//         this.key,
//         this.accessibility});
//
//   sample.fromJson(Map<String, dynamic> json) {
//     activity = json['activity'];
//     type = json['type'];
//     participants = json['participants'];
//     price = json['price'];
//     link = json['link'];
//     key = json['key'];
//     accessibility = json['accessibility'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['activity'] = this.activity;
//     data['type'] = this.type;
//     data['participants'] = this.participants;
//     data['price'] = this.price;
//     data['link'] = this.link;
//     data['key'] = this.key;
//     data['accessibility'] = this.accessibility;
//     return data;
//   }
// }

// class coindesk {
//   Time? time;
//   String? disclaimer;
//   String? chartName;
//   Bpi? bpi;
//
//   coindesk({this.time, this.disclaimer, this.chartName, this.bpi});
//
//   coindesk.fromJson(Map<String, dynamic> json) {
//     time = json['time'] != null ? new Time.fromJson(json['time']) : null;
//     disclaimer = json['disclaimer'];
//     chartName = json['chartName'];
//     bpi = json['bpi'] != null ? new Bpi.fromJson(json['bpi']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.time != null) {
//       data['time'] = this.time!.toJson();
//     }
//     data['disclaimer'] = this.disclaimer;
//     data['chartName'] = this.chartName;
//     if (this.bpi != null) {
//       data['bpi'] = this.bpi!.toJson();
//     }
//     return data;
//   }
// }
//
// class Time {
//   String? updated;
//   String? updatedISO;
//   String? updateduk;
//
//   Time({this.updated, this.updatedISO, this.updateduk});
//
//   Time.fromJson(Map<String, dynamic> json) {
//     updated = json['updated'];
//     updatedISO = json['updatedISO'];
//     updateduk = json['updateduk'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['updated'] = this.updated;
//     data['updatedISO'] = this.updatedISO;
//     data['updateduk'] = this.updateduk;
//     return data;
//   }
// }
//
// class Bpi {
//   USD? uSD;
//   USD? gBP;
//   USD? eUR;
//
//   Bpi({this.uSD, this.gBP, this.eUR});
//
//   Bpi.fromJson(Map<String, dynamic> json) {
//     uSD = json['USD'] != null ? new USD.fromJson(json['USD']) : null;
//     gBP = json['GBP'] != null ? new USD.fromJson(json['GBP']) : null;
//     eUR = json['EUR'] != null ? new USD.fromJson(json['EUR']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.uSD != null) {
//       data['USD'] = this.uSD!.toJson();
//     }
//     if (this.gBP != null) {
//       data['GBP'] = this.gBP!.toJson();
//     }
//     if (this.eUR != null) {
//       data['EUR'] = this.eUR!.toJson();
//     }
//     return data;
//   }
// }
//
// class USD {
//   String? code;
//   String? symbol;
//   String? rate;
//   String? description;
//   double? rateFloat;
//
//   USD({this.code, this.symbol, this.rate, this.description, this.rateFloat});
//
//   USD.fromJson(Map<String, dynamic> json) {
//     code = json['code'];
//     symbol = json['symbol'];
//     rate = json['rate'];
//     description = json['description'];
//     rateFloat = json['rate_float'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['code'] = this.code;
//     data['symbol'] = this.symbol;
//     data['rate'] = this.rate;
//     data['description'] = this.description;
//     data['rate_float'] = this.rateFloat;
//     return data;
//   }
// }

// class breeds {
//   String? message;
//   String? status;
//
//   breeds({this.message, this.status});
//
//   breeds.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     status = json['status'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['message'] = this.message;
//     data['status'] = this.status;
//     return data;
//   }
// }

// class National {
//   int? count;
//   String? name;
//   List<Country>? country;
//
//   National({this.count, this.name, this.country});
//
//   National.fromJson(Map<String, dynamic> json) {
//     count = json['count'];
//     name = json['name'];
//     if (json['country'] != null) {
//       country = <Country>[];
//       json['country'].forEach((v) {
//         country!.add(new Country.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['count'] = this.count;
//     data['name'] = this.name;
//     if (this.country != null) {
//       data['country'] = this.country!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Country {
//   String? countryId;
//   double? probability;
//
//   Country({this.countryId, this.probability});
//
//   Country.fromJson(Map<String, dynamic> json) {
//     countryId = json['country_id'];
//     probability = json['probability'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['country_id'] = this.countryId;
//     data['probability'] = this.probability;
//     return data;
//   }
// }
class Universe {
  String? alphaTwoCode;
  List<String>? webPages;
  // Null? stateProvince;
  // String? name;
  // List<String>? domains;
  String? country;

  Universe(
      {this.alphaTwoCode,
        this.webPages,
        // this.stateProvince,
        // this.name,
        // this.domains,
        this.country
      });

  Universe.fromJson(Map<String, dynamic> json) {
    alphaTwoCode = json['alpha_two_code'];
    webPages = json['web_pages'].cast<String>();
    // stateProvince = json['state-province'];
    // name = json['name'];
    // domains = json['domains'].cast<String>();
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alpha_two_code'] = this.alphaTwoCode;
    data['web_pages'] = this.webPages;
    // data['state-province'] = this.stateProvince;
    // data['name'] = this.name;
    // data['domains'] = this.domains;
    data['country'] = this.country;
    return data;
  }
}
