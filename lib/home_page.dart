import 'package:flutter/material.dart';
import 'package:b2b/auth.dart';
import 'package:b2b/auth_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({this.onSignedOut});
  final VoidCallback onSignedOut;

  Future<void> _signOut(BuildContext context) async {
    try {
      final BaseAuth auth = AuthProvider.of(context).auth;
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Page'),
        actions: <Widget>[
          FlatButton(
            child: Text('Logout', style: TextStyle(fontSize: 17.0, color: Colors.white)),
            onPressed: () => _signOut(context),
          )
        ],
      ),
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child:Container(
              color:Colors.lightBlue.withOpacity(0.8)
            ),
            clipper:getClipper(),
          ),
          Positioned(
            width: 390.0,
            top: MediaQuery.of(context).size.height / 14,
            child:Column(children: <Widget>[
              Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(color: 
                Colors.red,
                image:DecorationImage(
                  image:NetworkImage('https://scontent.fada1-1.fna.fbcdn.net/v/t1.0-9/p960x960/82783835_10213036865151107_1871536899789684736_o.jpg?_nc_cat=103&_nc_sid=85a577&_nc_ohc=HGJl0ccFPssAX9di-w7&_nc_ht=scontent.fada1-1.fna&_nc_tp=6&oh=ac0468a2d75ffeca1a40b05ba097bd91&oe=5EFC8525'),
                  fit:BoxFit.cover
                ),
                borderRadius:BorderRadius.all(Radius.circular(75.0)
                ),
                boxShadow: [
                  BoxShadow(blurRadius:7.0,color:Colors.black)
                ]
                   )
              ),
              SizedBox(height: 90.0,),
              TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your username'
            ),
          ),
               TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your city'
            ),
          ),
               TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your age'
            ),
          ),

   const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {
             Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new SecondScreen();
            }));
          },
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(11.10),
            child: const Text(
              'Create Library',
              style: TextStyle(fontSize: 18)
            ),
          ),
        ),
  

            ],),
          )
        ],
      ),
    );
  }
}
class getClipper extends CustomClipper<Path>{

  Path getClip(Size size){
    var path=new Path();
    path.lineTo(0.0, size.height /3.9);
    path.lineTo(size.width+10, 0.0);
    path.close();
    return path;  
  }



  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }

}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library Page'),
      ),
      body: Center(
        child: RaisedButton(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(120.10),
          side: BorderSide(color: Colors.black)
        ),
          padding: const EdgeInsets.all(30.10),
          color: Colors.lightBlue,
          child: Text(
            'Go To Library',
            style: TextStyle(fontSize:20,fontStyle:FontStyle.italic)
          ),
          onPressed: () {
           Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new ThirdScreen();
            }));
            
          },
        ),
      ),
    );
  }
}


class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'),
        actions: <Widget>[
         
        ],
      ),
      body: new Stack(
        children: <Widget>[
         
          Positioned(
            width: 390.0,
            top: MediaQuery.of(context).size.height / 14,
            child:Column(children: <Widget>[
              Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(color: 
                Colors.red,
                image:DecorationImage(
                  image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWv94ka1oFFlZNGg6g8D7RWmt32lJz4b4cRT5YrtLtsVU7QpoF&usqp=CAU'),
                  fit:BoxFit.cover
                ),
                borderRadius:BorderRadius.all(Radius.circular(75.0)
                ),
                boxShadow: [
                  BoxShadow(blurRadius:7.0,color:Colors.black)
                ]
                   )
              ),
             

   const SizedBox(height: 100),
        RaisedButton(
          onPressed: () {
        //          showAlertDialog(context);
                   Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new Example();
            }));
          },
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(11.10),
            child: const Text(
              'Create Book',
              style: TextStyle(fontSize: 18)
            ),
          ),
        ),

         RaisedButton(
          onPressed: () {
        //          showAlertDialog(context);
                   Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new SearchBar();
            }));
          },
          textColor: Colors.white,
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(11.10),
            child: const Text(
              'Search Book',
              style: TextStyle(fontSize: 18)
            ),
          ),
        ),
  
            ],),
          )
        ],
      ),
    );
  }
}


class Example extends StatefulWidget{
  State<StatefulWidget>createState(){
    return LibraryState();
  }
}

class LibraryState extends State<Example> {
  @override
  List<String> item=List();
  String temp;
  String temp2;
  String temp3;

  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:Text('Add Book To List') ,
          centerTitle: true,
        ),
        body:ListView(
          children: <Widget>[
             Container(
                   margin: const EdgeInsets.only(top: 20.0),

                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(color: 
                Colors.red,
                
                image:DecorationImage(
                  
                  image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWv94ka1oFFlZNGg6g8D7RWmt32lJz4b4cRT5YrtLtsVU7QpoF&usqp=CAU'),
                  fit:BoxFit.cover
                ),
                borderRadius:BorderRadius.all(Radius.circular(55.0)
                ),
                boxShadow: [
                  BoxShadow(blurRadius:7.0,color:Colors.black)
                ]
                   )
              ),
               TextFormField(
            decoration: InputDecoration(
              labelText: 'ISBN'
            ),
             onChanged: (str){
                temp=str;
              },
              maxLength: 20,
          ), 

          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter Book Name'
            ),
             onChanged: (str){
                temp2=str;
              },
              maxLength: 20,
          ), 

          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter Author Name'
            ),
             onChanged: (str){
                temp3=str;
              },
              maxLength: 20,
          ), 

         
            RaisedButton(
              child:Text('EKLE'),
              onPressed:(){
                setState(() {
                  item.add(temp);
                 item.add(temp2);
                 item.add(temp3);
            //  showAlertDialog(context);
                });                               
              },
            ),
    
            ListView(
              shrinkWrap: true,
              children :item.map((element) => Text(element)).toList(),
            )
          ],
        )
      )
    );
  }
}

/*
showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { },
  );


  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Bilgi"),
    content: Text("Kitabınız Başarıyla Eklendi."),
    actions: [
      
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
*/
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
      drawer: Drawer(),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final cities = [
  "ADANA",
  "ADIYAMAN",
     "AFYONKARAHİSAR",
    "AĞRI",
    "AMASYA",
     "ANKARA",
   "ANTALYA",
    "ARTVİN",
     "AYDIN",
     "BALIKESİR",
     "BİLECİKK",
    "BİNGÖL",
    "BİTLİS",
    "BOLU",
    "BURDUR",
    "BURSA",
     "ÇANAKKALE",
     "ÇANKIRI",
     "ÇORUM",
    "DENİZLİ",
     "DİYARBAKIR",
     "EDİRNE",
     "ELAZIĞ",
    "ERZİNCAN",
     "ERZURUM",
     "ESKİŞEHİR",
     "GAZİANTEP",
     "GİRESUN",
    "GÜMÜŞHANE",
     "HAKKARİ",
    "HATAY",
     "ISPARTA",
     "MERSİN",
    "İSTANBUL",
    "İZMİR",
     "KARS",
     "KASTAMONU",
    "KAYSERİ",
     "KIRKLARELİ",
     "KIRŞEHİR",
     "KOCAELİ",
     "KONYA",
     "KÜTAHYA",
   "MALATYA",
   "MANİSA",
    "KAHRAMANMARAŞ",
     "MARDİN",
     "MUĞLA",
     "MUŞ",
     "NEVŞEHİR",
     "NİĞDE",
     "ORDU",
     "RİZE",
     "SAKARYA",
     "SAMSUN",
     "SİİRT",
     "SİNOP",
     "SİVAS",
    "TEKİRDAĞ",
     "TOKAT",
     "TRABZON",
     "TUNCELİ",
     "ŞANLIURFA",
     "UŞAK",
      "VAN",
     "YOZGAT",
     "ZONGULDAK",
     "AKSARAY",
     "BAYBURT",
     "KARAMAN",
     "KIRIKKALE",
     "BATMAN",
     "ŞIRNAK",
     "BARTIN",
     "ARDAHAN",
     "IĞDIR",
     "YALOVA",
     "KARABüK",
     "KİLİS",
     "OSMANİYE",
     "DÜZCE"
  ];

  final recentCities = [
     "IĞDIR",
     "YALOVA",
     "KARABüK",
     "KİLİS",
     "OSMANİYE",
     "DÜZCE"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.red,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
            onTap: () {
              showResults(context);
            },
            leading: Icon(Icons.location_city),
            title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ]),
            ),
          ),
      itemCount: suggestionList.length,
    );
  }
}
