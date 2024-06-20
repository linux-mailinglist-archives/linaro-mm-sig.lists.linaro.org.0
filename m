Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E56179111EB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 21:14:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0A0344796
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 19:14:36 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 139B83EF2D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jun 2024 19:14:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ZYUPkiBR;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C7EB8CE28C0;
	Thu, 20 Jun 2024 19:14:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9539AC4AF10;
	Thu, 20 Jun 2024 19:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718910872;
	bh=bjhFvNWi5TsvQnfmtqUqpLdLlMq0YUpUWHuLtvckbn4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ZYUPkiBRn0UHJaSaMjoznC1HWpr24AlPSJPIZygqUCrs1sksNt6azm8wGush54FXl
	 MmlS8JJP2e+UmdBUqrKYrQdaL05dTbjCcDloZ6h7gK08fEnVCVbLuzVabF8Nw5Zcyl
	 tWJGZde5J5KZkIEEPIHKOdpNkfvz2Vz4ncziWv4FfWDVrzfuwiSfd3MR3RprjWR7VI
	 iMhGn/vljPQvtF0zSl+s5aV+hXn1DMFKvP2PO+DyAL19sI0UUXMLq68be52bo8FKWI
	 ms0zxNnhUxdAhcyv8XD3lNzT8tgZzWG3R2RfF+EfzuyuYoUyW02Fj5XD0z2JHWuNeI
	 I2OEpzrkVVe7Q==
Date: Thu, 20 Jun 2024 20:14:25 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Message-ID: <20240620201425.1cbcb5f1@jic23-huawei>
In-Reply-To: <20240620201150.72c11599@jic23-huawei>
References: <20240620122726.41232-1-paul@crapouillou.net>
	<ZnRW2axOg7gtKzz0@matsya>
	<20240620201150.72c11599@jic23-huawei>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: 139B83EF2D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TIHMWJI3SLLTQQMFEJAD5IHXSTDHR7SW
X-Message-ID-Hash: TIHMWJI3SLLTQQMFEJAD5IHXSTDHR7SW
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Paul Cercueil <paul@crapouillou.net>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 0/7] iio: new DMABUF based API v12
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TIHMWJI3SLLTQQMFEJAD5IHXSTDHR7SW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 20 Jun 2024 20:11:50 +0100
Jonathan Cameron <jic23@kernel.org> wrote:

> On Thu, 20 Jun 2024 21:50:41 +0530
> Vinod Koul <vkoul@kernel.org> wrote:
> 
> > On 20-06-24, 14:27, Paul Cercueil wrote:  
> > > Hi Jonathan,    
> > 
> > Hey Jonathan,
> > 
> > Assuming we are fine with this series, how would you like to proceed.
> > Would you be fine with me picking the dmaengine bits and providing a
> > signed tag for you to pull?
> >   
> 
> Hi Vinod,
> 
> Yes. That will work nicely.
> From my side it all looks good.

Just to make sure we are on the same page, based on a clean rc1
so I just get the parts of this series (hopefully there aren't
an necessary precursors!) 

J
> 
> Thanks,
> 
> Jonathan
> 
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
