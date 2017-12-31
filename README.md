# rpi-projectsend
Raspberry Pi compatible Docker base image with [ProjectSend](https://www.projectsend.org) 

It is based on the [MariaDB Docker Image](https://github.com/Piggeldi2013/rpi-mariadb) 
which was forked from [hypriot/rpi-mysql](https://github.com/hypriot/rpi-mysql). 

This has been done, because ProjectSend needs some MySQL stuff, which only was available in MySQL-Versions > 5.5, but MySQL on Raspberry Pi RASPBIAN only supports 5.5 out of the box.

## What is ProjectSend?
ProjectSend is a self-hosted application that lets you upload files and assign them to specific clients that you create yourself! Secure, private and easy. For more information visit [ProjectSend Homepage](https://www.projectsend.org)

## Build Details
- [Source Project Page](https://github.com/Piggeldi2013) 
- [Source Repository](https://github.com/Piggeldi2013/rpi-projectsend) 
- [Dockerfile](https://github.com/Piggeldi2013/rpi-projectsend/blob/master/Dockerfile) 
- [Dockerhub pending] ()

### Build the Docker Image
```bash docker build -t projectsend .```

### Run the Docker Image
```bash docker run - d -p 80:80 -v 
/local/path/to/store/data:/projectsenddata rpi-projectsend --name 
projectsend```

### First run configuration of the ProjectSend software
[Call install page locally](http://localhost/install)

## License
The MIT License (MIT) Copyright (c) 2017 Carsten Payenberg Permission 
is hereby granted, free of charge, to any person obtaining a copy of 
this software and associated documentation files (the "Software"), to 
deal in the Software without restriction, including without 
limitation the rights to use, copy, modify, merge, publish, 
distribute, sublicense, and/or sell copies of the Software, and to 
permit persons to whom the Software is furnished to do so, subject to 
the following conditions: The above copyright notice and this 
permission notice shall be included in all copies or substantial 
portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
