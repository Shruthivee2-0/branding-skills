#!/bin/bash
# Postman Infographics Skill — setup script
# Run this after cloning to extract the skill into the repo structure

echo "Extracting postman-infographics-skill.tar.gz..."
tar -xzf postman-infographics-skill.tar.gz --strip-components=1
echo "Done. Skill files are now in infographics/"
echo ""
echo "Next steps:"
echo "  1. Install via Claude.ai: upload infographics.skill in Settings → Skills"
echo "  2. Use as API system prompt: cat infographics/SKILL.md"
echo "  3. Claude Teams: paste infographics/SKILL.md into Workspace Settings → Instructions"
