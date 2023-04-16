Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 185F06F55AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:13:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23AF03F6F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:13:41 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id CED183EBA5
	for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Apr 2023 14:24:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="Wt/oOFIO";
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6856E61B79;
	Sun, 16 Apr 2023 14:24:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5246C433EF;
	Sun, 16 Apr 2023 14:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681655062;
	bh=DRmjqzj0vppDmwa+O86tDrM1feeK6o2CP6HsH/iSM5g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Wt/oOFIOb7ClzTlXeE51KP9dzjzQfnpaiY0WTAv4NobCq54yPwX5qV/qjjK/b0RrA
	 cpavE5HEA9pj+xEdppDeLnD/JC67azwEuGpvp6wlEFOrandFtCm1FLhthsjnoARCsp
	 XbNcXBC/3+tzrgybHGZg2B/Z5GdRPXfgWYT6g5oal0L863CtHpHi3Z6ZUIdoWsrG6H
	 fvHFyV6Zl1d/K/RanvVcGEJV8WMozjP5AR1oxJ/JIAkgq8r2+bL3UVAVQGJocbYUZU
	 2RxLvisVOdPSoWac6/WZtNAFJhHG2iDLOUYXsZ6B59lSpqZLjEIBxDfmVr42E/nhhT
	 3e1p5nnM2kGlA==
Date: Sun, 16 Apr 2023 15:24:22 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20230416152422.477ecf67@jic23-huawei>
In-Reply-To: <20230403154800.215924-4-paul@crapouillou.net>
References: <20230403154800.215924-1-paul@crapouillou.net>
	<20230403154800.215924-4-paul@crapouillou.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[139.178.84.217:from,52.25.139.140:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[metafoo.de,kernel.org,analog.com,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	URIBL_BLOCKED(0.00)[dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CED183EBA5
X-Spamd-Bar: ---
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OBBIG2T4H264DLH443WCJKF7TUWKUI77
X-Message-ID-Hash: OBBIG2T4H264DLH443WCJKF7TUWKUI77
X-Mailman-Approved-At: Wed, 03 May 2023 10:13:29 +0000
CC: Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 03/11] iio: buffer-dma: Get rid of outgoing queue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OBBIG2T4H264DLH443WCJKF7TUWKUI77/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon,  3 Apr 2023 17:47:52 +0200
Paul Cercueil <paul@crapouillou.net> wrote:

> The buffer-dma code was using two queues, incoming and outgoing, to
> manage the state of the blocks in use.
> 
> While this totally works, it adds some complexity to the code,
> especially since the code only manages 2 blocks. It is much easier to
> just check each block's state manually, and keep a counter for the next
> block to dequeue.
> 
> Since the new DMABUF based API wouldn't use the outgoing queue anyway,
> getting rid of it now makes the upcoming changes simpler.
> 
> With this change, the IIO_BLOCK_STATE_DEQUEUED is now useless, and can
> be removed.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> 
> ---
> v2: - Only remove the outgoing queue, and keep the incoming queue, as we
>       want the buffer to start streaming data as soon as it is enabled.
>     - Remove IIO_BLOCK_STATE_DEQUEUED, since it is now functionally the
>       same as IIO_BLOCK_STATE_DONE.

I'm not that familiar with this code, but with my understanding this makes
sense.   I think it is independent of the earlier patches and is a useful
change in it's own right.  As such, does it make sense to pick this up
ahead of the rest of the series? I'm assuming that discussion on the
rest will take a while.  No great rush as too late for the coming merge
window anyway.

Thanks,

Jonathan

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
