# GitHub Actions study for Azure Container Registry

This repo has the only purpose to create and publish a custom Docker image on ACR.

The Action runs on every push made in any branches. It is composed by two different jobs:

| Job        | Objective                                                                                                                             |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| `validate` | Checkout code, setup a Go environment and run the `go vet ./...` command to examine the source code and reports suspicious constructs |
| `publish`  | Checkout code, build and test image, login to Azure and finally push the image to ACR                                                 |

I'm using Terraform mainly to create the Resource Group and the Container Registry (easier to remove all the created resources later on with `tf destroy`)

Hire me pls, much love
