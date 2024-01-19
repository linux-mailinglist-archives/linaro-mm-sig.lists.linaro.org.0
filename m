Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CC2832B19
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 15:14:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24A9143C89
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 14:14:33 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id D6B3E3E930
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jan 2024 14:14:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=AZOYG5ed;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1705673650;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FX6y2yjuW0nuJFiEqsV4ftraJscIV4V40Vy+XAQTjhI=;
	b=AZOYG5edVZIWA1BlCrUR1yaolBTzcIodYuTj1R0BojE/dH4mDiXy2R/lk6N0eIGpYjQRnM
	moRjihZ1MzvjxwroPPnCYYSyUbr+Q/3G8gPUFgTrqIdY8BEH1tinjcH5f3aUwn3o497Y5W
	cxzgdFEi3srEEHMggkSKv9wlfR3+Gjo=
From: Paul Cercueil <paul@crapouillou.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 19 Jan 2024 15:13:56 +0100
Message-ID: <20240119141402.44262-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_SPF_ALLOW(-0.20)[+a];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,crapouillou.net];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[crapouillou.net:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D6B3E3E930
X-Spamd-Bar: -
Message-ID-Hash: XBRVMDGSIXYVAP23EEX7RO6YDC5YMUU7
X-Message-ID-Hash: XBRVMDGSIXYVAP23EEX7RO6YDC5YMUU7
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 0/6] usb: gadget: functionfs: DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XBRVMDGSIXYVAP23EEX7RO6YDC5YMUU7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

This is the v5 of my patchset that adds a new DMABUF import interface to
FunctionFS.

Daniel / Sima suggested that I should cache the dma_buf_attachment while
the DMABUF is attached to the interface, instead of mapping/unmapping
the DMABUF for every transfer (also because unmapping is not possible in
the dma_fence's critical section). This meant having to add new
dma_buf_begin_access() / dma_buf_end_access() functions that the driver
can call to ensure cache coherency. These two functions are provided by
the new patch [1/6], and an implementation for udmabuf was added in
[2/6] - see the changelog below.

This patchset was successfully tested with CONFIG_LOCKDEP, no errors
were reported in dmesg while using the interface.

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

This is obviously for 5.9, and based on next-20240119.

Changelog:

- [1/6]: New patch
- [2/6]: New patch
- [5/6]:
  - Cache the dma_buf_attachment while the DMABUF is attached.
  - Use dma_buf_begin/end_access() to ensure that the DMABUF data will be
    coherent to the hardware.
  - Remove comment about cache-management and dma_buf_unmap_attachment(),
    since we now use dma_buf_begin/end_access().
  - Select DMA_SHARED_BUFFER in Kconfig entry
  - Add Christian's ACK

Cheers,
-Paul

[1] https://lore.kernel.org/linux-iio/219abc43b4fdd4a13b307ed2efaa0e6869e68e3f.camel@gmail.com/T/
[2] https://github.com/analogdevicesinc/libiio/tree/pcercuei/dev-new-dmabuf-api

Paul Cercueil (6):
  dma-buf: Add dma_buf_{begin,end}_access()
  dma-buf: udmabuf: Implement .{begin,end}_access
  usb: gadget: Support already-mapped DMA SGs
  usb: gadget: functionfs: Factorize wait-for-endpoint code
  usb: gadget: functionfs: Add DMABUF import interface
  Documentation: usb: Document FunctionFS DMABUF API

 Documentation/usb/functionfs.rst    |  36 ++
 drivers/dma-buf/dma-buf.c           |  66 ++++
 drivers/dma-buf/udmabuf.c           |  27 ++
 drivers/usb/gadget/Kconfig          |   1 +
 drivers/usb/gadget/function/f_fs.c  | 502 ++++++++++++++++++++++++++--
 drivers/usb/gadget/udc/core.c       |   7 +-
 include/linux/dma-buf.h             |  37 ++
 include/linux/usb/gadget.h          |   2 +
 include/uapi/linux/usb/functionfs.h |  41 +++
 9 files changed, 698 insertions(+), 21 deletions(-)

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
