Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIoZNBtZ+2n+ZQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:07:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8854DCDDD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 06 May 2026 17:07:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 635F1402EF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 May 2026 15:07:06 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 03AB73F75F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 15:07:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=NcQbZM4P;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 284A919F6;
	Wed,  6 May 2026 08:06:57 -0700 (PDT)
Received: from [10.57.69.49] (unknown [10.57.69.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A5703F7B4;
	Wed,  6 May 2026 08:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1778080022; bh=lBGCayGvLObt4utL3x/Gntz0gbSLpK2Kdmd/cyJzcXs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NcQbZM4Pxnep1uNs1Um11J1hVT4lQXEnAMaOkFxE3oksqybNtjvFrceF/FnFfkn9g
	 jh8S5taoT7IRtqSRtBPfp9E+d0EAnUFMSexiz68GGXUka5oKG0UUBLCj/XQiyWb2wF
	 +NbXo5ZBqYWbUaGmo2Hfzo5bVWF1ITcgQzm7dHLc=
Message-ID: <829b8887-48de-4cfa-8bb2-79db1471bb8d@arm.com>
Date: Wed, 6 May 2026 16:06:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260506-panthor-explicit-reclaim-v1-0-44f82ac147ce@collabora.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20260506-panthor-explicit-reclaim-v1-0-44f82ac147ce@collabora.com>
X-Spamd-Bar: ---
Message-ID-Hash: 4YAMT3R2XGBBYFWO4N2BR4XSBZUB7T6X
X-Message-ID-Hash: 4YAMT3R2XGBBYFWO4N2BR4XSBZUB7T6X
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] Let userspace explicitly trigger memory reclaims
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4YAMT3R2XGBBYFWO4N2BR4XSBZUB7T6X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 5E8854DCDDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.960];
	FROM_NEQ_ENVFROM(0.00)[steven.price@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:mid,collabora.com:email,linaro.org:email]

On 06/05/2026 11:45, Nicolas Frattaroli wrote:
> RAM is not, in fact, cheap. Especially on embedded systems with a low
> amount of memory, but known and well-defined userspace, more explicit
> resource management can lead to better utilisation patterns. As an
> example, a resource manager process on a purpose-built device may wish
> to launch, and then explicitly swap out, memory of processes that are
> kept "warm", to improve perceived startup latency of individual
> full-screen applications without making the kernel figure out the usage
> pattern from observation alone in order to swap out the right pages.

Have you considered memory control groups (memcg) for this purpose?
Imposing a lower limit than currently allocated should trigger reclaim,
so 'background' applications could have the limit lowered and then
restored when moved to the foreground.

> To allow for this explicit control in the context of panthor's GPU
> memory, add two new sysfs knobs. The first, mem_reclaim, runs an
> explicit priv BO reclaim cycle on the TGID written to it.
> 
> The second, mem_claim, does the opposite: it swaps BOs back into active
> memory.

How necessary is this mem_claim for performance? Have you done any
benchmarking of explicitly claiming vs just allowing it to happen
naturally? My gut feeling is that mem_claim should be unnecessary in
most situations, but I'm prepared to be proved wrong.

I'm not saying this series is necessarily the wrong approach - but I
think we need a bit more justification for adding a new API for this.

Thanks,
Steve

> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
> Nicolas Frattaroli (4):
>       drm/panthor: Add freed_sz parameter to reclaim_priv_bos
>       MAINTAINERS: Add sysfs ABI docs to list of panthor files
>       drm/panthor: Add explicit memory reclaim sysfs knob
>       drm/panthor: Add explicit memory claim sysfs knob
> 
>  Documentation/ABI/testing/sysfs-driver-panthor-mem | 34 ++++++++
>  MAINTAINERS                                        |  1 +
>  drivers/gpu/drm/panthor/panthor_drv.c              | 93 ++++++++++++++++++++++
>  drivers/gpu/drm/panthor/panthor_gem.c              |  7 +-
>  drivers/gpu/drm/panthor/panthor_gem.h              |  1 +
>  drivers/gpu/drm/panthor/panthor_mmu.c              | 70 +++++++++++++++-
>  drivers/gpu/drm/panthor/panthor_mmu.h              |  4 +
>  7 files changed, 205 insertions(+), 5 deletions(-)
> ---
> base-commit: 2c4b906cd135bbb44855287d0d0eff0ee0b47afe
> change-id: 20260506-panthor-explicit-reclaim-3dffed028d8c
> 
> Best regards,
> --  
> Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
