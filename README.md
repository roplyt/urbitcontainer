# urbitcontainer
Run urbit in a container.  Useful for Windows or development.  

This is 5 minutes of scratch work on a burner account. Can be polished/transferred if there is demand.  Currently deploys urbit 0.10.4. 

Who is this for?  
This is a tutorial to run urbit on docker.  Containers allow urbit to be run on any system that can run docker including windows. 

To do this tutorial it is recommended you have a basic knowledge of the commandline in your operating system and have installed docker.  
It enables you to get started on urbit with no knowledge of linux or webhosting.  If you would be interested in an always on hosted urbit I would suggest the tutorial here:  
https://blog.urbit.live/hello-world-urbit-edition/

You will also need to have docker installed and running.  
https://docs.docker.com/install/

First make a directory and navigate to it in your shell.  

Take the Dockerfile from this repo and save ita s Dockerfile in your directory.  

From inside the directory.  
docker build -f Dockerfile -t urbit .

This will take 15-20 minutes and give you a working urbit docker image, viewable with 
docker images

Comet - 
I don't have an urbit planet and I want to connect to the urbit network.  

docker run -ti -p 127.0.0.1:8080:80 -v ${PWD}:/urbit/ships urbit -c testcomet
Make sure not to type anything in to the shell while this is running as this can cause errors.  Takes 1-2 hours.  

You should now be able to navigate to localhost:8080 in your browser to view the urbit web console.  
https://urbit.org/using/install/#using-landscape

To exit your docker shell and return to your local system shell:  
ctrl-d

Fake Ship - 
I just want to test out the urbit OS locally. 
docker run -ti -p 127.0.0.1:8080:80 -v ${PWD}:/urbit/ships urbit -c fakezod
Make sure not to type anything in to the shell while this is running as this can cause errors.  Takes 20-30 minutes.  

I already have a pier - 

docker run -ti -p 127.0.0.1:8080:80 -v ${PWD}:/urbit/ships urbit SHIPFOLDERNAME
Restarts your ship from where it left off.  
If the previous docker image did not close properly this may result in an error.  
This can be checked with docker ps
You will also be able to see a file named .vere.lock in your ship directory that will block the urbit initialization.  
