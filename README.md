# Github Manager

This repository is a Terraform setup for managing all GitHub-related configuration as **Infrastructure as Code (IaC)**.

Everything is defined in code so it’s consistent, repeatable, and version-controlled.

This setup uses local state by default and includes a reusable module for creating multiple repositories with the same secure settings.

A simple GitHub Actions workflow checks Terraform formatting and validation on every pull request to `main` to help keep the configuration clean.

---

**Purpose:**  
Keep **all GitHub org and repo management automated**, secure, and easy to maintain.
