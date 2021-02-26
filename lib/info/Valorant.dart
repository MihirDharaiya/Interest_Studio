import 'package:flutter/material.dart';

class ValorantInfo extends StatefulWidget {
  static const String id = 'valorant_info';
  @override
  _ValorantInfoState createState() => _ValorantInfoState();
}

class _ValorantInfoState extends State<ValorantInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('VALORANT',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
              child: Center(
                child: Text('ABOUT VALORANT:',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Valorant is a free-to-play multiplayer tactical first-person hero shooter game'
                    'developed and published by Riot Games, for Microsoft Windows.Players play as one of a set of agents, '
                    'characters designed based on several countries and cultures around the world.In the main game mode, '
                    'players are assigned to either the attacking or defending team with each team having five players on it. '
                    'Agents have unique abilities, each requiring charges, as well as a unique ultimate ability that requires '
                    'charging through kills, deaths, or spike actions. Every player starts each round with a "classic" pistol and '
                    'one or more "signature ability" charge.Other weapons and ability charges can be purchased using an '
                    'in-game economic system that awards money based on the outcome of the previous round, '
                    'any kills the player is responsible for, and any actions taken with the spike. '
                ,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            OutlinedButton(onPressed: (){}, child: Text(
              'Follow This Interest',
              style: TextStyle(
              ),
            ),
              style: OutlinedButton.styleFrom(primary: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}




