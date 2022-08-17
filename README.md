# installation instructions

1. Setup isctlbm in the current directory

`./isctlbm configure`

2. Apply the pools, this can also be done in the UI if you wish.
- Make sure to replace the MOIDs of the servers in the Server ResourcePool.
You can get those MOIDs by navigating to your servers in the server tab and getting the MOID of the server from the URL.
- Make sure to update the IP configuration in the IP Pool to match your environment.

`./isctlbm apply -f 1_pools.yaml`

3. Apply the policies. 
- Make sure to update all the MoRef links to the Policy/Pool names if you changed those. 

`./isctlbm apply -f 2_policies.yaml`

4. Apply the profile.
- Make sure to update all the MoRef links to the Policy/Pool names if you changed those.|
- Make sure to point the ImageCache to a repo that you can reach where your tiny.iso is available.

`./isctlbm apply -f 3_profile.yaml`

5. Deploy your cluster

`./isctlbm --config ~/.isctl-dev.yaml update kubernetes clusterprofile name iksbm1 --Action Deploy`

