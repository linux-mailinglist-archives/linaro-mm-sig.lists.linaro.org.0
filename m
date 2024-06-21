Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A674D9121BB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 12:10:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5173441A1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 10:10:41 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 2314D3EF2D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 10:10:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=rzIJDagQ;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BF01062500;
	Fri, 21 Jun 2024 10:10:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5C6EC2BBFC;
	Fri, 21 Jun 2024 10:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718964638;
	bh=2Yi3+MeiUnusqowgqbAbrIq7kxVvPD51ALy39yD86vo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rzIJDagQIE3R0pU/M5rskebUl+aHYaBSrmr01jiLJIdPDlgvbckNiO3dFm6IhwojN
	 uMYXnAKl9oYrkuIGmRpw0ZFU+FV0iySCwweJFML6f3bixkiRYQpPyjju8F9tiTV7u/
	 pAyJM2ygE3B6wFb3jX+tX34lLsCQIz6ReZ7BiTnbnYm0RDMYx2WgTNy8B4/sX5jR/o
	 QMqbhmXRKn1bA/7juRNzlrGWHRf8fehuu5CMAO2syECbcLSsB+act95iLPDJIIV8qr
	 vqp5zf5A0Pawcg5ctPVk7qVJdwnZxHHviCiFxQhzSVXMdKlqyfyL98vn+RE7A96gjH
	 cBMT08hOiNM6w==
Date: Fri, 21 Jun 2024 15:40:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Message-ID: <ZnVRmsziiGxOVq-4@matsya>
References: <20240620122726.41232-1-paul@crapouillou.net>
 <ZnRW2axOg7gtKzz0@matsya>
 <20240620201150.72c11599@jic23-huawei>
 <ZnVRCY3PGPag0fSj@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZnVRCY3PGPag0fSj@matsya>
X-Rspamd-Queue-Id: 2314D3EF2D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
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
Message-ID-Hash: 73NPNH2QL6THWVB7HI5IUVCY3ESLFXGZ
X-Message-ID-Hash: 73NPNH2QL6THWVB7HI5IUVCY3ESLFXGZ
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Paul Cercueil <paul@crapouillou.net>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 0/7] iio: new DMABUF based API v12
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/73NPNH2QL6THWVB7HI5IUVCY3ESLFXGZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 21-06-24, 15:38, Vinod Koul wrote:
> On 20-06-24, 20:11, Jonathan Cameron wrote:
> > On Thu, 20 Jun 2024 21:50:41 +0530
> > Vinod Koul <vkoul@kernel.org> wrote:
> > 
> > > On 20-06-24, 14:27, Paul Cercueil wrote:
> > > > Hi Jonathan,  
> > > 
> > > Hey Jonathan,
> > > 
> > > Assuming we are fine with this series, how would you like to proceed.
> > > Would you be fine with me picking the dmaengine bits and providing a
> > > signed tag for you to pull?
> > > 
> > 
> > Hi Vinod,
> > 
> > Yes. That will work nicely.
> > From my side it all looks good.
> 
> Great, here it is:
> 
> The following changes since commit 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0:
> 
>   Linux 6.10-rc1 (2024-05-26 15:20:12 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/vkoul/dmaengine.git topic/dma_vec_api

Sorry, sent branch instead of signed tag: here is the signed tag

    git://git.kernel.org/pub/scm/linux/kernel/git/vkoul/dmaengine.git dmaengine_topic_dma_vec

> for you to fetch changes up to 380afccc2a55e8015adae4266e8beff96ab620be:
> 
>   Documentation: dmaengine: Document new dma_vec API (2024-06-21 15:31:57 +0530)
> 
> ----------------------------------------------------------------
> Paul Cercueil (3):
>       dmaengine: Add API function dmaengine_prep_peripheral_dma_vec()
>       dmaengine: dma-axi-dmac: Implement device_prep_peripheral_dma_vec
>       Documentation: dmaengine: Document new dma_vec API
> 
>  Documentation/driver-api/dmaengine/client.rst   |  9 ++++++
>  Documentation/driver-api/dmaengine/provider.rst | 10 +++++++
>  drivers/dma/dma-axi-dmac.c                      | 40 +++++++++++++++++++++++++
>  include/linux/dmaengine.h                       | 33 ++++++++++++++++++++
>  4 files changed, 92 insertions(+)
> 
> 
> Thanks
> -- 
> ~Vinod



-- 
~Vinod
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
