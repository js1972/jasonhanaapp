# jasonhanaapp - Jasons HANA App
> Jasons HANA App. This is a test app generated by the `saphanaacademy-cap` yeoman generator.

This is currently the best way I can find to start off a CAP development project (with embedded UI) as an MTA.

To deploy:
```
mbt build
cf deploy mta_atchives/jasonhanaapp_<version>.mtar
```

To develop locally against an SQLite db:
```
cds watch
```

To develop locally against the HANA Cloud db:
```
cf de jasonhanaapp-srv
CDS_ENV=production cds watch
```

`cf de` is the DefaultEnv plugin for the cf cli. It will automatcially create a default-env.json file in the project root with credentials for connecting to your HANA Cloud instance.