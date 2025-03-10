Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7BAA59913
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 16:06:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 72298444C9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 15:06:23 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 462683F2C0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 15:06:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E10516F2;
	Mon, 10 Mar 2025 08:06:18 -0700 (PDT)
Received: from [10.57.39.174] (unknown [10.57.39.174])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F15A23F5A1;
	Mon, 10 Mar 2025 08:06:02 -0700 (PDT)
Message-ID: <8bb8dfcb-bc44-48f2-acdb-58e6d259d25b@arm.com>
Date: Mon, 10 Mar 2025 15:06:00 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <20250310-dmem-cgroups-v1-11-2984c1bc9312@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20250310-dmem-cgroups-v1-11-2984c1bc9312@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 462683F2C0
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[217.140.110.172:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	ARC_NA(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[arm.com,none];
	FREEMAIL_TO(0.00)[kernel.org,linux-foundation.org,samsung.com,linaro.org,amd.com,collabora.com,arm.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org];
	FREEMAIL_CC(0.00)[xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[217.140.110.172:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:217.140.96.0/20];
	TAGGED_RCPT(0.00)[renesas];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: NREGDB2ZSHDINQKCMTZALBNB3JKDAJRT
X-Message-ID-Hash: NREGDB2ZSHDINQKCMTZALBNB3JKDAJRT
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/12] drm/gem: Add cgroup memory accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NREGDB2ZSHDINQKCMTZALBNB3JKDAJRT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2025-03-10 12:06 pm, Maxime Ripard wrote:
> In order to support any device using the GEM support, let's charge any
> GEM DMA allocation into the dmem cgroup.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>   drivers/gpu/drm/drm_gem.c            | 5 +++++
>   drivers/gpu/drm/drm_gem_dma_helper.c | 6 ++++++
>   include/drm/drm_device.h             | 1 +
>   include/drm/drm_gem.h                | 2 ++
>   4 files changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index ee811764c3df4b4e9c377a66afd4967512ba2001..e04733cb49353cf3ff9672d883b106a083f80d86 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -108,10 +108,11 @@ drm_gem_init(struct drm_device *dev)
>   	dev->vma_offset_manager = vma_offset_manager;
>   	drm_vma_offset_manager_init(vma_offset_manager,
>   				    DRM_FILE_PAGE_OFFSET_START,
>   				    DRM_FILE_PAGE_OFFSET_SIZE);
>   
> +
>   	return drmm_add_action(dev, drm_gem_init_release, NULL);
>   }
>   
>   /**
>    * drm_gem_object_init_with_mnt - initialize an allocated shmem-backed GEM
> @@ -973,10 +974,14 @@ drm_gem_release(struct drm_device *dev, struct drm_file *file_private)
>    * drm_gem_object_init().
>    */
>   void
>   drm_gem_object_release(struct drm_gem_object *obj)
>   {
> +
> +	if (obj->cgroup_pool_state)
> +		dmem_cgroup_uncharge(obj->cgroup_pool_state, obj->size);
> +
>   	if (obj->filp)
>   		fput(obj->filp);
>   
>   	drm_gem_private_object_fini(obj);
>   
> diff --git a/drivers/gpu/drm/drm_gem_dma_helper.c b/drivers/gpu/drm/drm_gem_dma_helper.c
> index 16988d316a6dc702310fa44c15c92dc67b82802b..6236feb67ddd6338f0f597a0606377e0352ca6ed 100644
> --- a/drivers/gpu/drm/drm_gem_dma_helper.c
> +++ b/drivers/gpu/drm/drm_gem_dma_helper.c
> @@ -104,10 +104,16 @@ __drm_gem_dma_create(struct drm_device *drm, size_t size, bool private)
>   	if (ret) {
>   		drm_gem_object_release(gem_obj);
>   		goto error;
>   	}
>   
> +	ret = dmem_cgroup_try_charge(dma_get_dmem_cgroup_region(drm->dev),
> +				     size,
> +				     &dma_obj->base.cgroup_pool_state, NULL);
> +	if (ret)
> +		goto error;

Doesn't that miss cleaning up gem_obj? However, surely you want the 
accounting before the allocation anyway, like in the other cases. 
Otherwise userspace is still able to allocate massive amounts of memory 
and incur some of the associated side-effects of that, it just doesn't 
get to keep said memory for very long :)

Thanks,
Robin.

> +
>   	return dma_obj;
>   
>   error:
>   	kfree(dma_obj);
>   	return ERR_PTR(ret);
> diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
> index c91f87b5242d7a499917eb4aeb6ca8350f856eb3..58987f39ba8718eb768f6261fb0a1fbf16b38549 100644
> --- a/include/drm/drm_device.h
> +++ b/include/drm/drm_device.h
> @@ -1,8 +1,9 @@
>   #ifndef _DRM_DEVICE_H_
>   #define _DRM_DEVICE_H_
>   
> +#include <linux/cgroup_dmem.h>
>   #include <linux/list.h>
>   #include <linux/kref.h>
>   #include <linux/mutex.h>
>   #include <linux/idr.h>
>   
> diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
> index fdae947682cd0b7b06db5e35e120f049a0f30179..95fe8ed48a26204020bb47d6074689829c410465 100644
> --- a/include/drm/drm_gem.h
> +++ b/include/drm/drm_gem.h
> @@ -430,10 +430,12 @@ struct drm_gem_object {
>   	 * @lru:
>   	 *
>   	 * The current LRU list that the GEM object is on.
>   	 */
>   	struct drm_gem_lru *lru;
> +
> +	struct dmem_cgroup_pool_state *cgroup_pool_state;
>   };
>   
>   /**
>    * DRM_GEM_FOPS - Default drm GEM file operations
>    *
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
