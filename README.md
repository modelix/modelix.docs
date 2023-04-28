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

