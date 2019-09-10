# Kings Corners

* Descriptions of each method to implement are written into the `lib/`
  files. For each `lib/` file, there is a corresponding `spec/` file.


## Game Rules

* The gameplay area starts with four foundation piles arranged on each
  side of the draw deck.
* In addition, there are four corner piles that start empty.  
  * These can only be built upon by placing a king in that pile first
  * Hence: "Kings Corners"
* The goal is to be the first player to empty your hand.
* Cards can be played/moved onto any other card in a solitaire-like pattern:
  * Descending by rank, alternating colors
  * e.g., Jack of Diamonds can be played on Queen of Spades
* During a turn, a player can take four actions:
  * Play a correct card from their hand onto any non-empty pile
  * Play any card onto an empty foundation pile
  * Move a full pile onto another pile
    * Must maintain the solitaire pattern
  * Play a King onto an empty corner pile
* A player takes as many actions as they can on their turn
* They end their turn by drawing a card from the top of the draw deck.

Further game rules are described [here][kings-corner-rules], but the
above is the limit of what you need to implement.

[kings-corner-rules]: https://www.pagat.com/layout/kingscorners.html

KINGS CORNER is a multiplayer, card-shedding game with logic similar to Solitaire and FreeCell.

  [Corner]  [Regular] [Corner]
  [Regular] [Deck]    [Regular]
  [Corner]  [Regular] [Corner]

There are four regular piles, and four corner piles.  Players can play cards onto other cards in descending, alternating-color order.  For example, a player can play the eight of spades (a black eight) on the nine of diamonds (a red nine), but not on the nine of clubs (a black nine).

Players can also move entire piles onto other piles, as long as this order is maintained: when the bottom card of one pile can be placed on the top card of another pile.

When a regular pile is empty, any card can be placed on that pile.  When a corner pile is empty, only a king can be placed there.  In all other ways, corner piles and regular piles are identical.

The game starts by dealing seven cards to each player, and then dealing one card from the top of the deck onto each of the regular piles.  On their turn, a player can make as many moves as they can.  They end their turn by drawing one card from the top of the deck.

The first player to empty their hand wins.
