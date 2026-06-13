#!/bin/bash

mkdir -p "$HOME/Templates"

## empty file
touch "$HOME/Templates/emtpy"

## bash script
touch "$HOME/Templates/bash.sh"
cat > "$HOME/Templates/bash.sh" << EOF
#!/bin/bash
EOF

## markdowns
touch "$HOME/Templates/markdown.md"
cat > "$HOME/Templates/markdown.md" << EOF
#
EOF

## README
touch "$HOME/Templates/README.md"
cat > "$HOME/Templates/README.md" << EOF
#
EOF