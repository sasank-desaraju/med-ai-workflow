# Setup for an individual project

This guide assumes you have already completed the [initial setup](initial_setup.md) of your system and are creating a new project.



1. Create a conda environment
    - Create an environment with a specific Python version and a specific set of packages that you need for the project.
        - In practice, though, you can often get away with having one environment, e.g. `ai`, that contains all of the packages that you use in most of your projects. This includes things like `pytorch`, `cuda-toolkit`, `pandas`, and others.
