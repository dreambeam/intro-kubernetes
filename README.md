# Intro to Kubernetes

This repository runs a local [Kubernetes](https://kubernetes.io/) cluster using [kind](https://kind.sigs.k8s.io/). Unfortunately, it only works on Unix-based systems, that is, Mac or Linux. If on Windows, we recommend installing [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install).

Running `run.sh` creates the Kubernetes cluster and installs the [Nginx ingress controller](https://docs.nginx.com/nginx-ingress-controller/).

After setting up the Kubernetes cluster, you can deploy an Nginx web server using the YAML files in the `manifests` directory using `kubectl apply -f <object>.yaml`.

This project was run (with minor changes) in conjunction with the [CodeSeoul presentation](https://docs.google.com/presentation/d/1C6kPEs0gtgRvHa9dTDhJa68DnTLiOVvY9I90u8fQRnQ/edit?usp=sharing).

If you have questions, [join us on Discord and ask!](https://discord.gg/HFknCs8)