Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOqKOE0B4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE5B410E74
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:33:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42CF140A77
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:33:32 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 953BD3F76E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 13:37:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CeKkfLKK;
	spf=pass (lists.linaro.org: domain of andi.shyti@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=andi.shyti@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D198360141;
	Thu, 27 Nov 2025 13:37:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83865C4CEF8;
	Thu, 27 Nov 2025 13:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764250642;
	bh=I4PdYzRN+MTqsZDHBCDDkw07FlKUWJA4d9AsRMAWLio=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CeKkfLKKq6G2UJMAEwwq2lg7VIxz8nzuVel8G7pTAuyH6g3qCqjQ8JbVJCTgKB5Am
	 NCMVptKu378LkF7MM+L9dGF3qY6Pju+zikBlcD/BNdZgkdfPZcfhSndlNaMDRlZfcd
	 cIGOWkJaxaMGt6jRIXFnZd6JLo27vPLyU9BlbPlkZ/1fRNDi0nsotRreRw8EWTltxZ
	 WRA5KtbghLMHzz8Q81GXthn0Ikzfp+vFn20tyCC121ThWqzKt3GgD3JdXjuE4s3EAM
	 JkIKVKDFSw2nhbiITA524q66FbPbAuvlxU+b07DAfBkefVMCGnTnrhW26qvWO3Vhme
	 0YABbqiV2F/nA==
Date: Thu, 27 Nov 2025 14:37:17 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <q2kvwmnxomqlcx7zgvlvyhupduytfubcu5vghuf6ztrdaq55pb@gq4tg7qughun>
References: <20251126131914.149445-2-phasta@kernel.org>
 <20251126131914.149445-5-phasta@kernel.org>
 <nrrk4kug6a42fztx7ryuz5bk6uy7roiszjhiivlvtrw3uvunps@wn44moyetzff>
 <aSeTsINKklqqJyIs@lstrano-desk.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aSeTsINKklqqJyIs@lstrano-desk.jf.intel.com>
X-Spamd-Bar: ---
X-MailFrom: andi.shyti@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BUJN4FOPM5LG4DTPIGAQJVLGWZMQDN7N
X-Message-ID-Hash: BUJN4FOPM5LG4DTPIGAQJVLGWZMQDN7N
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:17 +0000
CC: Philipp Stanner <phasta@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedeskto
 p.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/6] drm/gpu/xe: Ignore dma_fenc_signal() return code
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BUJN4FOPM5LG4DTPIGAQJVLGWZMQDN7N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[3361];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,suse.de,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.freedeskto];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.211];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7EE5B410E74
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Matt,

On Wed, Nov 26, 2025 at 03:56:32PM -0800, Matthew Brost wrote:
> On Wed, Nov 26, 2025 at 11:56:57PM +0100, Andi Shyti wrote:
> > > @@ -85,7 +85,6 @@ void xe_hw_fence_irq_finish(struct xe_hw_fence_irq *irq)
> > > @@ -93,9 +92,9 @@ void xe_hw_fence_irq_finish(struct xe_hw_fence_irq *irq)
> > >  		spin_lock_irqsave(&irq->lock, flags);
> > >  		list_for_each_entry_safe(fence, next, &irq->pending, irq_link) {
> > >  			list_del_init(&fence->irq_link);
> > > -			err = dma_fence_signal_locked(&fence->dma);
> > 
> > why don't we do
> > 
> > XE_WARN_ON(dma_fence_signal_locked(..))
> > 
> 
> IIRC the above statement can compile out. So the patch looks correct to me.

you have defined XE_WARN_ON as WARN_ON that should always
evaluate the content and, depending on the configuration, it
prints the logs or not.

What I don't like from this patch is that we end up checking
twice for the DMA_FENCE_FLAG_SIGNALED_BIT bit.

Thanks,
Andi
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
