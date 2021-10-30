echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/NekkoYato/tgvcbot /tgvcbot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/NekkoYato/tgvcbot -b $BRANCH /tgvcbot
fi
cd /tgvcbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
