// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

class WatchedModel {
  final image;
  final name;
  final stars;
  final mint;
  final episode1, episode1num;
  final episode2, episode2num;
  final episode3, episode3num;
  final type;
  final plot;
  final detailsImg;

  WatchedModel(
      {required this.mint,
      required this.detailsImg,
      required this.episode1num,
      required this.episode2num,
      required this.episode3num,
      required this.image,
      required this.episode1,
      required this.episode2,
      required this.episode3,
      required this.name,
      required this.stars,
      required this.type,
      required this.plot});
}

List<WatchedModel> WatchedList = [
 
  WatchedModel(
      mint: 120,
 episode1: "assets/images/Do_You_Believe_In_Reincarnation.webp",
    episode1num: 1,
    episode2: "assets/images/Your_Place_In_Heaven.webp",
    episode2num: 1,
    episode3: "assets/images/The_End_Of_The_Road.webp",
    episode3num: 1,
      detailsImg: 'assets/images/Money_Heist_Part_5_Poster.webp',
      image: "assets/images/Money_Heist_Part_5_Poster.webp",
      name: "La Casa De Papel",
      stars: 4.0,
      type: "Action and Crime",
      plot:
          """"Money Heist" also known as "La Casa de Papel," is a gripping Spanish television series that follows the story of a criminal mastermind known as "The Professor" and his team of eight skilled thieves. Their plan involves taking hostages and locking themselves inside the Royal Mint of Spain, manipulating the police and executing an audacious heist. As the heist unfolds, the series delves into themes of deception, loyalty, and the intricate strategies employed by both the thieves and the authorities. With each episode, the plot thickens, tension rises, and unexpected twists and turns keep viewers on the edge of their seats. "Money Heist" is renowned for its compelling characters, intricate storytelling, and a thrilling cat-and-mouse game between the criminals and the law enforcement agencies."""),
 
  WatchedModel(
   episode1: "assets/images/lucifar ep1.webp",
      episode1num: 3,
      episode2: "assets/images/lucifar ep2.webp",
      episode2num: 7,
      episode3: "assets/images/lucifar ep3.webp",
      episode3num: 10,
    mint: 140,
    detailsImg: 'assets/images/Lucifar poster.jpg',
    image: "assets/images/lucifer (1).png",
    name: "Lucifar",
    stars: 3.5,
    type: "Action and Adventure",
    plot:
        "\"Lucifer\" is a popular TV series that revolves around the character Lucifer Morningstar, who is portrayed as the Devil himself. Tired of his role in Hell, Lucifer decides to leave his kingdom and move to Los Angeles. He opens a nightclub called Lux and enjoys a luxurious and carefree life.",
  )
];
