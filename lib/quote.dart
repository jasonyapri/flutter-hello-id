class Quote {

  String quote;
  String author;

  // Quote(String quote, String author) {
  //   this.quote = quote;
  //   this.author = author;
  // }

  // Quote({String quote, String author}) {
  //   this.quote = quote;
  //   this.author = author;
  // } // Named Paraemeters Constructor

  Quote({this.quote, this.author}); // Named Paraemeters Constructor
}

Quote myQuote = Quote(quote: 'This is a quote', author: 'oscar wilde');