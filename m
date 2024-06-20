Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6E49111DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 21:12:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8808A4489A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 19:12:01 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id DECFD43FBF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jun 2024 19:11:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="n/sj23vs";
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C0F2BCE28B6;
	Thu, 20 Jun 2024 19:11:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D48AC2BD10;
	Thu, 20 Jun 2024 19:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718910716;
	bh=PHJYBUwMx9MsppvbS5e3PTjqE/Je4d+7DMUX9BJflTM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=n/sj23vsn1PWHoed17H0pABW4prh3E3LTezhve35uy3Sdmj0kFptQMqKyozm16g+A
	 6idpJFvmOkQcOxtMGifHN0Pid1fCKQ1JyJXgushJhM4smjPvwB++4/IN0gjt1EtlWK
	 JL/D1flZA/51Zf9CyXqQ+u9fz6+2AR9z2eaKb3JVawSD6YzNa1uqFYngRGgXnfUQoG
	 9AULJwTpjghTEH3Y+h3oruJow/Oz5QdkaLVXbx0lHzAF1PYckOuQR+XIqQfgKhDy0C
	 jTQF3ZVVzpd2cQKtt1BsWvPNzKm1hs4AgZHAVA8QBMxe7ZtWzr3RHMx5topRAqDciC
	 XqS187DxFpadw==
Date: Thu, 20 Jun 2024 20:11:50 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Message-ID: <20240620201150.72c11599@jic23-huawei>
In-Reply-To: <ZnRW2axOg7gtKzz0@matsya>
References: <20240620122726.41232-1-paul@crapouillou.net>
	<ZnRW2axOg7gtKzz0@matsya>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: DECFD43FBF
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SZASZWGPV56SHQNZCUZCIVNYMI5PEBJG
X-Message-ID-Hash: SZASZWGPV56SHQNZCUZCIVNYMI5PEBJG
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Paul Cercueil <paul@crapouillou.net>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 0/7] iio: new DMABUF based API v12
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SZASZWGPV56SHQNZCUZCIVNYMI5PEBJG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 20 Jun 2024 21:50:41 +0530
Vinod Koul <vkoul@kernel.org> wrote:

> On 20-06-24, 14:27, Paul Cercueil wrote:
> > Hi Jonathan,  
> 
> Hey Jonathan,
> 
> Assuming we are fine with this series, how would you like to proceed.
> Would you be fine with me picking the dmaengine bits and providing a
> signed tag for you to pull?
> 

Hi Vinod,

Yes. That will work nicely.
From my side it all looks good.

Thanks,

Jonathan


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
