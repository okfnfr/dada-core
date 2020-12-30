# Configuration et déploiement de Ma Dada
Ce repo contient les fichiers de configuration et le code `ansible` pour déployer le site de DADA.

Lire le [README du thème](https://gitlab.com/madada-team/dada-france-theme) pour quelques explications sur quoi modifier où.

Il y'a un paquet de variables et valeurs de config qui devraient pour la plupart se trouver
dans le dossier `ansible/group_vars/`. Voir `ansible/group_vars/all/main.yml` pour une brève
explication sur l'organisation des variables.

## Déploiement - Comment ça marche

A chaque `git push` sur le repo, l'intégration continue de gitlab déploie une mise à jour du site via [ansible](https://docs.ansible.com).

Il y'a 2 branches principales, qui correspondent chacune à un serveur:

- `master` déploie sur le serveur principal https://madada.fr
- `staging` déploie sur le serveur de staging/dev https://dadastaging.okfn.fr.

Les "features branches" ne sont pas pour l'instant déployées automatiquement.

## Contribuer

Les bugs/suggestions/questions vont sur [l'autre repo](https://gitlab.com/madada-team/dada-france-theme/issues) pour l'instant.
