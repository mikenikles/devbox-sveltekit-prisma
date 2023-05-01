# devbox-sveltekit-prisma

An example of how to configure [Devbox](https://github.com/jetpack-io/devbox) for a [SvelteKit](https://kit.svelte.dev/) full-stack web application that uses [Prisma](https://www.prisma.io/).

## What is this?

Devbox is next-generation development environment automation. Configure your project once and anyone can contribute effortlessly by running `devbox shell`, `devbox cloud shell` (to run processes in the cloud instead of locally) or develop in their browser via [devbox.sh](https://devbox.sh).

> You may have heard of projects like **GitHub Codespaces**. Devbox falls in the same category, but solves the problems cloud-only solutions such as Codespaces have. To read more, please see my blog post titled ["Dev environments in the cloud are a half-baked solution"](https://www.mikenikles.com/blog/dev-environments-in-the-cloud-are-a-half-baked-solution).

## Getting Started

Click the following button to start this repository in your browser:

[![Open in Devbox.sh](https://jetpack.io/img/devbox/open-in-devbox.svg)](https://devbox.sh/github.com/mikenikles/devbox-sveltekit-prisma)

Alternatively, you can clone this repository and start a Devbox shell locally or in the cloud:

1. `curl -fsSL https://get.jetpack.io/devbox | bash`
1. `git clone git@github.com:mikenikles/devbox-sveltekit-prisma.git`
1. `devbox shell` or `devbox cloud shell`
1. Visit http://localhost:5173

## How is it configured?

### `devbox.json`

This is the main Devbox configuration file. You can find [the reference documentation](https://www.jetpack.io/devbox/docs/configuration/) online.

*`packages`*

A list of packages required by your project. In this repository, we configure Node.js 18.x, PostgreSQL, `pnpm`, and Prisma.

*`shell.init_hook`*

This array contains a list of commands Devbox runs when someone starts a Devbox shell with `devbox [cloud] shell` or opens the project in a browser via [devbox.sh](https://devbox.sh).

*`./.config/devbox/postgresql/init.sh`*

This shell script initializes, starts, and sets up a PostgreSQL database if none exists. If a database already exists, it simply starts the process.

## Feedback

If you have questions or feedback, please reach out via Twitter [@mikenikles](https://twitter.com/mikenikles).
