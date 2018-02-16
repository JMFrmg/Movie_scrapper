# Bienvenue dans mon script MovieScrapper!

## Fonction :
Ce programme n'a qu'une fonction. L'utilisateur doit entrer le nom d'un film et le script lui renvoie une page contenant la liste des films dont le titre correspond au nom renseigné.

## Fonctionnement :
* La page home contient un formulaire classique.
* Le contenu du champ renpli par l'utilisateur est transmis à la méthode search du controller Movies par une requête POST.
* La méthode search crée un objet de la classe SearchMovie (/app/services/search_movie.rb) avec comme paramètre le nom transmis par l'utilisateur.
* L'objet de la classe SearchMovie se connecte à l'API de MovieDB et effectue une recherche.
* L'objet de la classe SearchMovie renvoie une liste des films à la méthode search du controlleur Movies.
* En cas d'absence de résultat, un message flash informant l'utilisateur s'affiche et celui-ci est automatiquement redirigé vers la page home afin d'effectuer une nouvelle recherche s'il le souhaite.
* Une page html contenant la liste des résultats est renvoyée à l'utilisateur avec pour chaque film son nom, le nom du réalisateur, la date de sortie et l'affiche.

Le site est spartiate. L'esthétique est à améliorer. Je n'ai pas intégré de css, faute de temps...

Bonne lecture !
