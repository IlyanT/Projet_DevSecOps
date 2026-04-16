package main
deny[msg] {
  input.kind == "Deployment"
  not input.spec.template.spec.securityContext.runAsNonRoot == true
  msg = "ERREUR : Le conteneur ne doit pas s'exécuter en root."
}
