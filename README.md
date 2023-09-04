# Buildpack Test
## Build and run container
```shell
pack build buildpack-test --buildpack paketo-buildpacks/python --builder paketobuildpacks/builder:full
```
```shell
docker run --rm -it --env UVICORN_PORT=5000 --env UVICORN_HOST=0.0.0.0 -p 5000:5000 buildpack-test
```
## Customizing runtime
| File                                          | Description                                                                                             |
|-----------------------------------------------|---------------------------------------------------------------------------------------------------------|
| `packages.txt`                                | Install additional packages with `apt` in the runtime image                                             |
| `Procfile`                                    | Define the startup process of your container                                                            |
| `poetry.lock`, `requirements.txt`, `setup.py` | Depending on which file is present, use the appropriate package manager to install python dependencies. |

## Links
- [Paketo Python Buildpacks](https://paketo.io/docs/howto/python/)
- [Paketo Python Buildpacks GitHub](https://github.com/paketo-buildpacks/python)