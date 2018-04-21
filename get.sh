for season in {1..8}
do
  season=$(printf %02d $season)
  for episode in {1..27}
  do
    echo $season $episode
    episode=$(printf %02d $episode)
    name="https://www.springfieldspringfield.co.uk/view_episode_scripts.php?tv-show=that-70s-show&episode=s${season}e${episode}"
    curl $name > "html/${season}_${episode}"
  done
done

