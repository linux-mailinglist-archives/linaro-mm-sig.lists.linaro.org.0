Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2KibH7LdpmkEYAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 14:10:10 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0943F1EFEFA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 14:10:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DEB7E3F69B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Mar 2026 13:10:08 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 6F6333F69B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 13:10:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="mXOwY/0l";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0488C6013E;
	Tue,  3 Mar 2026 13:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55358C116C6;
	Tue,  3 Mar 2026 13:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772543405;
	bh=HUeuT9h9PdBSYE/DGwyF8wqKXoc/6Qk3eot9qc8dq1Q=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=mXOwY/0lplsiNBAMoUcSfq5Gwic6Za+XuOA1oLsfQdiFpSsLDlzGt1nefY+6wghA0
	 VLzRclPrmUqz+5UTEojQIBZR5pkNzIVEBrIwRYPzyrZlHmmIZLreMSCjQQ4O55K6rU
	 vPoeV6OLrkRS1+bVJBZty9hADMJKUSsS3HWkwun7LNwoavmW/L8Lhl21Msx0l6YioM
	 V2fnlfvRGB45l/9rfS+tQJ67oQkwcgghmwyRGQ5RT1vBrDqGvzTNUMf2Imw7xgYGTZ
	 IcWpRccSLY0JTfuwlir3UupYNA3SUZHb9tWuY7iozVab7TzcK7ND7cMR74CLuB0K1J
	 D+2LRd2meA+1w==
Message-ID: <ec1b4d750ae4d87d84d8a751400f468a@kernel.org>
Date: Tue, 03 Mar 2026 13:10:03 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Albert Esteve" <aesteve@redhat.com>
In-Reply-To: <20260303-b4-dmabuf-heap-coherent-rmem-v2-1-65a4653b3378@redhat.com>
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-1-65a4653b3378@redhat.com>
X-Spamd-Bar: -
Message-ID-Hash: U37DSAFXWI7TFE22UVQ4ZDOXRFGGHZNJ
X-Message-ID-Hash: U37DSAFXWI7TFE22UVQ4ZDOXRFGGHZNJ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, echanude@redhat.com, iommu@lists.linux.dev, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, mripard@redhat.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, =?utf-8?b?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, John Stultz <john.stultz@linaro.org>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Saravana Kannan <saravanak@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/6] dma-buf: dma-heap: Keep track of the heap device struct
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U37DSAFXWI7TFE22UVQ4ZDOXRFGGHZNJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0943F1EFEFA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Action: no action

On Tue, 3 Mar 2026 13:33:44 +0100, Albert Esteve wrote:
> From: John Stultz <john.stultz@linaro.org>
> 
> Keep track of the heap device struct.
> 
> This will be useful for special DMA allocations
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
