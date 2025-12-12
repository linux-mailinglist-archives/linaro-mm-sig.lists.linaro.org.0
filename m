Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAq4GjgE4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:46:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C8B41132F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CDAB4105C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:45:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	by lists.linaro.org (Postfix) with ESMTPS id 301973F8F3
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 13:46:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=H1gc+1Fz;
	spf=pass (lists.linaro.org: domain of maciej.falkowski@linux.intel.com designates 198.175.65.19 as permitted sender) smtp.mailfrom=maciej.falkowski@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1765547177; x=1797083177;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=5AjYJ+usLGldY0sqsj+QPEYvL8hFOcyY02OqJHrK/XQ=;
  b=H1gc+1FzzZ4D93pFgWXuF61Vpyn69ePMVcdD8qP7tyjqvSK0TW/PlXa1
   IjXhGv2u9o0n1BQCsnVVUCulYBhYwqtA8siq156RJMicBfpErYLETTiLW
   e9JdYouVihIAVQmJwvgu8bojFNylJKV0pjIN+IPqtrCraxwzl91IbbWrN
   PEXwrfdlUHidd2WPal/49vsyqJdaTPagzIjV03wJrJamEaW65GPSZE1eY
   gOZ1bPEtw3xQe8IuCeVPcwapHoHcEd4U90jd2TBnsPTzfyQ5p4KNk+oEu
   8NcDHPb+pCfFR5ypZ1oAusJJW3QQ5nNUHDyd6p6gV7KxPtpgx9CoPJQUr
   w==;
X-CSE-ConnectionGUID: Zf5jTzv8SXO/vphfq8ROlg==
X-CSE-MsgGUID: YWSjWwOgTAa55FCATwXiPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67425408"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800";
   d="scan'208";a="67425408"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2025 05:46:16 -0800
X-CSE-ConnectionGUID: jf15fWK2RxefXMkCuR2kYw==
X-CSE-MsgGUID: SqFyhRDCQTuLY/wGZ1dcpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800";
   d="scan'208";a="228148011"
Received: from mfalkows-mobl.ger.corp.intel.com (HELO [10.246.17.246]) ([10.246.17.246])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2025 05:46:12 -0800
Message-ID: <d1f1bba5-3961-4420-8e99-8948089f374a@linux.intel.com>
Date: Fri, 12 Dec 2025 14:44:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Karol Wachowski <karol.wachowski@linux.intel.com>, David.Francis@amd.com,
 christian.koenig@amd.com
References: <20251212134133.475218-1-karol.wachowski@linux.intel.com>
Content-Language: en-US
From: "Falkowski, Maciej" <maciej.falkowski@linux.intel.com>
In-Reply-To: <20251212134133.475218-1-karol.wachowski@linux.intel.com>
X-Spamd-Bar: -------
X-MailFrom: maciej.falkowski@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NKHJR6QEW24BKLJHBCGFWNEMNZFMMQEU
X-Message-ID-Hash: NKHJR6QEW24BKLJHBCGFWNEMNZFMMQEU
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:51 +0000
CC: felix.kuehling@amd.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, andrzej.kacprowski@linux.intel.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm: Fix object leak in DRM_IOCTL_GEM_CHANGE_HANDLE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NKHJR6QEW24BKLJHBCGFWNEMNZFMMQEU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[3002];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.falkowski@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.245];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,linux.intel.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: F3C8B41132F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/12/2025 2:41 PM, Karol Wachowski wrote:

> Add missing drm_gem_object_put() call when drm_gem_object_lookup()
> successfully returns an object. This fixes a GEM object reference
> leak that can prevent driver modules from unloading when using
> prime buffers.
>
> Fixes: 53096728b891 ("drm: Add DRM prime interface to reassign GEM handle")
> Cc: <stable@vger.kernel.org> # v6.18+
> Signed-off-by: Karol Wachowski <karol.wachowski@linux.intel.com>
> ---
> Changes between v3 and v2:
>   - correctly add CC: tag this time
>
> Changes between v1 and v2:
>   - move setting ret value under if branch as suggested in review
>   - add Cc: stable 6.18+
> ---
>   drivers/gpu/drm/drm_gem.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index ca1956608261..bcc08a6aebf8 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -1010,8 +1010,10 @@ int drm_gem_change_handle_ioctl(struct drm_device *dev, void *data,
>   	if (!obj)
>   		return -ENOENT;
>   
> -	if (args->handle == args->new_handle)
> -		return 0;
> +	if (args->handle == args->new_handle) {
> +		ret = 0;
> +		goto out;
> +	}
>   
>   	mutex_lock(&file_priv->prime.lock);
>   
> @@ -1043,6 +1045,8 @@ int drm_gem_change_handle_ioctl(struct drm_device *dev, void *data,
>   
>   out_unlock:
>   	mutex_unlock(&file_priv->prime.lock);
> +out:
> +	drm_gem_object_put(obj);
>   
>   	return ret;
>   }
Reviewed-by: Maciej Falkowski <maciej.falkowski@linux.intel.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
