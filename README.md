# cvOs &nbsp; [![bluebuild build badge](https://github.com/cvsickle/cvos/actions/workflows/build.yml/badge.svg)](https://github.com/cvsickle/cvos/actions/workflows/build.yml)

This is the start of a custom operating system. Very much a WIP.

Based on the [Bluebuild Template](https://github.com/blue-build/template).

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:

  ```bash
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/cvsickle/cvos:latest
  ```

- Reboot to complete the rebase:

  ```bash
  systemctl reboot
  ```

- Then rebase to the signed image, like so:

  ```bash
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/cvsickle/cvos:latest
  ```

- Reboot again to complete the installation

  ```bash
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with these [instructions](https://blue-build.org/how-to/generate-iso/#_top). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/cvsickle/cvos
```

## Local Testing

Verify the recipe syntax using:

```bash
bluebuild generate -d ./recipes/recipe.yml
```

Verify the image builds using:

```bash
bluebuild build ./recipes/recipe.yml
```

## Repository Mirrors

- Github - [https://github.com/cvsickle/cvos](https://github.com/cvsickle/cvos)
  - All actions run on GitHub.
- Codeberg - [https://codeberg.org/cvsickle/cvos](https://codeberg.org/cvsickle/cvos)
  - Push/Pull mirror.
- Forgejo - [https://git.cvsickle.com/cvsickle/cvos](https://git.cvsickle.com/cvsickle/cvos)
  - Pull mirror only.
