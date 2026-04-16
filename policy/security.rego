package main

deny[msg] {
  input.kind == "Deployment"
  not input.spec.template.spec.securityContext.runAsNonRoot == true
  msg = "ERREUR DE SÉCURITÉ : Le déploiement est refusé. Le conteneur ne doit pas s'exécuter en tant que root. Ajoutez 'runAsNonRoot: true' dans votre securityContext."
}
