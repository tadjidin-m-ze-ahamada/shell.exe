#!/bin/bash
vardate=$(date +%d-%m-%Y-%H:%M)
 sudo wc -c  /var/log/auth.log > number_connexion-$vardate
tar -czf ./number_connexion-$vardate.tar       ./number_connexion-$vardate ; mv number_connexion-$vardate.tar Backup; rm number_connexion-$vardate
