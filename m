Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF49991D125
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 30 Jun 2024 12:32:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58E7D43FB7
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 30 Jun 2024 10:32:17 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id EA3943F2F7
	for <linaro-mm-sig@lists.linaro.org>; Sun, 30 Jun 2024 10:32:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=mraqjYxf;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id ABBC6CE0A12;
	Sun, 30 Jun 2024 10:32:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04529C2BD10;
	Sun, 30 Jun 2024 10:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719743531;
	bh=gh1JxaEepJgrDqQlb2ujT5dF1NO1oXJ9/fTSjRKekGg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=mraqjYxfRo+Upk60m5tv7fcpDsMVvTc64ODcth8JmTSp4NYpX19uuUc5hWyqNOGMj
	 fkYy89YIFOvkD1cFbWaeIOEYHDVhhycmnDSIp6zXfAHBOQ+h6yE2/hHRalQJgcOS96
	 hFbu2D/uiP18YiuUB597J/1hjNtJwbbLU0pw4s8ZfsR4f629iVgrC1gh4jDuDsvw7N
	 H5sUsVzuFKPiqlHe4gbDnJZ8BULVaa1mRymkU0cZri2M/KMmio7Bj7iurnpOnPa9Q+
	 7orEYL8kLkhyhf6MfZZUoilaizxXae6FwjVHkESPZMVvkLldwuYYofe1YnN6ATV6Ff
	 lIi9PObMJJP7w==
Date: Sun, 30 Jun 2024 11:32:03 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Message-ID: <20240630113203.719d1daf@jic23-huawei>
In-Reply-To: <171896438479.273533.11227587889239181030.b4-ty@kernel.org>
References: <20240620122726.41232-1-paul@crapouillou.net>
	<171896438479.273533.11227587889239181030.b4-ty@kernel.org>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: EA3943F2F7
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PQZSLBL23F3BQTYJD35VDRSDGVYS5IG2
X-Message-ID-Hash: PQZSLBL23F3BQTYJD35VDRSDGVYS5IG2
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Paul Cercueil <paul@crapouillou.net>, Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v12 0/7] iio: new DMABUF based API v12
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PQZSLBL23F3BQTYJD35VDRSDGVYS5IG2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 21 Jun 2024 15:36:24 +0530
Vinod Koul <vkoul@kernel.org> wrote:

> On Thu, 20 Jun 2024 14:27:19 +0200, Paul Cercueil wrote:
> > Here's the v12 of my patchset that introduces DMABUF support to IIO.
> > 
> > Apart from a small documentation fix, it reverts to using
> > mutex_lock/mutex_unlock in one particular place, which used cleanup
> > GOTOs (which don't play well with scope-managed cleanups).
> > 
> > Changelog:
> > - [3/7]:
> >     - Revert to mutex_lock/mutex_unlock in iio_buffer_attach_dmabuf(),
> >       as it uses cleanup GOTOs
> > - [6/7]:
> >     - "obtained using..." -> "which can be obtained using..."
> > 
> > [...]  
> 
> Applied, thanks!
> 
> [1/7] dmaengine: Add API function dmaengine_prep_peripheral_dma_vec()
>       commit: 5878853fc9389e7d0988d4b465a415cf96fd14fa
> [2/7] dmaengine: dma-axi-dmac: Implement device_prep_peripheral_dma_vec
>       commit: 74609e5686701ed8e8adc3082d15f009e327286d
> [7/7] Documentation: dmaengine: Document new dma_vec API
>       commit: 380afccc2a55e8015adae4266e8beff96ab620be

Merged Vinod's topic branch and applied, 3,4,5,6 to the togreg
branch of iio.git.  Thanks all for the hard work on this one.
Great to finally get there!

Jonathan

p.s. Last few weeks were about some complexities in the IIO tree
unrelated to this set.

> 
> Best regards,

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
