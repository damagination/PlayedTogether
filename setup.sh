echo "This setup file will install required dependancies to run pt.py using python2"
echo "=== Incase of permission errors, add sudo before all install commands ===="
echo "=== Tested on OS X only ==="

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	pip install -r requirements.txt
elif [[ "$OSTYPE" == "darwin"* ]]; then
	xcode-select --install
	which -s brew
	if [[ $?  != 0 ]]; then
		sudo easy_install pip
	else
		brew update
		brew install python
	fi
	pip install -r requirements.txt
else
	echo "Unknown Environment, setup will quit"
	exit -1
fi
