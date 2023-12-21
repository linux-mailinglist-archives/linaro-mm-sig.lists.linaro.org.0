Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE19E81B4EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 12:29:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FA6F43D14
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 11:29:19 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C64313F39E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Dec 2023 11:28:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XzDgUtMI;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4799C618E2;
	Thu, 21 Dec 2023 11:28:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4D01C433C8;
	Thu, 21 Dec 2023 11:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703158138;
	bh=bn5TsZbZFAMzqugkbLLCAXDLCBCCddsOuTyKJNmW4j0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XzDgUtMIiyHvWufYrnuorriuX6ec0aKd75XvN4bvVRUU8h7RRq//v3hQxVZeIn26t
	 DUfgKuHgBaG/HJamZr9h39OxZ2rPlqxn7ZQqwV8EbzYwFCvU6c/vR6aRYx1pngrWtm
	 beBI35fawoXFmrakG6xJcSGxsszgy8mcmHJ2+25ZF+yJ7maIwhGu3MA2UGW3o0nQpm
	 aLdOCtkcZ/FwpFUOsjWQBplirFA+rE0UXR7Z3lfqSiubbMx7FCsZ+vgu9IiqlwgUST
	 YXW3Wg0+Xnf+lU3O0oRcaCI6LSrpv75aXN2tKalbPE6Aoxqmo9R9hGBBcGr+Wbymf7
	 sCwalRVuuimSg==
Date: Thu, 21 Dec 2023 11:28:41 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20231221112841.1de85482@jic23-huawei>
In-Reply-To: <20231219175009.65482-2-paul@crapouillou.net>
References: <20231219175009.65482-1-paul@crapouillou.net>
	<20231219175009.65482-2-paul@crapouillou.net>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.98 / 15.00];
	BAYES_HAM(-2.98)[99.92%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[metafoo.de,linaro.org,amd.com,kernel.org,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,analog.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C64313F39E
X-Spamd-Bar: -
Message-ID-Hash: NKXI7ZH4AAVMN3ZOBLKKU2RBEFW3C4MU
X-Message-ID-Hash: NKXI7ZH4AAVMN3ZOBLKKU2RBEFW3C4MU
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/8] iio: buffer-dma: Get rid of outgoing queue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NKXI7ZH4AAVMN3ZOBLKKU2RBEFW3C4MU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 19 Dec 2023 18:50:02 +0100
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

I've applied this in interests in reducing the outstanding set of patches
and because it stands fine as on its own.

Applied to the togreg branch of iio.git and pushed out as testing.
Note this is now almost certainly 6.9 material given timing.

Jonathan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
