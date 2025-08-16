#!/bin/bash

# Script de déploiement pour Jeux Edu RDC
# Ce script automatise le processus de déploiement sur GitHub

echo "🚀 Déploiement de Jeux Edu RDC sur GitHub Pages"
echo "================================================"

# Vérifier que Git est installé
if ! command -v git &> /dev/null; then
    echo "❌ Git n'est pas installé. Veuillez l'installer d'abord."
    exit 1
fi

# Vérifier que nous sommes dans le bon répertoire
if [ ! -f "README.md" ]; then
    echo "❌ Veuillez exécuter ce script depuis le répertoire racine du projet."
    exit 1
fi

# Configuration Git
echo "📝 Configuration Git..."
git config user.name "Abraham Ngoyi Lumbuku"
git config user.email "abrahamlumbuku@gmail.com"

# Vérifier le statut Git
echo "📊 Statut Git actuel..."
git status

# Ajouter tous les fichiers
echo "➕ Ajout des fichiers..."
git add .

# Vérifier les fichiers ajoutés
echo "📋 Fichiers à commiter :"
git diff --cached --name-only

# Demander confirmation
read -p "🤔 Voulez-vous continuer avec le commit ? (y/n): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Déploiement annulé."
    exit 1
fi

# Créer le commit
echo "💾 Création du commit..."
git commit -m "🚀 Déploiement: Plateforme éducative Jeux Edu RDC

- Ajout de la bibliothèque nationale
- Intégration des jeux éducatifs
- Configuration GitHub Pages
- Documentation complète
- Optimisation SEO et performance

Date: $(date)
Auteur: Abraham Ngoyi Lumbuku"

# Vérifier la branche actuelle
current_branch=$(git branch --show-current)
echo "🌿 Branche actuelle: $current_branch"

# Pousser vers GitHub
echo "📤 Push vers GitHub..."
if git push origin $current_branch; then
    echo "✅ Déploiement réussi !"
    echo ""
    echo "🌐 Votre site sera bientôt disponible à :"
    echo "   https://solodivinda123.github.io/jeux-edu-rdc/"
    echo ""
    echo "⏰ Attendez 5-10 minutes pour que le déploiement soit terminé."
    echo ""
    echo "📱 Vérifiez le statut dans l'onglet Actions de votre repository GitHub."
    echo ""
    echo "🎉 Félicitations ! Votre plateforme éducative est maintenant en ligne !"
else
    echo "❌ Erreur lors du push. Vérifiez votre connexion et vos permissions."
    exit 1
fi

echo ""
echo "🔗 Liens utiles :"
echo "   - Repository: https://github.com/solodivinda123/jeux-edu-rdc"
echo "   - Portfolio: https://solodivinda123.github.io/DIGITAL---CV/"
echo "   - GitHub Profile: https://github.com/solodivinda123"
echo ""
echo "📚 Prochaines étapes :"
echo "   1. Testez votre site en ligne"
echo "   2. Partagez l'URL avec les écoles"
echo "   3. Collectez les retours des utilisateurs"
echo "   4. Améliorez en fonction des besoins"
echo ""
echo "🎯 Merci d'utiliser ce script de déploiement !"
