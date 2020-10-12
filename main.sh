sudo mkdir -p /go/pkg/mod/cache/download/github.com
sudo chmod -R 777 /go
sudo chmod -R 777 /go/pkg/mod/cache/download/github.com
./setup.sh
        ./pkg_aur.sh
       sh ./x86_64/update.sh
