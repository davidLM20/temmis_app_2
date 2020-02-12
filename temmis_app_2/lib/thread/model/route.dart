// To parse this JSON data, do
//
//     final route = routeFromJson(jsonString);

import 'dart:convert';

Hilo routeFromJson(String str) => Hilo.fromJson(json.decode(str));

String routeToJson(Hilo data) => json.encode(data.toJson());

class Hilo {
    String description;
    List<RouteElement> route;

    Hilo({
        this.description,
        this.route,
    });

    factory Hilo.fromJson(Map<String, dynamic> json) => Hilo(
        description: json["description"],
        route: List<RouteElement>.from(json["route"].map((x) => RouteElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "route": List<dynamic>.from(route.map((x) => x.toJson())),
    };
}

class RouteElement {
    String role;
    List<Event> event;

    RouteElement({
        this.role,
        this.event,
    });

    factory RouteElement.fromJson(Map<String, dynamic> json) => RouteElement(
        role: json["role"],
        event: List<Event>.from(json["event"].map((x) => Event.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "role": role,
        "event": List<dynamic>.from(event.map((x) => x.toJson())),
    };
}

class Event {
    int id;
    String text;
    String role;
    int next;
    List<Option> option;
    String description;
    int scoreTotal;

    Event({
        this.id,
        this.text,
        this.role,
        this.next,
        this.option,
        this.description,
        this.scoreTotal,
    });

    factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"],
        text: json["text"] == null ? null : json["text"],
        role: json["role"] == null ? null : json["role"],
        next: json["next"] == null ? null : json["next"],
        option: json["option"] == null ? null : List<Option>.from(json["option"].map((x) => Option.fromJson(x))),
        description: json["description"] == null ? null : json["description"],
        scoreTotal: json["score_total"] == null ? null : json["score_total"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "text": text == null ? null : text,
        "role": role == null ? null : role,
        "next": next == null ? null : next,
        "option": option == null ? null : List<dynamic>.from(option.map((x) => x.toJson())),
        "description": description == null ? null : description,
        "score_total": scoreTotal == null ? null : scoreTotal,
    };
}

class Option {
    String text;
    int score;
    int next;

    Option({
        this.text,
        this.score,
        this.next,
    });

    factory Option.fromJson(Map<String, dynamic> json) => Option(
        text: json["text"],
        score: json["score"],
        next: json["next"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "score": score,
        "next": next,
    };
}
