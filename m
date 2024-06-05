Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EE87B8FC9BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jun 2024 13:09:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB39045248
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jun 2024 11:09:10 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 0DB1E40D1A
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Jun 2024 11:09:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=fnNXiWCz;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1717585738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lbF3Hr41nIth/kjABYAo6ELsT9zfo9W62/2gY+j3W6A=;
	b=fnNXiWCz+piHjs3cCFKX5GI5TCn9Y2prcen/ET7kh9pye5qm+pIgUBf/O3bV3BnNT1h/2u
	NyMwYH4qGWbWGr1IYazRbY6rtGSVJoiMLXi/3PHX/GFa4ahJSbYFIZ5go1Y3p1tTrpunF0
	gFAQsaj5oi/revV7EdeAexrsKXH2qHg=
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Vinod Koul <vkoul@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Wed,  5 Jun 2024 13:08:39 +0200
Message-ID: <20240605110845.86740-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0DB1E40D1A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: R66I7HLY4OEOSWHK3XWW5T3HCACWQADM
X-Message-ID-Hash: R66I7HLY4OEOSWHK3XWW5T3HCACWQADM
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v10 0/6] iio: new DMABUF based API v10
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R66I7HLY4OEOSWHK3XWW5T3HCACWQADM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jonathan,

Here is a revised (and hopefully final?) version of my DMABUF patchset.

This v10 removes the extra "flags" parameter of
dmaengine_prep_peripheral_dma_vec(), and adds kernel doc to the function
as Vinod requested.

As Nuno upstreamed support for output buffers, I (slightly) modified
patch 5/6 and now output buffers are supported with the DMABUF API.
All I did was remove a "fail if output" check really.

This was based on next-20240605.

Changelog:
- [1/6]:
  - Add kernel doc to dmaengine_prep_peripheral_dma_vec()
  - Remove extra flags parameter
- [2/6]:
  - Use the new function prototype (without the extra prep_flags).
- [5/6]:
  - Remove extra flags parameter to dmaengine_prep_peripheral_dma_vec()
  - Add support for TX transfers

Cheers,
-Paul

Paul Cercueil (6):
  dmaengine: Add API function dmaengine_prep_peripheral_dma_vec()
  dmaengine: dma-axi-dmac: Implement device_prep_peripheral_dma_vec
  iio: core: Add new DMABUF interface infrastructure
  iio: buffer-dma: Enable support for DMABUFs
  iio: buffer-dmaengine: Support new DMABUF based userspace API
  Documentation: iio: Document high-speed DMABUF based API

 Documentation/iio/iio_dmabuf_api.rst          |  54 ++
 Documentation/iio/index.rst                   |   1 +
 drivers/dma/dma-axi-dmac.c                    |  40 ++
 drivers/iio/Kconfig                           |   1 +
 drivers/iio/buffer/industrialio-buffer-dma.c  | 180 ++++++-
 .../buffer/industrialio-buffer-dmaengine.c    |  62 ++-
 drivers/iio/industrialio-buffer.c             | 462 ++++++++++++++++++
 include/linux/dmaengine.h                     |  33 ++
 include/linux/iio/buffer-dma.h                |  31 ++
 include/linux/iio/buffer_impl.h               |  30 ++
 include/uapi/linux/iio/buffer.h               |  22 +
 11 files changed, 896 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/iio/iio_dmabuf_api.rst

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
