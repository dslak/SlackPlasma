if [ -z "$1" ]; then
  echo "Usage $0 x86|x86_64"
else
  
case "$1" in
        x86)
            rsync -av --exclude=x86_64 rsync://alien.slackbook.org/alien/ktown/14.2/5 .
        ;;
         
        x86_64)
            rsync -av --exclude=x86 rsync://alien.slackbook.org/alien/ktown/14.2/5 .
        ;;
esac
  
fi