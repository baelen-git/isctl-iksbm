#installation instructions

1. Setup isctlbm in the current directory

`./isctlbm configure`

2. Apply the pools

`./isctlbm apply -f 1_pools.yaml`

3. Apply the policies

`./isctlbm apply -f 2_policies.yaml`

4. Apply the profile

`./isctlbm apply -f 3_profile.yaml`

5. Deploy your cluster

`./isctlbm --config ~/.isctl-dev.yaml update kubernetes clusterprofile name iksbm1 --Action Deploy`

