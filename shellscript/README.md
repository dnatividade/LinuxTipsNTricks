## IF / ELIF / ELSE
````
#Read a number from keybord
read numero
if [ $numero -gt 0 ];
then
    echo "Positive number"
elif [ $numero -lt 0 ]
then
    echo "Negative number"
elif [ $numero -eq 0 ]
then
    echo "Zero"
else
    echo "Is not a number"
fi
````
##### SOURCE: http://blog.evaldojunior.com.br/aulas/blog/shell%20script/2011/05/08/shell-script-parte-2-controle-de-fluxo.html
----

## FOR

```
#01
for i in 1 2 3 4 5;
do
 echo $i;
done
```

```
#02
for i in $(seq 10);
do
 echo $i;
done
```

```
#03
for ((i=0; i<=5; i++))
do
 echo $i
done
```

##### SOURCE: https://cleitonbueno.com/shell-script-estrutura-de-repeticao-e-arrays/
----


## FOR

```
MYUSER=`whoami`

case $MYUSER in
	root) install_wget() ;;
	*) echo "You need to be root!" ;;
esac
```
