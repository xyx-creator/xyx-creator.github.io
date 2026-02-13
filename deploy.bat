@echo off
echo Deploying to GitHub Pages...
git add .
set /p commit_msg="Enter commit message (default: Update content): "
if "%commit_msg%"=="" set commit_msg=Update content
git commit -m "%commit_msg%"
git push origin master
echo Deployment complete!
pause
