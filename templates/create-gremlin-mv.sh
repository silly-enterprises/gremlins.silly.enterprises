#!/bin/bash

# --- 🛎️ Gremlin Creation Script ---
# Usage: ./create-gremlin.sh "gremlin-name"

# Exit if no name is provided
if [ -z "$1" ]; then
  echo "❌ Please provide a gremlin name."
  echo "Usage: ./create-gremlin.sh \"bash-ritualist\""
  exit 1
fi

# Normalize name
GREMLIN_NAME=$1
DIR_NAME=$(echo "$GREMLIN_NAME" | tr '[:upper:] ' '[:lower:]-' | sed 's/[^a-z0-9-]//g')

echo "✨ Creating new gremlin: $GREMLIN_NAME → $DIR_NAME"

# Create structure
mkdir -p "$DIR_NAME"/images

# README template
cat > "$DIR_NAME/README.md" <<EOF
# 🤖 ${GREMLIN_NAME^}

Welcome to the **${GREMLIN_NAME^}™**, part of the Silly Enterprises Gremlins Division™!

## 📋 Summary
_Describe what this gremlin does in a sentence or two._

## 🧠 Purpose
This gremlin exists to [explain its purpose] — and does so with flair, bash-fu, or corporate mischief.

## 🚀 Launch
Paste link here: \`https://chatgpt.com/g/g-...\`

## 📂 Files
- \`system-prompt.md\` – the raw Custom GPT system instructions
- \`conversation-starters.md\` – silly or realistic prompts to try
- \`metadata.json\` – (optional) extra info for internal tracking
- \`images/\` – gremlin portraits, logos, chaos

---

Think big. Be silly.™
EOF

# Other files
touch "$DIR_NAME/system-prompt.md"
touch "$DIR_NAME/conversation-starters.md"
touch "$DIR_NAME/metadata.json"

echo "✅ Gremlin '$GREMLIN_NAME' has been summoned into ./$DIR_NAME/"
