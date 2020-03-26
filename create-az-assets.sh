az group create \
    --location westeurope \
    --name andre-iot
az iot hub create \
    --location westeurope \
    --name andre-iot \
    --resource-group andre-iot \
    --partition-count 2
az extension add \
    --name azure-iot    
az iot hub device-identity create \
    --device-id andre-raspberry-pi \
    --hub-name andre-iot \
    --edge-enabled
az iot hub device-identity show-connection-string \
    --device-id andre-raspberry-pi \
    --hub-name andre-iot
az acr create \
    --resource-group andre-iot \
    --name andredockerregistry \
    --sku Basic