# Configuration et déploiement de Ma Dada
Ce repo contient les fichiers de configuration et le code `ansible` pour déployer le site de DADA.

Lire le [README du thème](https://github.com/okfnfr/dada-france-theme) pour quelques explications sur quoi modifier où.

## Déploiement - Comment ça marche

A chaque `git push` sur le repo, [travis](https://travis-ci.org) déploie une mise à jour du site via [ansible](https://docs.ansible.com).

Il y'a 2 branches principales, qui correspondent chacune à un serveur:

- `master` déploie sur le serveur principal https://madada.fr
- `staging` déploie sur le serveur de staging/dev https://dadastaging.okfn.fr.

Les "features branches" ne sont pas pour l'instant déployées automatiquement.

## Contribuer

Les bugs/suggestions/questions vont sur [l'autre repo](https://github.com/okfnfr/dada-france-theme/issues) pour l'instant.
