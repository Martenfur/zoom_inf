///adDisplay()

/*
Displays an ad.
$W33T MON3YZ
*/

with(cntrl)
{
  if adAl<=0 && mobile
  {
    var _status=GoogleMobileAds_InterstitialStatus();
    //show_message(string(_status)+" "+string(adLoaded))
    if _status="Ready" || adLoaded!=0
    {
      GoogleMobileAds_ShowInterstitial()
      GoogleMobileAds_LoadInterstitial()
      adAl=adTime
      adLoaded=0
    } 
  }
}
