Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C109F81B4F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 12:32:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C662E3F3A3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Dec 2023 11:32:16 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 4584E3ED86
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Dec 2023 11:31:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=NHdEaDtj;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 3CDDCB81FB9;
	Thu, 21 Dec 2023 11:31:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C39B1C433C7;
	Thu, 21 Dec 2023 11:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703158314;
	bh=Cpk+5UE2MMyOzEMOhTnWvY78nmuIRHA/4H9/WiQCvN8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=NHdEaDtjTfH4nlGctu3s2hkp5HN7vvBI+QRZgUpTDFpK5xoz9BFpT54dbd51uIFnk
	 w+YWZ3v0BsMDcG1WyB1Jp5xQj3QPe0h0jY8nmkoqxlwJ1RZWbcb6PbxUAqpCPGPjDL
	 Kyh1cCCSSgbKjdIHj3n84ydRiW3QYsijTcoWOMd2dfkCetwRUFkGAFzawWpwWLaOLz
	 a0f8SJodbsS7kURzc1Qx0edRDgVsKYrMaNmI8bhEGXXgSLAGxziAOs1BtO8Tk9Cx6W
	 3NbqzVlbocmMvx+6KiJ3zPADUE+6TwlQ03bFKOq4K/hYnUh/Cr+AXZC5fB2hhKMwto
	 m9ZXscrXA3bRg==
Date: Thu, 21 Dec 2023 11:31:37 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20231221113137.39911d64@jic23-huawei>
In-Reply-To: <20231219175009.65482-3-paul@crapouillou.net>
References: <20231219175009.65482-1-paul@crapouillou.net>
	<20231219175009.65482-3-paul@crapouillou.net>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.68.75:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
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
X-Rspamd-Queue-Id: 4584E3ED86
X-Spamd-Bar: -
Message-ID-Hash: VUTD72JKKUD2H5263AB57OVHLLKCRJQS
X-Message-ID-Hash: VUTD72JKKUD2H5263AB57OVHLLKCRJQS
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Vinod Koul <vkoul@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, Alexandru Ardelean <alexandru.ardelean@analog.com>, Alexandru Ardelean <ardeleanalex@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/8] iio: buffer-dma: split iio_dma_buffer_fileio_free() function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VUTD72JKKUD2H5263AB57OVHLLKCRJQS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 19 Dec 2023 18:50:03 +0100
Paul Cercueil <paul@crapouillou.net> wrote:

> From: Alexandru Ardelean <alexandru.ardelean@analog.com>
> 
> This change splits the logic into a separate function, which will be
> re-used later.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> Cc: Alexandru Ardelean <ardeleanalex@gmail.com>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Harmless refactor so I'm fine taking this now to reduce noise on any
v6

Applied

Jonathan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
