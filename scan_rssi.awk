BEGIN { 
  FS="[:=]" 
}

/ESSID/{ 
  essid[e++]=$2 
}

/Quality/{
  sig[s++]=$3
}

END{
  for(i=0;i<length(essid);i++){
    print essid[i]" "sig[i]
  }
}
