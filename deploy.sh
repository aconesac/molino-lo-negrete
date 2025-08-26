#!/bin/bash

# Quick deployment script for molino website
echo "🌾 Molino Lo Negrete - Quick Deploy"
echo "================================="

# Check if there are changes
if [[ -z $(git status -s) ]]; then
    echo "✅ No changes to commit"
    exit 0
fi

# Show status
echo "📋 Current status:"
git status --short

# Add all changes
git add -A
echo "📁 Files staged"

# Commit with message
if [ "$1" ]; then
    git commit -m "$1"
else
    echo "💬 Enter commit message:"
    read commit_message
    git commit -m "$commit_message"
fi

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Deployment complete!"
echo "🌐 Your site will be updated at: https://aconesac.github.io/molino-lo-negrete/"
echo "⏱️  Allow 2-5 minutes for GitHub Pages to update"
