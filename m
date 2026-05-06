Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLlUEAdgBGpxHgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:27:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F382D532385
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:27:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1CDC23F91B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:27:02 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 24D993F804
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 10:33:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=dHhX2DDE;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778063599;
	bh=M5o+/YaupNYZyxmeKf2QjXgCKV0qcMjr7DPzv7F8Sv0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=dHhX2DDEb+wKn+xBlaCHlq6jRa1HZj+2R0vY7hAlUA+C+Zoap/YG7alIUX6QF2JuH
	 iGWo984ywb6LITJ7cafk4pbvn2DS/7wUBPMhH0nXlMzQqSjx/ELpj6PTtYAsCFnprr
	 gHgGF7r77Z50yxDgoF7V15ATETV17WYz10R+IypMMoEHxmYpyVhUW9244GtR4aZMrr
	 px8CHnxYwp40tbLvffOrKczuvdf6qie1oISR6ZEtvS5p0MbMQKQPIaTW3bZYPYkoSG
	 N1SjfcJWB9w5YQr31HrOSqFKu4oT6y4u7ppxfzDwvm3pdxYZGHcoyntDpuvIYjP6BP
	 Jn9toahZwrSNw==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 64F3617E1227;
	Wed,  6 May 2026 12:33:18 +0200 (CEST)
Date: Wed, 6 May 2026 12:33:14 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ketil Johnsen <ketil.johnsen@arm.com>
Message-ID: <20260506123314.0f1c01cb@fedora>
In-Reply-To: <20260505140516.1372388-6-ketil.johnsen@arm.com>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
	<20260505140516.1372388-6-ketil.johnsen@arm.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AD4FFI5PCODU44JXJZOO5N4XCS57CHE6
X-Message-ID-Hash: AD4FFI5PCODU44JXJZOO5N4XCS57CHE6
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:43 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, l
 inux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/8] drm/panthor: Minor scheduler refactoring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AD4FFI5PCODU44JXJZOO5N4XCS57CHE6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: F382D532385
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[168];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.583];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,arm.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

On Tue,  5 May 2026 16:05:11 +0200
Ketil Johnsen <ketil.johnsen@arm.com> wrote:

> From: Florent Tomasin <florent.tomasin@arm.com>
> 
> Refactor parts of the group scheduling logic into new helper functions.
> This will simplify addition of the protected mode feature.
> 
> Remove redundant assignments of csg_slot.
> 
> Signed-off-by: Florent Tomasin <florent.tomasin@arm.com>
> Co-developed-by: Ketil Johnsen <ketil.johnsen@arm.com>
> Signed-off-by: Ketil Johnsen <ketil.johnsen@arm.com>
> ---
>  drivers/gpu/drm/panthor/panthor_sched.c | 135 +++++++++++++++---------
>  1 file changed, 86 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panthor/panthor_sched.c b/drivers/gpu/drm/panthor/panthor_sched.c
> index 5ee386338005c..987072bd867c4 100644
> --- a/drivers/gpu/drm/panthor/panthor_sched.c
> +++ b/drivers/gpu/drm/panthor/panthor_sched.c
> @@ -1934,6 +1934,12 @@ static void csgs_upd_ctx_init(struct panthor_csg_slots_upd_ctx *ctx)
>  	memset(ctx, 0, sizeof(*ctx));
>  }
>  
> +static void csgs_upd_ctx_ring_doorbell(struct panthor_csg_slots_upd_ctx *ctx,
> +				       u32 csg_id)
> +{
> +	ctx->update_mask |= BIT(csg_id);
> +}
> +
>  static void csgs_upd_ctx_queue_reqs(struct panthor_device *ptdev,
>  				    struct panthor_csg_slots_upd_ctx *ctx,
>  				    u32 csg_id, u32 value, u32 mask)
> @@ -1944,7 +1950,8 @@ static void csgs_upd_ctx_queue_reqs(struct panthor_device *ptdev,
>  
>  	ctx->requests[csg_id].value = (ctx->requests[csg_id].value & ~mask) | (value & mask);
>  	ctx->requests[csg_id].mask |= mask;
> -	ctx->update_mask |= BIT(csg_id);
> +
> +	csgs_upd_ctx_ring_doorbell(ctx, csg_id);
>  }
>  
>  static int csgs_upd_ctx_apply_locked(struct panthor_device *ptdev,
> @@ -1961,8 +1968,12 @@ static int csgs_upd_ctx_apply_locked(struct panthor_device *ptdev,
>  	while (update_slots) {
>  		struct panthor_fw_csg_iface *csg_iface;
>  		u32 csg_id = ffs(update_slots) - 1;
> +		u32 req_mask = ctx->requests[csg_id].mask;
>  
>  		update_slots &= ~BIT(csg_id);
> +		if (!req_mask)
> +			continue;

Looks like something that should be in patch 7, where you update the
doorbell_req register, and then call csgs_upd_ctx_ring_doorbell(),
meaning req_mask can be zero. The other option would be to teach
panthor_csg_slots_upd_ctx about CS doorbells, and let
csgs_upd_ctx_apply_locked() toggle the doorbell_req.

> +
>  		csg_iface = panthor_fw_get_csg_iface(ptdev, csg_id);
>  		panthor_fw_update_reqs(csg_iface, req,
>  				       ctx->requests[csg_id].value,
> @@ -1979,6 +1990,9 @@ static int csgs_upd_ctx_apply_locked(struct panthor_device *ptdev,
>  		int ret;
>  
>  		update_slots &= ~BIT(csg_id);
> +		if (!req_mask)
> +			continue;
> +
>  		csg_iface = panthor_fw_get_csg_iface(ptdev, csg_id);
>  
>  		ret = panthor_fw_csg_wait_acks(ptdev, csg_id, req_mask, &acked, 100);
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
