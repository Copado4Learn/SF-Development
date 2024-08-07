// Apex Post
List<String> ApexPost = new List<String> {'This is SF propritery lang', 'SF backend language'};

// Lightning Post
List<String> LightningPost = new List<String> {'This is SF LWC Post', 'SF support Lightning test framework'};

Map<String, List<String>> ApexArticles = new Map<String, List<String>>();
ApexArticles.put('Apex', ApexPost);
System.debug(ApexArticles);

Map<String, List<String>> LightningArticles = new Map<String, List<String>>();
LightningArticles.put('Lightning', LightningPost);
System.debug(LightningArticles);