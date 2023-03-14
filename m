Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DE96C42E0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:18:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1639F3F330
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:18:07 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 8AA5B3E963
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Mar 2023 10:53:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b="fUjwl/GT";
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1678791191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lWG+KFc/Ei6/o+9Wu4zuAiJ8/qhoZmSrQx365/6Oshk=;
	b=fUjwl/GTGcJeOfWYXXFY58YwTQ3Vq4QMsk3coead00trx0lcSAqYvNHlYUHM1jjAik9aEC
	e41Tc9t2VdvlK6F3/9913vt7NWs9yRmfxb9QXk+Ap583R8pZEVWs7vkah6OnQY1EIdjzFM
	hnjvZbaZk1hiQncj6By5PKHHSAkrNaE=
From: Paul Cercueil <paul@crapouillou.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Tue, 14 Mar 2023 11:52:55 +0100
Message-Id: <20230314105257.17345-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8AA5B3E963
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.990];
	DBL_BLOCKED_OPENRESOLVER(0.00)[crapouillou.net:dkim,aposti.net:rdns,aposti.net:helo];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	ARC_NA(0.00)[]
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7ZLKSWJO4GARWN73YCKKLDSNOGI5KXD4
X-Message-ID-Hash: 7ZLKSWJO4GARWN73YCKKLDSNOGI5KXD4
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:17:38 +0000
CC: michael.hennerich@analog.com, nuno.sa@analog.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/2] usb: gadget: functionfs: DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7ZLKSWJO4GARWN73YCKKLDSNOGI5KXD4/>
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

This was surprisingly easy to add, as the functionfs code only uses
scatterlists for transfers and allows specifying the number of bytes to
transfer. The bulk of the code is then for general DMABUF accounting.

The patchset isn't tagged RFC but comments are very welcome, there are
some things I am not 100% sure about: ffs_dma_resv_lock (with no
ww_acquire_ctx), and I'm using pr_debug which feels wrong. Also, I
should probably add documentation? The current IOCTLs for functionfs
were not documented, as far as I can tell.

We use it with DMABUFs created with udmabuf, that we attach to the
functionfs interface and to IIO devices (with a DMABUF interface for
IIO, on its way to upstream too), to transfer samples from high-speed
transceivers to USB in a zero-copy fashion.

Cheers,
-Paul


Paul Cercueil (2):
  usb: gadget: Support already-mapped DMA SGs
  usb: gadget: functionfs: Add DMABUF import interface

 drivers/usb/gadget/function/f_fs.c  | 398 ++++++++++++++++++++++++++++
 drivers/usb/gadget/udc/core.c       |   7 +-
 include/linux/usb/gadget.h          |   2 +
 include/uapi/linux/usb/functionfs.h |  14 +-
 4 files changed, 419 insertions(+), 2 deletions(-)

-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
