Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C364C6C4636
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 10:21:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC027447A0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 09:21:39 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id F22393E96A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Mar 2023 09:21:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=N+K9gfMW;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1679476886;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=tmRlYhR2FZnlnQJCWKDJjWOgiCSSl9pc0u4cFJUJ650=;
	b=N+K9gfMWBsR4tD4u3Hl8NNLbTta8iPSN0ERcGscwa47kxMOGN0UFmiTqCEo0xcvmKjCd74
	5QKS+X1c2izruTxdi+aR2/bxOzM5vWFMvFs5pp/4TwXtEn6OYJKWv7KKZgoXYHILsy+BHa
	2AW0NIB2KkWH3t1e96o1srWamY7k2XM=
From: Paul Cercueil <paul@crapouillou.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Wed, 22 Mar 2023 10:21:15 +0100
Message-Id: <20230322092118.9213-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F22393E96A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: IHNOQJVGTLYLR4TDGAH5PAS267LFVEF3
X-Message-ID-Hash: IHNOQJVGTLYLR4TDGAH5PAS267LFVEF3
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: michael.hennerich@analog.com, nuno.sa@analog.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/3] usb: gadget: functionfs: DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IHNOQJVGTLYLR4TDGAH5PAS267LFVEF3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

This small patchset adds three new IOCTLs that can be used to attach,
detach, or transfer from/to a DMABUF object.

Changes since v1:
- patch [2/3] is new. I had to reuse a piece of code that was already
  duplicated in the driver, so I factorized the code.
- Make ffs_dma_resv_lock() static
- Add MODULE_IMPORT_NS(DMA_BUF);
- The attach/detach functions are now performed without locking the
  eps_lock spinlock. The transfer function starts with the spinlock
  unlocked, then locks it before allocating and queueing the USB
  transfer.

Cheers,
-Paul

Paul Cercueil (3):
  usb: gadget: Support already-mapped DMA SGs
  usb: gadget: functionfs: Factorize wait-for-endpoint code
  usb: gadget: functionfs: Add DMABUF import interface

 drivers/usb/gadget/function/f_fs.c  | 467 ++++++++++++++++++++++++++--
 drivers/usb/gadget/udc/core.c       |   7 +-
 include/linux/usb/gadget.h          |   2 +
 include/uapi/linux/usb/functionfs.h |  14 +-
 4 files changed, 468 insertions(+), 22 deletions(-)

-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
