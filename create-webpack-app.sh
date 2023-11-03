echo "Hello, let's create a Webpack app!"
read -p "Paste repo name: " reponame
git clone git@github.com:darrionn33/$reponame.git
cd $reponame
npm init -y
npm install ---save-dev webpack webpack-cli html-webpack-plugin webpack-dev-server webpack-merge style-loader css-loader copy-webpack-plugin put-selector
cp -r ~/Templates/Web\ Dev/Webpack/. .
npm pkg set 'scripts.build'='webpack --config webpack.prod.js'
npm pkg set 'scripts.start'='webpack serve --open --config webpack.dev.js'
npm pkg set 'scripts.gh-pages'='npm run build && git add . && git commit -m \"updating gh-pages site.\" && git push && git subtree push --prefix dist origin gh-pages'
npm pkg set 'scripts.gh-pages-only'='git subtree push --prefix dist origin gh-pages'
npm pkg set 'name'=$reponame
touch README.md
echo "# "$reponame >> README.md
echo -e "\nMade with create-webpack-app." >> README.md
echo "[Live App](https://darrionn33.github.io/"$reponame"/)" >> README.md
npm run build
git add .
git commit -m "initial commit using create webpack app"
git push
npm run gh-pages
code .
npm run start
echo "Done."
