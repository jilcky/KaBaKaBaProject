//
//  Released by YoYo Games Ltd. on 17/04/2014. Intended for use with GM: S EA97 and above ONLY.
//  Copyright YoYo Games Ltd., 2014.
//  For support please submit a ticket at help.yoyogames.com
//
//


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

public interface AmazonIAPInterface
{
	public void NotifyFulfillment(String receipt_id, double fulfilled);
	public double BuyIAP_SKU(String sku);
	public void GetPurchasesData(double reset);
	public double GetProductData(Set<String> ourSkus);
	public void RegisterListener();
}
	



