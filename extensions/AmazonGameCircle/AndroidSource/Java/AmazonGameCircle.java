//
//  Released by YoYo Games Ltd. on 17/04/2014. Intended for use with GM: S EA97 and above ONLY.
//  Copyright YoYo Games Ltd., 2014.
//  For support please submit a ticket at help.yoyogames.com
//
//  Last Updated: 9th October 2017
//  09-OCT-2017 Removed superfluous calls and slight tidy up
//  22-SEP-2017 Removed Friends Social GameCircle calls
//  31-AUG-2017 Removed Amazon Ads


package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

import com.amazon.ags.*;
import com.amazon.ags.api.*;
import com.amazon.ags.api.achievements.*;
import com.amazon.ags.api.leaderboards.*;
import com.amazon.ags.api.player.*;
import com.amazon.ags.api.whispersync.*;
import com.amazon.ags.api.whispersync.model.*;

import com.amazon.ags.api.overlay.PopUpLocation;
import java.util.EnumSet;
import java.util.List;
import java.util.Date;
import android.content.Intent;
import java.util.Set;
import java.util.HashSet;
import android.widget.AbsoluteLayout;
import android.widget.LinearLayout;
import com.amazon.ags.api.RequestResponse;

import java.text.DateFormat;
import com.amazon.ags.constants.LeaderboardFilter;
import android.view.Gravity;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;



public class AmazonGameCircle extends RunnerSocial
{
	int EVENT_OTHER_SOCIAL = 70;
 
	int e_achievement_our_info=1002;
	int e_achievement_friends_info=1003;
	int e_achievement_msg_result=1014;
	int e_achievement_leaderboard_info=1004;
	int e_achievement_achievement_info=1005;
	
	
	int AmazonGameCircle_Achievements=1;
	int AmazonGameCircle_Leaderboards=2;
	int AmazonGameCircle_Whispersync=4;
	int AmazonGameCircle_Progress=8;
	int AmazonGameCircle_IAP=16;
	
	private AmazonIAPInterface iap_controller=null;
	
	Set<String> ourSkus=new HashSet<String>();
	
	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data)
	{
		Log.i("yoyo","onActivityResult called in AmazonGameCircle extension");
	
	}
	
	AmazonGamesClient agsClient;
	AGSignedInListener signInListener = new AGSignedInListener()
	{
		@Override
		public void onSignedInStateChange(boolean isSignedIn)
		{
			Log.i("yoyo","onSignedInStateChange called with isSignedIn=" + isSignedIn);
			
			if(isSignedIn)
			{
				PlayerClient pClient = agsClient.getPlayerClient();
		
				if(pClient!=null)
				{	
					AGResponseHandle<RequestPlayerResponse> handle = pClient.getLocalPlayer();
					handle.setCallback(playercallback);	
				}
			}
			else
			{
				//Ping an async message with not signed in details
				
				String [] keys ={"id"};
				double [] dvals ={(double)e_achievement_our_info};

				int dsmapindex = RunnerJNILib.jCreateDsMap(keys,null,dvals);
				RunnerJNILib.DsMapAddString(dsmapindex,"name","");
				RunnerJNILib.DsMapAddString(dsmapindex,"playerid","-1");
				RunnerJNILib.DsMapAddString(dsmapindex,"avatar_url","");
				
				
				RunnerJNILib.CreateAsynEventWithDSMap(dsmapindex,EVENT_OTHER_SOCIAL);
			}
			
		}
	};
	
	AmazonGamesCallback callback = new AmazonGamesCallback() 
	{
		@Override
		public void onServiceNotReady(AmazonGamesStatus status) 
		{
			//unable to use service
			Log.i("yoyo","Unable to initialise AmazonGamesClient - service not ready. Status="+status);
		}
		@Override
		public void onServiceReady(AmazonGamesClient amazonGamesClient) 
		{
			agsClient = amazonGamesClient;
			Log.i("yoyo","Service Ready callback called");
			
			agsClient.getPlayerClient().setSignedInListener(signInListener);
			
			PlayerClient pClient = agsClient.getPlayerClient();
		
			if(pClient!=null)
			{	
				AGResponseHandle<RequestPlayerResponse> handle = pClient.getLocalPlayer();
				handle.setCallback(playercallback);	
				Log.i("yoyo","Requested our info callback");
			}
			
			agsClient.setPopUpLocation(PopUpLocation.TOP_CENTER); //Can go BOTTOM_CENTER BOTTOM_LEFT BOTTOM_RIGHT TOP_CENTER TOP_LEFT TOP_RIGHT
            //ready to use GameCircle
		}
	};
	
	
	
	
	AGResponseCallback scorecallback = new AGResponseCallback<SubmitScoreResponse>() 
	{
	
		@Override
		public void onComplete(SubmitScoreResponse result) 
		{
			if (result.isError()) 
			{
			   // Add optional error handling here.  Not strictly required
			   // since retries and on-device request caching are automatic.
			   Log.i("yoyo","Error updating score " + result);
			}
			else
			{
			   // Continue game flow.
			   Log.i("yoyo","Successfully updated leaderboard score " + result);
			}
		}
	
	};
	
	
	AGResponseCallback playercallback = new AGResponseCallback<RequestPlayerResponse>()
	{	
		@Override
		public void onComplete(RequestPlayerResponse result)
		{
			if(result.isError())
			{
				Log.i("yoyo","Error retrieving GameCircle player information: " + result);
			}
			else
			{
				Log.i("yoyo","GameCircle player information retrieved");
				Player p = result.getPlayer();
				
				String [] keys ={"id"};
				double [] dvals ={(double)e_achievement_our_info};

				int dsmapindex = RunnerJNILib.jCreateDsMap(keys,null,dvals);
				RunnerJNILib.DsMapAddString(dsmapindex,"name",p.getAlias());
				RunnerJNILib.DsMapAddString(dsmapindex,"playerid",p.getPlayerId());
				RunnerJNILib.DsMapAddString(dsmapindex,"avatar_url",p.getAvatarUrl());
				
				
				RunnerJNILib.CreateAsynEventWithDSMap(dsmapindex,EVENT_OTHER_SOCIAL);
			
			}
		}			
	};
	
	AGResponseCallback showcallback = new AGResponseCallback<RequestResponse>()
	{
		@Override 
		public void onComplete(RequestResponse result)
		{
			if(result.isError())
			{
				Log.i("yoyo","Show Dialog response is error");
				Log.i("yoyo","Error returns as " + result.getError());
			}
			
			Log.i("yoyo","Show Dialog callback with response " + result.toString());
		}
		
		
	};
	AGResponseCallback achcallback = new AGResponseCallback<UpdateProgressResponse>() 
	{
	
		@Override
		public void onComplete(UpdateProgressResponse result) 
		{
			if (result.isError()) 
			{
			   // Add optional error handling here.  Not strictly required
			   // since retries and on-device request caching are automatic.
			   Log.i("yoyo","Error updating achievement progress " + result);
			}
			else
			{
			   // Continue game flow.
			   Log.i("yoyo","Successfully updated achievement progress " + result);
			}
		}
	
	};
	
	EnumSet<AmazonGamesFeature> myGameFeatures=EnumSet.noneOf(AmazonGamesFeature.class);
	
	public void AmazonGameCircle_ShowLoginDialog()
	{
		Log.i("yoyo","Calling to show sign in page");
		if(agsClient!=null)
			agsClient.showSignInPage();
	}
	
	public void AmazonGameCircle_Show()
	{
		Log.i("yoyo","Calling to show ui");
		
		RunnerActivity.ViewHandler.post( new Runnable() {
		public void run() 
		{
		
			if(agsClient!=null)
			{
				AGResponseHandle<RequestResponse> handle = agsClient.showGameCircle();
				handle.setCallback(showcallback);	
				
			}
		}});
	}
	
	@Override
	public void onResume()
	{
		Log.i("yoyo","Attempting to re-initialize Amazon Game Circle in onResume call");
//		if(agsClient==null)
			AmazonGamesClient.initialize(RunnerActivity.CurrentActivity, callback, myGameFeatures);
	
	}
	
	@Override
	public void onPause()
	{
		if(agsClient!=null)
		{
			agsClient.release();
		}
	}
	
	
	public void AmazonGameCircle_InitFeatures(double dfeatures)
	{
		int features = (int)dfeatures;
	
		Log.i("yoyo","Initialising GameCircle feature set " + features);
		
		myGameFeatures.clear();
		if((features & AmazonGameCircle_Achievements) >0)
			myGameFeatures.add(AmazonGamesFeature.Achievements);
	
		if((features & AmazonGameCircle_Leaderboards)>0)
			myGameFeatures.add(AmazonGamesFeature.Leaderboards);
		
		if((features & AmazonGameCircle_Whispersync)>0)
			myGameFeatures.add(AmazonGamesFeature.Whispersync);
		
		if((features & AmazonGameCircle_Progress)>0)
			myGameFeatures.add(AmazonGamesFeature.Progress);
		
		Log.i("yoyo","Attempting to initialize Amazon Game Circle via extension");
		AmazonGamesClient.initialize(RunnerActivity.CurrentActivity, callback, myGameFeatures);
		
	
		if((features & AmazonGameCircle_Whispersync)>0)
		{
			AmazonGamesClient.getWhispersyncClient().setWhispersyncEventListener(wsEventListener);
		}		
		
		if((features & AmazonGameCircle_IAP)>0)
		{
			String FullClassName = "${YYAndroidPackageName}.AmazonIAP";
			try{
				iap_controller = (AmazonIAPInterface)(Class.forName(FullClassName).getConstructor().newInstance());
				iap_controller.RegisterListener();
				Log.i("yoyo","iap_controller successfully created");
			}
			catch(Exception e)
			{
				Log.i("yoyo","Failed to initialize Amazon IAP class, IAP functionality will not be present");
			}
		}
			
		Log.i("yoyo", "Done init features");
	}
	
	@Override
	public void Init()
	{
	}
	
	public void AmazonGameCircle_GetPurchasesData(double reset)
	{
		if(iap_controller!=null)
		{
			iap_controller.GetPurchasesData(reset);	
		}
	}

	public void AmazonGameCircle_AchievementProgress(String achid, double progress)
	{
		// Replace YOUR_ACHIEVEMENT_ID with an actual achievement ID from your game.
		if(agsClient!=null)
		{
			AchievementsClient acClient = agsClient.getAchievementsClient();
			AGResponseHandle<UpdateProgressResponse> handle = acClient.updateProgress(achid, (float)progress);
	 
			// Optional callback to receive notification of success/failure.
			handle.setCallback(achcallback);	
		}
		
	}
	
	public void AmazonGameCircle_ShowAchievements()
	{
		if(agsClient!=null)
		{
			AchievementsClient acClient = agsClient.getAchievementsClient();
			acClient.showAchievementsOverlay();
		}
	}
	
	
	public void AmazonGameCircle_PostLeaderboardScore(String leaderboard_id, double score)
	{
		if(agsClient!=null)
		{
			LeaderboardsClient lbClient = agsClient.getLeaderboardsClient();
			AGResponseHandle<SubmitScoreResponse> handle = lbClient.submitScore(leaderboard_id, (long)score);
 
			// Optional callback to receive notification of success/failure.
			handle.setCallback(scorecallback);
		}
	}
	
	
	
	
	public void AmazonGameCircle_ShowLeaderboards()
	{
		if(agsClient!=null)
		{
			LeaderboardsClient lbClient = agsClient.getLeaderboardsClient();
			lbClient.showLeaderboardsOverlay();   
		}
	}
	
	
	public double AmazonGameCircle_IsSignedIn()
	{
		if(agsClient==null)
			return 0;
	
		PlayerClient pClient = agsClient.getPlayerClient();
		
		if(pClient!=null)
			if(pClient.isSignedIn())
				return 1.0;
		return 0;
	}		
	
	AGResponseCallback scorescallback = new AGResponseCallback<GetScoresResponse>() 
	{
	
		@Override
		public void onComplete(GetScoresResponse result) 
		{
			if (result.isError()) 
			{
			   // Add optional error handling here.  Not strictly required
			   // since retries and on-device request caching are automatic.
			   Log.i("yoyo","Error retrieving leaderboard scores " + result);
			}
			else
			{
				Leaderboard lb = result.getLeaderboard();
				double numscores = (double)result.getNumScores();
				List<Score> scorelist = result.getScores();
				
				String [] keys ={"id"};
				double [] dvals ={(double)e_achievement_leaderboard_info};

				int dsmapindex = RunnerJNILib.jCreateDsMap(keys,null,dvals);
				RunnerJNILib.DsMapAddString(dsmapindex,"lb_name",lb.getName());
				RunnerJNILib.DsMapAddString(dsmapindex,"lb_text",lb.getDisplayText());
				RunnerJNILib.DsMapAddString(dsmapindex,"lb_id",lb.getId());
				RunnerJNILib.DsMapAddString(dsmapindex,"lb_url",lb.getImageURL());
				RunnerJNILib.DsMapAddDouble(dsmapindex,"lb_numscores",numscores);
		//		RunnerJNILib.DsMapAddDouble(dsmapindex,"lb_scoreformat",(double)(lb.getScoreFormat())); //Doesn't seem to be documented?
				
				Log.i("yoyo","About to add leaderboard data for " + numscores+ " scores.");
				
				for(int i=0;i<numscores;i++)
				{
					Score s = scorelist.get(i);
					RunnerJNILib.DsMapAddString(dsmapindex,"lb_score"+i,s.getScoreString());
					RunnerJNILib.DsMapAddDouble(dsmapindex,"lb_rank"+i,s.getRank());
					RunnerJNILib.DsMapAddString(dsmapindex,"lb_player_alias"+i,s.getPlayer().getAlias());
					RunnerJNILib.DsMapAddString(dsmapindex,"lb_player_id"+i,s.getPlayer().getPlayerId());
					RunnerJNILib.DsMapAddString(dsmapindex,"lb_player_avatarurl"+i,s.getPlayer().getAvatarUrl());
				
				}
				
				RunnerJNILib.CreateAsynEventWithDSMap(dsmapindex,EVENT_OTHER_SOCIAL);
				
			}
		}
	
	};
	public void AmazonGameCircle_LoadLeaderboard(String leaderboard_id,double startindex,double endindex)
	{
		if(agsClient!=null)
		{
			LeaderboardsClient lbClient = agsClient.getLeaderboardsClient();
			
			// Options for filter are GLOBAL_ALL_TIME=0, GLOBAL_WEEK,   GLOBAL_DAY, FRIENDS_ALL_TIME
			
			AGResponseHandle<GetScoresResponse> handle = lbClient.getScores(leaderboard_id, LeaderboardFilter.GLOBAL_ALL_TIME);
			handle.setCallback(scorescallback);
		}
	}
	
	AGResponseCallback achievementscallback = new AGResponseCallback<GetAchievementsResponse>() 
	{
	
		@Override
		public void onComplete(GetAchievementsResponse result) 
		{
			if (result.isError()) 
			{
			   // Add optional error handling here.  Not strictly required
			   // since retries and on-device request caching are automatic.
			   Log.i("yoyo","Error retrieving achievements " + result);
			}
			else
			{
				
				List<Achievement> achlist = result.getAchievementsList();
				
				String [] keys ={"id"};
				double [] dvals ={(double)e_achievement_achievement_info};

				int numachs = result.getNumVisibleAchievements();
				
				int dsmapindex = RunnerJNILib.jCreateDsMap(keys,null,dvals);
						
				RunnerJNILib.DsMapAddDouble(dsmapindex,"ach_num",numachs);
					
				
					
				for(int i=0;i<numachs;i++)
				{
					Achievement a = achlist.get(i);
					
					DateFormat df = DateFormat.getDateTimeInstance();
					Date d = a.getDateUnlocked();
					String ds;
					if(d!=null)
						ds = df.format(d);
					else
						ds= "locked";
					
					
					
					
					RunnerJNILib.DsMapAddString(dsmapindex,"ach_dateunlocked"+i,ds);
					RunnerJNILib.DsMapAddString(dsmapindex,"ach_description"+i,a.getDescription());
					RunnerJNILib.DsMapAddString(dsmapindex,"ach_id"+i,a.getId());
					RunnerJNILib.DsMapAddString(dsmapindex,"ach_imageurl"+i,a.getImageURL());
					RunnerJNILib.DsMapAddDouble(dsmapindex,"ach_pointvalue"+i,(double)a.getPointValue());
					RunnerJNILib.DsMapAddDouble(dsmapindex,"ach_position"+i,(double)a.getPosition());
					RunnerJNILib.DsMapAddDouble(dsmapindex,"ach_progress"+i,(double)a.getProgress());
					RunnerJNILib.DsMapAddString(dsmapindex,"ach_title"+i,a.getTitle());
					if(a.isHidden())
					{
						RunnerJNILib.DsMapAddDouble(dsmapindex,"ach_is_hidden"+i,1);
					}
					else
					{
						RunnerJNILib.DsMapAddDouble(dsmapindex,"ach_is_hidden"+i,0);
					}
					if(a.isUnlocked())
					{
						RunnerJNILib.DsMapAddDouble(dsmapindex,"ach_is_unlocked"+i,1);
					}
					else
					{
						RunnerJNILib.DsMapAddDouble(dsmapindex,"ach_is_unlocked"+i,0);
					}
				
				}
				
				RunnerJNILib.CreateAsynEventWithDSMap(dsmapindex,EVENT_OTHER_SOCIAL);
				
			}
		}
	
	};
	public void AmazonGameCircle_LoadAchievements()
	{
		AchievementsClient acClient = agsClient.getAchievementsClient();
		
		AGResponseHandle<GetAchievementsResponse> handle = acClient.getAchievements();
		handle.setCallback(achievementscallback);
	
	}
	
	WhispersyncEventListener wsEventListener = new WhispersyncEventListener() {

		public void onNewCloudData() {
			// refresh visible game data
			Log.i("yoyo","New CloudData received");
		}
 
		// The following three methods are mainly useful for debugging purposes and don't have to be overridden
 
		public void onDataUploadedToCloud() {
			Log.i("yoyo","New CloudData uploaded");
		}
 
		public void onThrottled() {
			Log.i("yoyo","WhisperSync throttle detected");
		}
 
		public void onDiskWriteComplete() {
			Log.i("yoyo","WhisperSync diskwrite complete");
		}
	};
	
	public void AmazonGameCircle_CloudSynchronize()
	{
		AmazonGamesClient.getWhispersyncClient().synchronize();
	}
	
	public void AmazonGameCircle_CloudStringSet( String string_key,String string_to_save)
	{		
		GameDataMap gameDataMap = AmazonGamesClient.getWhispersyncClient().getGameData();
		
		SyncableString curData = gameDataMap.getLatestString(string_key);
		curData.set(string_to_save);
		Log.i("yoyo","Saving data " +string_to_save+ " for key " + string_key);
	}
	
	public String AmazonGameCircle_CloudStringGet(String string_key)
	{
		GameDataMap gameDataMap = AmazonGamesClient.getWhispersyncClient().getGameData();
		SyncableString curData = gameDataMap.getLatestString(string_key);
		Log.i("yoyo","Got " + curData.getValue() + " for key " + string_key);
		return curData.getValue();
	}
	
	public void AmazonGameCircle_CloudNumberSet(String number_key,double value)
	{
		GameDataMap gameDataMap = AmazonGamesClient.getWhispersyncClient().getGameData();
		SyncableNumber curNum = gameDataMap.getLatestNumber(number_key);
		curNum.set(value);
	}
	
	public double AmazonGameCircle_CloudNumberGet(String number_key)
	{
		GameDataMap gameDataMap = AmazonGamesClient.getWhispersyncClient().getGameData();
		SyncableNumber curNum = gameDataMap.getLatestNumber(number_key);
		return curNum.asDouble();
	}
	
	public double AmazonGameCircle_AddIAP_SKU(String sku)
	{
		if(ourSkus.contains(sku))
		{
			return -2;
		}
		if(ourSkus.size()>=100)
			return -3; //Max limit = 100 skus
			
		if(ourSkus.add(sku))
			return 1;
		else
			return -1;
		
	}
	
	public double AmazonGameCircle_GetProductData()
	{
	
		if(ourSkus.size()<=0)
		{
			Log.i("yoyo","Unable to get Amazon product data as no SKU's have been added");
			return -1;
		}
		
		if(iap_controller!=null)
		{
			Log.i("yoyo","Calling to get ProductData");
			return iap_controller.GetProductData(ourSkus);
		}
		
		return -1;
	}
	
	public double AmazonGameCircle_BuyIAP_SKU(String sku)
	{
		if(iap_controller!=null)
			return iap_controller.BuyIAP_SKU(sku);
		
		return (double)-1;
	}
	
	
	public void AmazonGameCircle_NotifyFulfillment(String receipt_id,double fulfilled)
	{
		if(iap_controller!=null)
			iap_controller.NotifyFulfillment(receipt_id,fulfilled);
		
	}
	
}


