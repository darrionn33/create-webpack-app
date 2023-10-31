echo "Hello, let's create a Webpack app!"
read -p "Paste repo name: " reponame
git clone git@github.com:darrionn33/$reponame.git
cd $reponame
npm init -y
npm install ---save-dev webpack webpack-cli html-webpack-plugin webpack-dev-server webpack-merge style-loader css-loader
#edit this line
cp -r files/. .
#edit this line
npm pkg set 'scripts.build'='webpack --config webpack.prod.js'
npm pkg set 'scripts.start'='webpack serve --open --config webpack.dev.js'
npm pkg set 'scripts.gh-pages'='webpack --config webpack.prod.js && git subtree push --prefix dist origin gh-pages'
npm pkg set 'name'=$reponame
touch README.md
echo "# "$reponame >> README.md
echo -e "\nMade with create-webpack-app." >> README.md
npm run build
git add .
git commit -m "initial commit using create webpack app"
git push
npm run gh-pages
code .
echo "Done."


