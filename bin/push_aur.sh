makepkg --printsrcinfo > .SRCINFO
VERSION=$(cat PKGBUILD | grep pkgver | cut -d'=' -f 2)
echo -n "Confirm version [$VERSION]"
read RESPONSE
if [ -z "$RESPONSE" ]
then
    git commit -am "$VERSION"
    git push
fi