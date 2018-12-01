l1:
print("-------------Hand criket-------------\n");
print("1--Odd\n2--Even\n");
print("Enter your choice :");
$ch=<>;
if($ch!=1&&$ch!=2)
{
  print("Invalid choice...\n");
  goto l1;
}
print("Toss....choice :");
u6:$t=<>;
if($t>10||$t<0)
{
  print("Number must be between 0 and 10\n");
  goto u6;
}
print("you  : $t");
$ct=int(rand(11));
print("Cpu  : $ct\n");
$sum=$t+$ct;
print("Total is $sum\n");
$sum=$sum%2;
if((($sum==0)&&($ch==2))||(($sum!=0)&&($ch==1)))
{
  print("You won the choice...\n");
  u5:print("What do you choose bat or bowl(1/2) :");
  $sh=<>;
  if(($sh<1)||($sh>2))
  {
    print("Number must be either 1 or 2\n");
    goto u5;
  }
}
else
{
  $sh=2; 
}
if(($sh==2))
{
  print("Cpu is bating...\n");
  print("....You are bowling....\n");
  print("---------Match Starts-------\n");
  $crun=0;
  do
  {
    u1:$r=<>;
	if(($r>10)||($r<0))
	{
	  print("Number must be between 0 and 10\n");
	  goto u1;
	}
	print("You  : $r");
	$cr=int(rand(11));
	print("Cpu  : $cr\n");
	if($cr!=$r)
	{
	  $crun=$crun+$cr;
	}
  }while($cr!=$r);
  print("------Cpu is OUT....--------\n");
  print("Score of cpu  :$crun\n");
  print("------------------------\n");
  print("You are bating...\n");
  print("....Cpu is Bowling....\n");
  print("---------Match Starts-------\n");
  $r=0;
  do
  {
    u2:$r=<>;
	if(($r>10)||($r<0))
	{
	  print("Number must be between 0 and 10\n");
	  goto u2;
	}
	print("You  : $r");
	$cr=int(rand(11));
	print("Cpu  : $cr\n");
	if($cr!=$r)
	{
	  $run=$run+$r;
	}
  }while($cr!=$r);
  print("You are OUT....\n");
  print("Score of player  :$run\n");
}
if($sh==1)
{
  print("You are bating...\n");
  print("....Cpu is Bowling....\n");
  print("---------Match Starts-------\n");
  $r=0;
  do
  {
    u3:$r=<>;
	if(($r>10)||($r<0))
	{
	  print("Number must be between 0 and 10\n");
	  goto u3;
	}
	print("You  : $r");
	$cr=int(rand(11));
	print("Cpu  : $cr\n");
	if($cr!=$r)
	{
	  $run=$run+$r;
	}
  }while($cr!=$r);
  print("You are OUT....\n");
  print("Score of player  :$run\n");
  print("------------------------\n");
  print("Cpu is bating...\n");
  print("....You are bowling....\n");
  print("---------Match Starts-------\n");
  $crun=0;
  do
  {
    u4:$r=<>;
	if(($r>10)||($r<0))
	{
	  print("Number must be between 0 and 10\n");
	  goto u4;
	}
	print("You  : $r");
	$cr=int(rand(11));
	print("Cpu  : $cr\n");
	if($cr!=$r)
	{
	  $crun=$crun+$cr;
	}
  }while($cr!=$r);
  print("------Cpu is OUT....--------\n");
  print("Score of cpu  :$crun\n");
}
if($run>$crun)
{
  print("Bravo........\n!!!!! You Won the match !!!!\n");
}
elsif($run<$crun)
{
  print("Ohhh........\n##### You LOOSE the match ####\n");
}
else
{
  print("--------MATCH  DRAW---------\n");  
}