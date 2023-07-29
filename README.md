# Kernel Module Builder

Provides a multi-container application with a service that builds an ORCA
out-of-tree kernel module, loads it and runs it alongside an service.

* The `load` service builds the kernel module source located in `lincdadrv`
  using module headers provided for balena devices using a multi-stage build
	and then loads the kernel module.

* The `check` service runs a simple entry script that checks for the output of
  the module and depends on the `load` service above.

## Usage

This project is prepared to build in the balenaCloud builders. To use it
as is [install](https://github.com/balena-io/balena-cli/blob/master/INSTALL.md) the balenaCLI and build with:

```
balena push <fleet>
```

The device type will be automatically retrieved from the specified fleet.

## Customization

* Replace the `OS_VERSION` argument in the `load` service in the
  `docker-compose.yml` file to match the balenaOS version of the target device.

* Replace the `GITTOKEN` argument in the `load` service in the
  `docker-compose.yml` file to degirum github token.
