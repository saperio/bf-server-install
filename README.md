

docker run -i -t -v "$(pwd):/test" -w "/test" saperio/nodejs:step2 bash
docker run -i -t -v /root/test:/test -w /test saperio/nodejs:step2 bash


### Step 0
* Clone this repo ```git clone https://github.com/saperio/bf-server-install.git```
* ```cd bf-server-install/inst```

#### Using Docker
* Install [Docker](http://docs.docker.com/installation/ubuntulinux/)
* Run docker container: ```docker run -i -t -v "$(pwd):/inst -w /inst ubuntu:14.04 bash```

### Step 1
Install dependencies:
```./install.sh step1```

### Step 2
create user nd, add it to sudo group and give it permisions:
```./install.sh step2```

### Step 3
Install nvm and node:
```./install.sh step3```