# modelix documentation

Provides the Antora playbook and basic documentation of the modelix project.

To install the required dependencies, first run:

```
npm install
```

Afterwards you can run the generator manually via:

```
antora --stacktrace antora-playbook.yml
```

To make use of the development friendly environment, make sure relative paths to your repositories are correct in `antora-playbook-develop.yml`.
Then, use the included bash script to automatically re-run generation of the documentation:

```
./runDevelop.sh
```

## Source repositories

The documentation is built by using documentation sources from multiple repositories.
You can look at the [playbook](./antora-playbook.yml) to see the up-to-date list of repositories.

##  Versions

The documentation is built for multiple versions of modelix.
The latest version named `main` is built from the `HEAD` of the `main` branches of all source repositories.
An additional version is built for branches matching `docs/release/<version>`.

For example, from the branches (in this and all source repositories) named `docs/release/23.1` a version named `23.1` will be created.


### Adding a new version

If you want to add a new version, create an appropriately named branch in this repository **and all source repositories** pointing to the commit you want the documentation to be fetched from.