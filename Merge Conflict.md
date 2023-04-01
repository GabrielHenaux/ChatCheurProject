# En cas de merge conflict
1) S'assurer d'être dans la branche qu'on cherche à pousser et non sur le master 
2) Appeler Hippo si on y arrive pas et ne pas tenter n'importe quoi
3) Faire git rebase -i master 
4) S'il ne s'exécute pas jusqu'à la fin : lire ce qu'il nous dis et le faire en fonction jusqu'à ce que le rebase ait bien lieu. 
5) Ensuite faire git commit --amend (Controle C et dire Oui pour enregistrer le buffer)
6) Une fois le commit fait avec succès : git push origin nom_branche 
7) Revérifier qu'il y a bien aucun merge conflict sur Github 
8) Reprendre la procédure Github à partir de l'étape 8
