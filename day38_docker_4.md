#### The Nautilus DevOps team possesses confidential data on App Server 3 in the Stratos Datacenter. A container named ubuntu_latest is running on the same server.
#### Copy an encrypted file /tmp/nautilus.txt.gpg from the docker host to the ubuntu_latest container located at /usr/src/. Ensure the file is not modified during this operation.

The task requires copying the encrypted file /tmp/nautilus.txt.gpg from the Docker host (the server itself) into the running container named ubuntu_latest at the path /usr/src/, preserving the file exactly (no modifications, which docker cp guarantees as it performs a binary copy).

1. ssh to the app server 3
2. Copy the file to the containerUse the docker cp command (this copies byte-for-byte, preserving encryption integrity and all attributes):<br>
   docker cp /tmp/nautilus.txt.gpg ubuntu_latest:/usr/src/<br>
   Syntax: docker cp <source_path_on_host> <container_name_or_id>:<destination_path_in_container><br>
3. Verify the file is inside the containerCheck that it arrived correctly: docker exec ubuntu_latest ls -l /usr/src/
You should see nautilus.txt.gpg listed.
