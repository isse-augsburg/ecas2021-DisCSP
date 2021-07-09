# Frodo Model
The frodo model is represented by one file per agent. To start an experiment and configure the agent a second file is necessary for the frodo Deamon. 
## Run the Model
To run the model you have to [download FRODO](https://frodo-ai.tech/index.php/download) and start a Frodo Controller first.

```java -cp frodo2.17.1.jar frodo2.controller.Controller```

After the controller started, the Daemons can be started and registered at the Frodo Controller. You have to start a deamon for each agent in the configuration. To start a Daemon and register it at the controller in one step type:

```java -cp frodo2.17.1.jar frodo2.daemon.Daemon -controller 127.0.0.1 -daemonport 25000```

Make sure to use a different port for each daemon you start.
Now you can check that all Daemons are registered by typing 

```get daemons```

into the command line of the Controller.

Next you have to load the configurations files for each Daemon. To do so type

```open configuration_xyz.xml```

into the command line of the Daemon.

After all Configurations have been loaded sucessfully you can start the calculation of the solution by typing

```start experiment```

into the command line of the Controller.
