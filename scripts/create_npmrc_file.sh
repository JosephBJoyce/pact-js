set +x #Don't echo the NPM key

NPMRC_FILE=dist/.npmrc
echo "@pact-foundation:registry=https://registry.npmjs.org/" > $NPMRC_FILE
echo "//registry.npmjs.org/:_authToken=${NPM_KEY}" >> $NPMRC_FILE
echo "//registry.npmjs.org/:username=pact-foundation" >> $NPMRC_FILE
echo "//registry.npmjs.org/:email=pact-foundation@googlegroups.com" >> $NPMRC_FILE
echo "//registry.npmjs.org/:always-auth=true" >> $NPMRC_FILE

set -x

cp package.json.web dist/package.json
