#read -sp "Enter your password: " password@1; | sh iTest.sh

sh iTest.sh <$(read -sp "Enter your password: " password@1; echo $password)
