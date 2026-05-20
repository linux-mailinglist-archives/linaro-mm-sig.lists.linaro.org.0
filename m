Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DXxM9DSDWpP3gUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:27:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8423B590CCB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:27:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15B3B4097F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 15:27:11 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 6BFDB4097A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 15:26:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=f+yESunc;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF51A16A3;
	Wed, 20 May 2026 08:26:47 -0700 (PDT)
Received: from [10.57.33.178] (unknown [10.57.33.178])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D7983F632;
	Wed, 20 May 2026 08:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1779290813; bh=eLC/lLOsDoMQiE0jluMI03wSqZDhZ3ckHXClsCDD384=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=f+yESunc5ez5O58FRCGqT9OtLFER+maqB8lJEI5P/bIW7+o4XTXgxrvwrJDG0yj7J
	 w7mkmCSC8xH/fgavdxKgMPkgJkcDq5KeUIyui4SFjiObcJt031Saey/lCZC3GXceOP
	 4l3okcDO3twVQCU+/OLT86+0vUU7YMaM+3/umRHg=
Message-ID: <5bfe47cf-baff-48fb-9a98-0d0bbc085f3b@arm.com>
Date: Wed, 20 May 2026 16:26:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Liviu Dudau <liviu.dudau@arm.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
 <20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
Content-Language: en-GB
From: Steven Price <steven.price@arm.com>
In-Reply-To: <20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
X-Spamd-Bar: ---
Message-ID-Hash: GUZLKXH3GB2VXKKOQYPY73DC75ISXBTL
X-Message-ID-Hash: GUZLKXH3GB2VXKKOQYPY73DC75ISXBTL
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] dma-resv: Define guards for context-less dma_resv locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GUZLKXH3GB2VXKKOQYPY73DC75ISXBTL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	NEURAL_HAM(-0.00)[-0.827];
	FROM_NEQ_ENVFROM(0.00)[steven.price@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[arm.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8423B590CCB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 13/05/2026 17:58, Boris Brezillon wrote:
> When used without a context, dma_resv are no different from regular
> locks. Define guards so we can use the guard-syntactic sugars for
> explicit/implicit scoped locks.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>

Reviewed-by: Steven Price <steven.price@arm.com>

> ---
>  include/linux/dma-resv.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index c5ab6fd9ebe8..e559b1811ca3 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -40,6 +40,7 @@
>  #define _LINUX_RESERVATION_H
>  
>  #include <linux/ww_mutex.h>
> +#include <linux/cleanup.h>
>  #include <linux/dma-fence.h>
>  #include <linux/slab.h>
>  #include <linux/seqlock.h>
> @@ -484,4 +485,8 @@ void dma_resv_set_deadline(struct dma_resv *obj, enum dma_resv_usage usage,
>  bool dma_resv_test_signaled(struct dma_resv *obj, enum dma_resv_usage usage);
>  void dma_resv_describe(struct dma_resv *obj, struct seq_file *seq);
>  
> +DEFINE_GUARD(dma_resv, struct dma_resv *, dma_resv_lock(_T, NULL), dma_resv_unlock(_T));
> +DEFINE_GUARD_COND(dma_resv, _intr, dma_resv_lock_interruptible(_T, NULL), !_RET);
> +DEFINE_GUARD_COND(dma_resv, _try, dma_resv_trylock(_T));
> +
>  #endif /* _LINUX_RESERVATION_H */
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
