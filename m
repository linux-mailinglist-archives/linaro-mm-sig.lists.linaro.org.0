Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E35830570
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jan 2024 13:36:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D70F43F17
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jan 2024 12:36:53 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id C9A663F19B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jan 2024 12:36:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=AnuJeXJr;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1705494412;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/sDVLzlV6tVM1+jlnCP4YrSpFonZ8VEXETbEWgRMsuA=;
	b=AnuJeXJrsxDBX4u2PXAQELZ/ATdNATOI3nnJtTFJP8NZyE+fPe7/7Wl72Pf0pufRWaFvP1
	sNzzWBdCHYltlr90nl6m+MVGb9eTfWZS+78j7Mt7MuOAR0Qk1audmOo2VqSZdf8a89jbTb
	IWdLbuxuhZnhf1RqMzfVvZA6GZH3DTg=
From: Paul Cercueil <paul@crapouillou.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Wed, 17 Jan 2024 13:26:42 +0100
Message-ID: <20240117122646.41616-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Action: add header
X-Spamd-Result: default: False [4.00 / 15.00];
	SPAM_FLAG(5.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.963];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,crapouillou.net];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,body];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Spam-Level: ****
X-Rspamd-Queue-Id: C9A663F19B
X-Spamd-Bar: ++++
Message-ID-Hash: SMCOB6CDDKONBYN5MNDZ3VYVLGAAVTLS
X-Message-ID-Hash: SMCOB6CDDKONBYN5MNDZ3VYVLGAAVTLS
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 0/4] usb: gadget: functionfs: DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SMCOB6CDDKONBYN5MNDZ3VYVLGAAVTLS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spam: Yes

Hi,

This is the v4 of my patchset that adds a new DMABUF import interface to
FunctionFS. It addresses the points that Daniel raised on the v3 - see
changelog below.

This interface is being used at Analog Devices, to transfer data from
high-speed transceivers to USB in a zero-copy fashion, using also the
DMABUF import interface to the IIO subsystem which is being upstreamed
in parallel [1]. The two are used by the Libiio software [2].

On a ZCU102 board with a FMComms3 daughter board, using the combination
of these two new interfaces yields a drastic improvement of the
throughput, from about 127 MiB/s using IIO's buffer read/write interface
+ read/write to the FunctionFS endpoints, to about 274 MiB/s when
passing around DMABUFs, for a lower CPU usage (0.85 load avg. before,
vs. 0.65 after).

Right now, *technically* there are no users of this interface, as
Analog Devices wants to wait until both interfaces are accepted upstream
to merge the DMABUF code in Libiio into the main branch, and Jonathan
wants to wait and see if this patchset is accepted to greenlight the
DMABUF interface in IIO as well. I think this isn't really a problem;
once everybody is happy with its part of the cake, we can merge them all
at once.

This is obviously for 5.9, and based on next-20240117.

Changelog:

- [3/4]:
  - Protect the dmabufs list with a mutex
  - Use incremental sequence number for the dma_fences
  - Unref attachments and DMABUFs in workers
  - Remove dead code in ffs_dma_resv_lock()
  - Fix non-block actually blocking
  - Use dma_fence_begin/end_signalling()
  - Add comment about cache-management and dma_buf_unmap_attachment()
  - Make sure dma_buf_map_attachment() is called with the dma-resv locked

Cheers,
-Paul

[1] https://lore.kernel.org/linux-iio/219abc43b4fdd4a13b307ed2efaa0e6869e68e3f.camel@gmail.com/T/
[2] https://github.com/analogdevicesinc/libiio/tree/pcercuei/dev-new-dmabuf-api

Paul Cercueil (4):
  usb: gadget: Support already-mapped DMA SGs
  usb: gadget: functionfs: Factorize wait-for-endpoint code
  usb: gadget: functionfs: Add DMABUF import interface
  Documentation: usb: Document FunctionFS DMABUF API

 Documentation/usb/functionfs.rst    |  36 ++
 drivers/usb/gadget/function/f_fs.c  | 500 ++++++++++++++++++++++++++--
 drivers/usb/gadget/udc/core.c       |   7 +-
 include/linux/usb/gadget.h          |   2 +
 include/uapi/linux/usb/functionfs.h |  41 +++
 5 files changed, 565 insertions(+), 21 deletions(-)

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
