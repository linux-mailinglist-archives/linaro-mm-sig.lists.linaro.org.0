Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6676780A41C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Dec 2023 14:06:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5780043D2C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Dec 2023 13:06:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	by lists.linaro.org (Postfix) with ESMTPS id BAD3A3EC4B
	for <linaro-mm-sig@lists.linaro.org>; Fri,  8 Dec 2023 13:05:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=blXjX2EY;
	spf=pass (lists.linaro.org: domain of jani.nikula@intel.com designates 192.198.163.7 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1702040751; x=1733576751;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=QnOL0HstChe82dZJLaFn2ppbg9Lg6p6vs8wKcJ3EoZU=;
  b=blXjX2EYUfGCtL51ls7o6m0xt/eGQFxT0UoKwB67+5Vo6577AhKJuUpz
   updcZeE1Yloz0Bwuaq5hL5pjeh942KPc2RrTDgiT9/j7c6eFC90r4gdAG
   nwcIIdqWihvG9CMND4O/7bGpCDHbNuT5zFGnZPDBkniAV7y/zm2c2HEbu
   owl07InIDfHkrTrrzVv/v+DsuFNgHSdabFtRkGo83O2KStN+S3Fu3cIZr
   jrj+rvIsdM8LfMoDJG4W3J5qRc9/FyrEK0bUvXriT0iNev/86en8Ie3+x
   fa4edvetlY3P9y+D+GnKWfhmN61yvdbfw8Bq71p6EaWXK9zjA0UXdG5kC
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="15954745"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600";
   d="scan'208";a="15954745"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2023 05:05:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721861244"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600";
   d="scan'208";a="721861244"
Received: from mvafin-mobl2.ger.corp.intel.com (HELO localhost) ([10.252.63.236])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2023 05:05:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ziqi Zhao <astrajoan@yahoo.com>, astrajoan@yahoo.com, airlied@gmail.com,
 daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 ivan.orlov0322@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, skhan@linuxfoundation.org, tzimmermann@suse.de
In-Reply-To: <20230721161446.8602-1-astrajoan@yahoo.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230716043411.4950-1-astrajoan@yahoo.com>
 <20230721161446.8602-1-astrajoan@yahoo.com>
Date: Fri, 08 Dec 2023 15:05:40 +0200
Message-ID: <87h6kszvx7.fsf@intel.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: BAD3A3EC4B
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	FORGED_SENDER(0.30)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[18];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	TAGGED_RCPT(0.00)[4fad2e57beb6397ab2fc];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[yahoo.com,gmail.com,ffwll.ch,lists.freedesktop.org,linux.intel.com,kernel.org,linuxfoundation.org,suse.de];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: WPFUEADTJP4BZNYINZUUA7GUUSRCX3LK
X-Message-ID-Hash: WPFUEADTJP4BZNYINZUUA7GUUSRCX3LK
X-MailFrom: jani.nikula@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, glider@google.com, syzbot+4fad2e57beb6397ab2fc@syzkaller.appspotmail.com, sumit.semwal@linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/crtc: Fix uninit-value bug in drm_mode_setcrtc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WPFUEADTJP4BZNYINZUUA7GUUSRCX3LK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 21 Jul 2023, Ziqi Zhao <astrajoan@yahoo.com> wrote:
> The connector_set contains uninitialized values when allocated with
> kmalloc_array. However, in the "out" branch, the logic assumes that any
> element in connector_set would be equal to NULL if failed to
> initialize, which causes the bug reported by Syzbot. The fix is to use
> an extra variable to keep track of how many connectors are initialized
> indeed, and use that variable to decrease any refcounts in the "out"
> branch.

From one uninit-value bug to another?

>
> Reported-by: syzbot+4fad2e57beb6397ab2fc@syzkaller.appspotmail.com
> Signed-off-by: Ziqi Zhao <astrajoan@yahoo.com>
> ---
>  drivers/gpu/drm/drm_crtc.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_crtc.c b/drivers/gpu/drm/drm_crtc.c
> index df9bf3c9206e..d718c17ab1e9 100644
> --- a/drivers/gpu/drm/drm_crtc.c
> +++ b/drivers/gpu/drm/drm_crtc.c
> @@ -715,8 +715,7 @@ int drm_mode_setcrtc(struct drm_device *dev, void *data,
>  	struct drm_mode_set set;
>  	uint32_t __user *set_connectors_ptr;
>  	struct drm_modeset_acquire_ctx ctx;
> -	int ret;
> -	int i;
> +	int ret, i, num_connectors;

num_connectors is uninitialized.

>  
>  	if (!drm_core_check_feature(dev, DRIVER_MODESET))
>  		return -EOPNOTSUPP;
> @@ -851,6 +850,7 @@ int drm_mode_setcrtc(struct drm_device *dev, void *data,
>  			goto out;
>  		}
>  
> +		num_connectors = 0;

num_connectors is initialized only if crtc_req->count_connectors > 0.

>  		for (i = 0; i < crtc_req->count_connectors; i++) {
>  			connector_set[i] = NULL;
>  			set_connectors_ptr = (uint32_t __user *)(unsigned long)crtc_req->set_connectors_ptr;
> @@ -871,6 +871,7 @@ int drm_mode_setcrtc(struct drm_device *dev, void *data,
>  					connector->name);
>  
>  			connector_set[i] = connector;
> +			num_connectors++;
>  		}
>  	}
>  
> @@ -879,7 +880,7 @@ int drm_mode_setcrtc(struct drm_device *dev, void *data,
>  	set.y = crtc_req->y;
>  	set.mode = mode;
>  	set.connectors = connector_set;
> -	set.num_connectors = crtc_req->count_connectors;
> +	set.num_connectors = num_connectors;

num_connectors is used uninitialized if crtc_req->count_connectors <= 0.

BR,
Jani.

>  	set.fb = fb;
>  
>  	if (drm_drv_uses_atomic_modeset(dev))
> @@ -892,7 +893,7 @@ int drm_mode_setcrtc(struct drm_device *dev, void *data,
>  		drm_framebuffer_put(fb);
>  
>  	if (connector_set) {
> -		for (i = 0; i < crtc_req->count_connectors; i++) {
> +		for (i = 0; i < num_connectors; i++) {
>  			if (connector_set[i])
>  				drm_connector_put(connector_set[i]);
>  		}

-- 
Jani Nikula, Intel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
