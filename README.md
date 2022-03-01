# Vms

This is simple test on ovirt terraform provider, which is non-official.

# Initialize the backend

Go to /secrets and source backend variables.
This file normally would not be present in the repo, but in Hashi vault and from there the env vars would be retrieved.

then go to /terraform and use run.sh to initialize the backend.


# state

State is kept in onprem Gitlab installation

# Resources

ovirt provider is very limited.

Currently there are 2 vms, and provider supports only rsc, not data objects.
