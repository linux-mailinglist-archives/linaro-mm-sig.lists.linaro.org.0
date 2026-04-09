Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONYEM+hk5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B88431B93
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8121740501
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:39:51 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id E2CA43F90B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2026 12:38:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=M2IAl2WF;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of andi.shyti@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=andi.shyti@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4B4DE441D8;
	Thu,  9 Apr 2026 12:38:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 931EFC19424;
	Thu,  9 Apr 2026 12:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775738292;
	bh=d1+Vn1+nmxQUEpEEZem6yPloSUx3IAA5s3+3Sci+Ir0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M2IAl2WFlmirhF6vkuPjE6CbkOOQke4RMNkNasosllkTXMB0eoDY8D6cOPPPKsWPK
	 AlIDQ+RyMTqhs61avp173c3TxXaIQw4KEsnIs0qR+vbKe2zLOWWdhOd+3vjRbL1cXc
	 WKAT2RYWanJA6tX6O7yjwINYgQDeE42lfWvnrItEV3Pl2JCq9Z6quKO0RacCoDhanK
	 JRZQOtpaT4Icsk3goBrvmhsuJCKPiPpLO4qMMbIkgtVqkncIlemTDiEBFg5Cg4koWr
	 WctFfznlq21DLOPmSmFsTvJ+iNK6XMaJhu343AZCN3jKr12yPD4ZSliNVG3Njwoc9N
	 eskYmSGFg+x/A==
Date: Thu, 9 Apr 2026 14:38:07 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <adedTCplYHeJPVKP@zenone.zhora.eu>
References: <20260408122437.1364-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260408122437.1364-1-christian.koenig@amd.com>
X-Spamd-Bar: --
X-MailFrom: andi.shyti@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6ZINYYVLGLT3PHDF7NAOLGCNFOSBRUIU
X-Message-ID-Hash: 6ZINYYVLGLT3PHDF7NAOLGCNFOSBRUIU
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:58 +0000
CC: janusz.krzysztofik@intel.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, gaoxiang17@xiaomi.com, sumit.semwal@linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix order of trace and fput
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6ZINYYVLGLT3PHDF7NAOLGCNFOSBRUIU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[269];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.430];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,zenone.zhora.eu:mid]
X-Rspamd-Queue-Id: 71B88431B93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Christian,

> @@ -845,9 +845,8 @@ void dma_buf_put(struct dma_buf *dmabuf)
>  	if (WARN_ON(!dmabuf || !dmabuf->file))
>  		return;
>  
> -	fput(dmabuf->file);
> -
>  	DMA_BUF_TRACE(trace_dma_buf_put, dmabuf);
> +	fput(dmabuf->file);

funny, I just found out I sent the exact same patch, just few
minutes later :-) [*]

Andi

>  }

[*] https://lore.kernel.org/all/20260408123916.2604101-2-andi.shyti@kernel.org/
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
