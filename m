Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFLLCknLBWrvbQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2026 15:16:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7055422C6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2026 15:16:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E7804030E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2026 13:16:54 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id D41CE3F75A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 13:16:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=R5tH0WKB;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD0F5244B;
	Thu, 14 May 2026 06:16:38 -0700 (PDT)
Received: from [10.1.37.28] (e122027.cambridge.arm.com [10.1.37.28])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C8CB3F836;
	Thu, 14 May 2026 06:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1778764603; bh=XlQXNhbEfTr01dBzOIt2YI+/ViFio1iF/QMxPWRbPzE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=R5tH0WKBoMTBO5UI7SJd/dQs8FJ7FF+9n8d3mFdgWH+hAbV3psXfthFEhdBOyDXLq
	 OeV/Dc7lcuRsC2vEiRYWvm42tmeVCttsAlUj0J9Z2npAGimsSw01JbTJ8bWZTPZLmk
	 gumAnP0vz7GxVlRoTkqGl6RoGppepG5O3T5Ti6q8=
Message-ID: <5ab2d07c-74a4-4a2c-b145-6ed7b0060944@arm.com>
Date: Thu, 14 May 2026 14:16:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Liviu Dudau <liviu.dudau@arm.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
 <20260513-panthor-guard-refactor-v1-1-f2d8c15a97ce@collabora.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20260513-panthor-guard-refactor-v1-1-f2d8c15a97ce@collabora.com>
X-Spamd-Bar: --
Message-ID-Hash: 2GPTOVSDF44EJLW7LVME3BRW3EJBAA6A
X-Message-ID-Hash: 2GPTOVSDF44EJLW7LVME3BRW3EJBAA6A
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] drm/panthor: Driver-wide xxx_[un]lock -> [scoped_]guard replacement
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2GPTOVSDF44EJLW7LVME3BRW3EJBAA6A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9D7055422C6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[steven.price@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.479];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

On 13/05/2026 17:58, Boris Brezillon wrote:
> Right now panthor is mixed bag of manual locks and guards. Let's
> make that more consitent and thus encourage new submissions to go
> for guards.

I'm fine with encouraging guards for future code - but I'm a little wary
of a big change like this - it's hard to review it and check that
everything works the same. And it's a little dubious that the mechanical
refactoring produces more readable code in some cases.

That said I asked my friendly AI bot...

[...]

> @@ -3142,48 +3126,44 @@ panthor_mmu_reclaim_priv_bos(struct panthor_device *ptdev,
>  	LIST_HEAD(remaining_vms);
>  	LIST_HEAD(vms);
>  
> -	mutex_lock(&ptdev->reclaim.lock);
> -	list_splice_init(&ptdev->reclaim.vms, &vms);
> +	scoped_guard(mutex, &ptdev->reclaim.lock)
> +		list_splice_init(&ptdev->reclaim.vms, &vms);
>  
>  	while (freed < nr_to_scan) {
>  		struct panthor_vm *vm;
>  
> -		vm = list_first_entry_or_null(&vms, typeof(*vm),
> -					      reclaim.lru_node);
> -		if (!vm)
> -			break;
> -
> -		if (!kref_get_unless_zero(&vm->base.kref)) {
> -			list_del_init(&vm->reclaim.lru_node);
> -			continue;
> +		scoped_guard(mutex, &ptdev->reclaim.lock) {
> +			vm = list_first_entry_or_null(&vms, typeof(*vm),
> +						      reclaim.lru_node);
> +			if (vm && !kref_get_unless_zero(&vm->base.kref)) {
> +				list_del_init(&vm->reclaim.lru_node);
> +				vm = NULL;
> +			}
>  		}
>  
> -		mutex_unlock(&ptdev->reclaim.lock);
> +		if (!vm)
> +			break;

... and it said the above has changed behaviour.

In the !kref_get_unless_zero() case you now assign vm = NULL which then
leads to the 'break' case above. Previously we 'continue'd.

Thanks,
Steve
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
