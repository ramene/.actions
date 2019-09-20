![](https://github.com/ramene/actions/workflows/Build%20and%20Publish/badge.svg)

# GitHub Actions 

> _This repository contains various GitHub Actions and respective containers for use across your workflow, described in my series, [Composite Infrastructure with Pulumi]()_
>
> _Usage information for individual commands can be found in their respective directories_


|                              |GKS|AKS|EKS|PKS|
|:-----------------------------|:--------------:|:------------:|:-------------:|:--------:|:---------:|
|<span class="text-nowrap"><i class="fa fa-leaf fa-fw"></i> **Automatic worker node provisioning**</span>  |✔|✔|✔|✔
|<span class="text-nowrap"><i class="fa fa-pencil fa-fw"></i> **Default storage class for disk allocation**</span>|✔|✔|✔|✖|
|<span class="text-nowrap"><i class="fa fa-id-card fa-fw"></i> **Highly available, managed master nodes**</span>|✔|✔|✖|✖|
|<span class="text-nowrap"><i class="fa fa-lock fa-fw"></i> **Private clusters**</span>|✔|✔|✖|✔|✖|
|<span class="text-nowrap"><i class="fa fa-umbrella fa-fw"></i> **Kubernetes versions supported**</span>|✔|✔|✖|✖|✖|
|<span class="text-nowrap"><i class="fa fa-hand-stop-o fa-fw"></i> **Ingress provisions cloud load balancer**</span>|✔|✖|✖|✖|✖|
|<span class="text-nowrap"><i class="fa fa-hand-stop-o fa-fw"></i> **Rolling node updates**</span>|✔|✖|✖|✖|✖|
|<span class="text-nowrap"><i class="fa fa-hand-stop-o fa-fw"></i> **CNI (networking)**</span>|✔|✖|✖|✖|✖|
|<span class="text-nowrap"><i class="fa fa-hand-stop-o fa-fw"></i> **Multi-AZ nodes**</span>|✔|✖|✖|✖|✖|
|<span class="text-nowrap"><i class="fa fa-hand-stop-o fa-fw"></i> **Auto scaling**</span>|✔|✖|✖|✖|✖|
|<span class="text-nowrap"><i class="fa fa-hand-stop-o fa-fw"></i> **Native kubectl support**</span>|✔|✖|✖|✖|✖|