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

#### SOURCE: https://cleitonbueno.com/shell-script-estrutura-de-repeticao-e-arrays/
