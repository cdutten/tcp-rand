# Tcp server Rand

A Tcp server that returns random numbers

## Objective

I was making this course [Introduction to Cloud Infrastructure Technologies](https://courses.edx.org/courses/course-v1:LinuxFoundationX+LFS151.x+2T2018/course/)

And in chapter 5 they talk about Micro OSes for containers and they talk a lot about SystemD.
  
To understand why they say that is and advantage to have SystemD as a component in the Micro OSes

I read some articles about SystemD and to finish I want to make some practive
 
I found a Medium article [Creating a linux service with systemd](https://medium.com/@benmorel/creating-a-linux-service-with-systemd-611b5c8b91d6) and I want to make the same but with Go.

## Source code
https://opensource.com/article/18/5/building-concurrent-tcp-server-go

## To run

`docker build -t tcp-rand .`

Run the container exposing the port you want to connect from the host machine

`docker run -it --rm  .`

Run the script with the port that you want to use, in this case 8001

`go run tcp-rand.go 8001`

In another terminal, inside the container, you can run 

`nc localhost 8001`

To start the connection

For each input you send to the Go server you have to receive a rand integer

#### Using SystemD

After creating the container and be sure that the script works,

I realize that SystemD has some issues with containers.

To not deviate from the principal subject, make a linux service, I decide to compile the script in the container.

Having the compiled file I can run it on my host pc.

Now I make the `/etc/systemd/system/tcp-rand.service`

_a config file for SystemD that tells how to run the service_


In the Medium article that I mentioned earlier is a good explanation of all the config in the file.

