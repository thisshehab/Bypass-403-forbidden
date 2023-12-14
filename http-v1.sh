while IFS= read -r url
do
  status_code=$(curl --http1.0 -s -o /dev/null -w "%{http_code}" "$url")

  if [ "$status_code" != "403" ] && [ "$status_code" != "404" ]; then
    echo "$url" | tee output/output6.txt
  fi
done < input/403_sites.txt
