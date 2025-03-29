Docerhub repo- https://hub.docker.com/repository/docker/sb346/hello-world/general
deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: helloworld-deployment
spec:
  replicas: 1
  selector:
    matchLabels:
      app: hello-world  
  template:
    metadata:
      labels:
        app: hello-world   
    spec:
      containers:
        - name: helloworld-container
          image: sb346/hello-world
          ports:
            - containerPort: 8080

service.yaml
apiVersion: v1
kind: Service
metadata:
  name: helloworld-service
spec:
  selector:
    app: helloworld
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
      nodePort: 30007
  type: NodePort


