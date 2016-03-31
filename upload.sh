cd
cd code/backup
cd ../Hexo-Tinnypp

cp -r /home/sjd/code/backup/. /home/sjd/code/Hexo-Tinnypp/.
git add node_modules
git add scaffolds
git add source
git add themes
git add _config.yml
git add db.json
git add package.json
git add upload.sh
git add README.md
git commit -m "脚本upload.sh 提交"
git push hexo master



cd ../sjindong.github.io

cp -r /home/sjd/code/backup/public/. /home/sjd/code/sjindong.github.io/.
git add 2016
git add archives
git add css
git add fancybox
git add font
git add img
git add js
git add index.html
git add atom.xml
git add upload.sh
git commit -m "脚本upload.sh 提交"
git push origin master
