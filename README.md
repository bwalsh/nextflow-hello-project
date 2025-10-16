# Nextflow Hello World (GitHub Actions)

A minimal project that runs a **Nextflow** "Hello World" pipeline on **every push** to `main` (limited to changes in `pipelines/hello/**` or the workflow file).

## Structure
```
pipelines/
  hello/
    main.nf          # Hello pipeline (DSL2)
.github/
  workflows/
    hello-on-push.yml  # CI workflow that installs Nextflow and runs the pipeline
nextflow.config        # optional local profile
```

## How it works
1. GitHub Actions sets up Java 17 and installs Nextflow.
2. Runs: `nextflow run pipelines/hello -profile local`.
3. Publishes artifacts: `report.html`, `timeline.html`, `trace.txt`, and `hello.txt`.

## Quick local test
```bash
nextflow run pipelines/hello -profile local
cat hello.txt
```

## Notes
- No secrets or cluster required. This uses the **local executor** on GitHub-hosted runners.
- You can later replace the run step with an **Argo submit** to execute in your cluster.
