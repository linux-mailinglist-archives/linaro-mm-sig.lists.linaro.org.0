Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 44473A741D9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Mar 2025 01:49:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C99844789
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Mar 2025 00:49:19 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id E9A9344322
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Mar 2025 00:49:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=DtxW+hk0;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1743122927; cv=none;
	d=zohomail.com; s=zohoarc;
	b=IzZR/6eV3eRANWwtaDsVX/tXgsystpLRs4MCOJQyyFvwjM8t4p1XelmrqOJEbuc0Bt+fbmHaeE3tOre1KtzUOsEK8itnIDNuh7g8IEjms5/nuJvB4KUs1kpy/T1IIq7EDjNE3xdz9OpmRQtJY1IWZHkLeE61bOOS8rpmem4wK0M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1743122927; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=y4jDLIxxgTPU6S6kjP6W2qy0YbeeCk7wPRc5Aobjd8M=;
	b=Nmte/jjj7G01iR2nwqUhdLMHRg+n7VG7CdERbuYd7ANJ9k0UZEu4UQkeGyagX3eRqZDAuHz68CaoyCklRKpot31/s0RfCAz4clsFJOnwQ55xaloi4vk0p7DNxGx2JUcQ6F/D07INAwgkhQT48mM6ybk4+1Hc5vaDvgIeR5kx4so=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743122927;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=y4jDLIxxgTPU6S6kjP6W2qy0YbeeCk7wPRc5Aobjd8M=;
	b=DtxW+hk0x+nE/5ZN/O4jFoR06MHA4xywBRKT++cphAAK0IL8yZXUakntasdEI4Jg
	JGZc3Kw+3j2ng4V1AyKeeJSive2GpXY7ZY4yVMilLaiC9n+hbUfg15rtQRkEh86Zi9a
	s1HNnPjN84Gn0FKEvYHhPlH9wwFBrEXOIjtSKZB0=
Received: by mx.zohomail.com with SMTPS id 174312292550316.712910908575054;
	Thu, 27 Mar 2025 17:48:45 -0700 (PDT)
Message-ID: <f438c1ae-add1-4ff1-b9f3-6996fc441cd9@collabora.com>
Date: Fri, 28 Mar 2025 03:48:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20250327213632.7903-1-robdclark@gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <20250327213632.7903-1-robdclark@gmail.com>
X-ZohoMailClient: External
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E9A9344322
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[136.143.188.112:from];
	R_SPF_ALLOW(-0.20)[+ip4:136.143.188.0/24];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[amd.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:2639, ipnet:136.143.188.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: ZJYOCYVRQCGOZ6B7HOUXZHIQUAV62WFH
X-Message-ID-Hash: ZJYOCYVRQCGOZ6B7HOUXZHIQUAV62WFH
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZJYOCYVRQCGOZ6B7HOUXZHIQUAV62WFH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 3/28/25 00:36, Rob Clark wrote:
...
>  static int drm_syncobj_import_sync_file_fence(struct drm_file *file_private,
> -					      int fd, int handle)
> +					      int fd, int handle, u64 point)
>  {
>  	struct dma_fence *fence = sync_file_get_fence(fd);
>  	struct drm_syncobj *syncobj;
> @@ -755,14 +755,18 @@ static int drm_syncobj_import_sync_file_fence(struct drm_file *file_private,
>  		return -ENOENT;
>  	}
>  
> -	drm_syncobj_replace_fence(syncobj, fence);
> +	if (point) {
> +		drm_syncobj_add_point(syncobj, dma_fence_chain_alloc(), fence, point);

Nit: check dma_fence_chain_alloc() for ENOMEM

> +	} else {
> +		drm_syncobj_replace_fence(syncobj, fence);
> +	}

Nit: checkpath should complain about the unnecessary braces

>  	dma_fence_put(fence);
>  	drm_syncobj_put(syncobj);
>  	return 0;
>  }
>  
>  static int drm_syncobj_export_sync_file(struct drm_file *file_private,
> -					int handle, int *p_fd)
> +					int handle, u64 point, int *p_fd)
>  {
>  	int ret;
>  	struct dma_fence *fence;
> @@ -772,7 +776,7 @@ static int drm_syncobj_export_sync_file(struct drm_file *file_private,
>  	if (fd < 0)
>  		return fd;
>  
> -	ret = drm_syncobj_find_fence(file_private, handle, 0, 0, &fence);
> +	ret = drm_syncobj_find_fence(file_private, handle, point, 0, &fence);
>  	if (ret)
>  		goto err_put_fd;
>  
> @@ -869,6 +873,9 @@ drm_syncobj_handle_to_fd_ioctl(struct drm_device *dev, void *data,
>  				   struct drm_file *file_private)
>  {
>  	struct drm_syncobj_handle *args = data;
> +	unsigned valid_flags = DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_TIMELINE |
> +			       DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE;
> +	u64 point = 0;
>  
>  	if (!drm_core_check_feature(dev, DRIVER_SYNCOBJ))
>  		return -EOPNOTSUPP;
> @@ -876,13 +883,18 @@ drm_syncobj_handle_to_fd_ioctl(struct drm_device *dev, void *data,
>  	if (args->pad)
>  		return -EINVAL;
>  
> -	if (args->flags != 0 &&
> -	    args->flags != DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_EXPORT_SYNC_FILE)
> +	if (args->flags != 0 && (args->flags & ~valid_flags))
>  		return -EINVAL;

Nit: args->flags!=0 not needed as (0 & ~valid_flags) is always false,
same for import

...


-- 
Best regards,
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
