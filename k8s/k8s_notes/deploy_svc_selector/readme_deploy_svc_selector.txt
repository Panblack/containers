

#dp-example-podlabel_nginx.yaml
#deploy_label: app=dp-example-nginx
#pod/selector label: app=dp-example
# ubuntu@k8s-node001:~$ kubectl get deploy  -o wide
# NAME               READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES      SELECTOR
# dp-example         2/2     2            2           12d   httpd        httpd:2.4   app=dp-example
# dp-example-nginx   2/2     2            2           41s   nginx        nginx       app=dp-example

#svc-example includes above deploy dp-example-nginx
# ubuntu@k8s-node001:~/yaml/deploy_svc_selector$ kubectl get svc -o wide
# NAME          TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)        AGE   SELECTOR
# kubernetes    ClusterIP   10.9.0.1     <none>        443/TCP        13d   <none>
# svc-example   NodePort    10.9.33.77   <none>        80:32445/TCP   12d   app=dp-example


#svc-example does NOT include below deploy dp-example-nginx!
#dp-example-dplabel-nginx.yaml
#deploy_label: app=dp-example
#pod/selector label: app=dp-example-ngx
# ubuntu@k8s-node001:~$ kubectl get deploy -o wide
# NAME               READY   UP-TO-DATE   AVAILABLE   AGE   CONTAINERS   IMAGES      SELECTOR
# dp-example         2/2     2            2           12d   httpd        httpd:2.4   app=dp-example
# dp-example-nginx   2/2     2            2           36s   nginx        nginx       app=dp-example-ngx


