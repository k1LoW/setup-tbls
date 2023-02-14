prerelease:
	git pull origin main --tag
	ghch -w -N ${VER}
	git add CHANGELOG.md
	git commit -m'Bump up version number'
	git tag ${VER}

release:
	git push origin main --tag
