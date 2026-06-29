Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ar6pG3VuVmqa5QAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:14:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC437573D9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:14:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=collabora.com header.s=mail header.b=Wja8IEen;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=collabora.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11DD7401D8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:14:28 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id B8C404049D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 08:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782722476;
	bh=tmVYMQLt6w66eKgeMnRYtDFyZlz9JTeXyaU4pBlZwO4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Wja8IEenS+49sHofjDn58Z2mmMXgQ0UGP4Xy+VAT6HtfYogNC3vjzjVSW6w+ubSFD
	 X/FOKiHUU8JM5qyFEA8ylxQANgiPQJdBGVld6lxNz652ueAMTtUhexR5HT7HbR9cu0
	 LeBAAXsXcUC5tAETWzVc6ygHBav2izO7OmwlXYn4DFP2c+xhoMPqttDv2yim2uQOtk
	 vezEbp6jWQOx4C8aZXuCJxxHWZDaLYT0s/vl9EPzv9AGhffYYo53fyvp4h4a3Y/2L7
	 B0TKpWTdG/Xh5T5HE4pTbDdod3muymIr1S7Ae/i9QqLOKZYCksQ1RMDLWF6JA6MYvA
	 a/zHXOWnc8PJQ==
Received: from fedora-2.home (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B45E217E0246;
	Mon, 29 Jun 2026 10:41:15 +0200 (CEST)
Date: Mon, 29 Jun 2026 10:41:12 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Philipp Stanner <phasta@kernel.org>
Message-ID: <20260629104112.72d58bf5@fedora-2.home>
In-Reply-To: <20260629075636.2513214-2-phasta@kernel.org>
References: <20260629075636.2513214-2-phasta@kernel.org>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U2IO7RHOHSD3ZKSIASXTYQUXEC73UMOF
X-Message-ID-Hash: U2IO7RHOHSD3ZKSIASXTYQUXEC73UMOF
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:13:22 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, =?UTF-8?B?QW5kcsOp?= Draszik <andre.draszik@linaro.org>, Danilo Krummrich <dakr@kernel.org>, Gary Guo <gary@garyguo.net>, "Paul E . McKenney" <paulmck@kernel.org>, Boqun Feng <boqun@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: dma-fence: Fix potential NULL pointer dereference
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U2IO7RHOHSD3ZKSIASXTYQUXEC73UMOF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[368];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:andre.draszik@linaro.org,m:dakr@kernel.org,m:gary@garyguo.net,m:paulmck@kernel.org,m:boqun@kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,fedora-2.home:mid,collabora.com:email,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EEC437573D9

On Mon, 29 Jun 2026 09:56:37 +0200
Philipp Stanner <phasta@kernel.org> wrote:

> The commit mentioned in the fixes tag below introduced a mechanism
> through which fence producers can fully decouple from fence consumers.
> This, desirable, mechanism is based on the fence's signaled-bit as the
> "decoupling point".
> 
> A sophisticated interaction between RCU and atomic instructions attempts
> to ensure that fence consumers can still interact with fence producers
> through the dma_fence_ops (callback pointers into the producer).
> 
> This is the desired behavior: to check for decoupling, the signaled-bit
> is first checked. If it's not yet signaled, RCU ensures that the ops
> pointer cannot yet be NULL.
> 
> Hereby, dma_fence_signal_timestamp_locked() first sets the signaled-bit,
> and then sets the ops pointer to NULL. Readers first load the ops
> pointer, and then check through the signaled-bit whether the pointer can
> legally be accessed.
> 
> These set and load operations could occur out of order on weakly ordered
> platforms. This problem can be solved very elegantly by using the ops
> pointer itself as the synchronization point. The pointer is either NULL,
> or cannot become NULL while it is being used thanks to RCU.
> 
> Replace the signaled-bit check in dma_fence_timeline_name() and
> dma_fence_driver_name().
> 
> Cc: stable@vger.kernel.org
> Fixes: f4cc3ab824d6 ("dma-buf: protected fence ops by RCU v8")
> Signed-off-by: Philipp Stanner <phasta@kernel.org>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
> Changes since v1:
>   - Use ops pointer instead of memory barriers. (Christian)
>   - Rephrase commit message.
> ---
>  drivers/dma-buf/dma-fence.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index c7ea1e75d38a..0a025dfdf131 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -1170,7 +1170,7 @@ const char __rcu *dma_fence_driver_name(struct dma_fence *fence)
>  
>  	/* RCU protection is required for safe access to returned string */
>  	ops = rcu_dereference(fence->ops);
> -	if (!dma_fence_test_signaled_flag(fence))
> +	if (ops)
>  		return (const char __rcu *)ops->get_driver_name(fence);
>  	else
>  		return (const char __rcu *)"detached-driver";
> @@ -1203,7 +1203,7 @@ const char __rcu *dma_fence_timeline_name(struct dma_fence *fence)
>  
>  	/* RCU protection is required for safe access to returned string */
>  	ops = rcu_dereference(fence->ops);
> -	if (!dma_fence_test_signaled_flag(fence))
> +	if (ops)
>  		return (const char __rcu *)ops->get_driver_name(fence);
>  	else
>  		return (const char __rcu *)"signaled-timeline";
> 
> base-commit: cdeb2ccd993ed8647adbbda2c3b103aa717fd6f7

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
