# Set email and username
git config --global user.email "josh@javconcepts.com"
git config --global user.name "Josh Villbrandt"

# Set git to use the credential memory cache
git config --global credential.helper cache

# Set the cache to timeout after 1 week (setting is in seconds)
git config --global credential.helper 'cache --timeout=604800'