Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF22181B519
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 12:40:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDFC843D13
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 11:40:56 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 644573F39E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Dec 2023 11:40:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=EJjKfMIv;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 09C0A618EA;
	Thu, 21 Dec 2023 11:40:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7491AC433C7;
	Thu, 21 Dec 2023 11:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703158835;
	bh=0XVAbyt5Q2EdtCdnVgot+orUzg22qdyuWONYOCaOdvc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=EJjKfMIv+lEiqo5m5vpW/rQ70EOUNXbX2Lyc3QilwQXwY+cjKMEek8oJD0ypJ9pzZ
	 0+YC8yJmimS0t+HDpBcAx65cpJ6QC2Y0GPWs+wRAYoPfWHPunk1hf+iQ+CvS1J5ey6
	 hiIz/ea1PaZcIIXaXsIxFMuamU2vuqUISJ8dVXqvlGkjnByx/ajgecqSeOUokKCt2E
	 TP2BmAsJIaIoW0Ld47zRAGl/pZ135pFhycy7N7bAS8AcruycCyRevpTOLA/1bTF0EF
	 y97Yz2wffZPtPoqvXe2MLE89FsxWzie35kqvUH/9SeNTYQnwt/giyfHkAz5vG23+mO
	 mzKPhMMX8Skig==
Date: Thu, 21 Dec 2023 11:40:20 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20231221114020.2d1e6364@jic23-huawei>
In-Reply-To: <20231219175009.65482-4-paul@crapouillou.net>
References: <20231219175009.65482-1-paul@crapouillou.net>
	<20231219175009.65482-4-paul@crapouillou.net>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.99 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
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
X-Rspamd-Queue-Id: 644573F39E
X-Spamd-Bar: -
Message-ID-Hash: M7S6CRLAIKBIVY7FTRXIPNZUE2KJQGBR
X-Message-ID-Hash: M7S6CRLAIKBIVY7FTRXIPNZUE2KJQGBR
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 3/8] dmaengine: Add API function dmaengine_prep_slave_dma_vec()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M7S6CRLAIKBIVY7FTRXIPNZUE2KJQGBR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 19 Dec 2023 18:50:04 +0100
Paul Cercueil <paul@crapouillou.net> wrote:

> This function can be used to initiate a scatter-gather DMA transfer,
> where the address and size of each segment is located in one entry of
> the dma_vec array.
> 
> The major difference with dmaengine_prep_slave_sg() is that it supports
> specifying the lengths of each DMA transfer; as trying to override the
> length of the transfer with dmaengine_prep_slave_sg() is a very tedious
> process. The introduction of a new API function is also justified by the
> fact that scatterlists are on their way out.
> 
> Note that dmaengine_prep_interleaved_dma() is not helpful either in that
> case, as it assumes that the address of each segment will be higher than
> the one of the previous segment, which we just cannot guarantee in case
> of a scatter-gather transfer.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>

This and the next patch look fine to me as clearly simplify things for
our usecases, but they are really something for the dmaengine maintainers
to comment on.

Jonathan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
