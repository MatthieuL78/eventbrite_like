# Eventbrite_like

Ce projet permet de créer des utilisateurs, d'utiliser leurs sessions pour créer des evenements.
Nous avons 3 models : User, Event et EventAttendee.

La mise en page n'est pas travaillé du tout, mais j'ai essayé de faire en sorte que la navigation se fasse au mieux (avec des liens disponibles un peu partout).

## Presentation du projet
* Inscription, connexion et deconnexion
* Un utilisateur connecté peut créer un evenement, rejoindre un evenement et inviter un utilisateur a son evenement

## Lancer le projet
Pour lancer le projet, sur le terminal (dans le dossier concerne) :
```
bundle install --without production
```

```
rails db:migrate
```

```
rails s
```

Vous pouvez observer les pages dans 'localhost:3000'

On y utilise les méthodes suivantes :

* Associations : Belongs_to - Has_many
* Resources : users, events
* Controllers : log_in, current_user et log_out (dans SessionsHelper). Subscribe et invitation (dans eventsController)

Vous pouvez voir le projet sur heroku : 

* https://ancient-sands-72725.herokuapp.com/

## CSS
Le CSS est dans le assets/stylesheets/application.css
