Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A676D4CDD
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 17:57:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FF293E948
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Apr 2023 15:57:49 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 6BFA73F5AD
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Apr 2023 15:57:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=w3+hjfKa;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
	dmarc=pass (policy=none) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1680536888;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BEseiNY15McK7cM9hqrQ6iJMRNpnoZM7y9fQeUbgP/w=;
	b=w3+hjfKairDEnqBYIQklEwG5hfr8XxlLBrjjXfRcfnyk82kg5dEbobFrtsIVzK/0N4ohNr
	SbB2G1UCv6o4C/p6BypakA4C8wo6hKblMfoqeFyPpBKaiT4WqYaARtZThOH96kbS7B8KWm
	GIsWk1BPZB6jrmqEINrmBM4nUXJDk8g=
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Vinod Koul <vkoul@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <noname.nuno@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Mon,  3 Apr 2023 17:47:49 +0200
Message-Id: <20230403154800.215924-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: add header
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: ****
X-Rspamd-Queue-Id: 6BFA73F5AD
X-Spamd-Result: default: False [4.00 / 15.00];
	SPAM_FLAG(5.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[crapouillou.net,none];
	R_DKIM_ALLOW(-0.20)[crapouillou.net:s=mail];
	R_SPF_ALLOW(-0.20)[+a:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[kernel.org,metafoo.de,analog.com,gmail.com,linaro.org,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ZERO(0.00)[0];
	ASN(0.00)[asn:203432, ipnet:89.234.176.0/23, country:FR];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	GREYLIST(0.00)[pass,body];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+];
	TO_DN_SOME(0.00)[];
	NEURAL_SPAM(0.00)[0.638];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[]
X-Spamd-Bar: ++++
Message-ID-Hash: OZIY4D6C5IDTKNWKBR7JMQQLXFUNAMQH
X-Message-ID-Hash: OZIY4D6C5IDTKNWKBR7JMQQLXFUNAMQH
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 00/11] iio: new DMABUF based API, v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OZIY4D6C5IDTKNWKBR7JMQQLXFUNAMQH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spam: Yes

Hi Jonathan,

Here's the v3 of my patchset that introduces a new interface based on
DMABUF objects to complement the fileio API, and adds write() support to
the existing fileio API.

It changed quite a lot since V2; the IIO subsystem is now just a DMABUF
importer, and all the complexity related to handling creation, deletion
and export of DMABUFs (including DMA mapping etc.) is gone.

This new interface will be used by Libiio. The code is ready[1] and will
be merged to the main branch as soon as the kernel bits are accepted
upstream.

Note that Libiio (and its server counterpart, iiod) use this new
interface in two different ways:
- by memory-mapping the DMABUFs to access the sample data directly,
  which is much faster than using the existing fileio API as the sample
  data does not need to be copied;
- by passing the DMABUFs around directly to the USB stack, in a
  device-to-device zero-copy fashion, using a new DMABUF interface for
  the USB (FunctionFS to be exact) stack, which is being upstreamed in
  parallel of this patchset [2].

As for write() support, Nuno (Cc'd) said he will work on upstreaming the
DAC counterpart of adc/adi-axi-adc.c in the next few weeks, so there
will be a user for the buffer write() support. I hope you are okay with
this - otherwise, we can just wait until this work is done, and I still
benefit from sending this patchset early to get feedback.

Finally, the dmaengine implementation for this new interface requires a
new dmaengine API function, since dmaengine_prep_slave_sg() will always
transfer the full scatterlist unconditionally, while we want to be able
to transfer an arbitrary amount of bytes from/to the DMABUF. Since
scatterlists seem to be going away soon, the new API function will take
an array of DMA addresses + lengths. I am open to suggestions if anybody
(especially Vinod) have a better design in mind.

Cheers,
-Paul

[1]: https://github.com/analogdevicesinc/libiio/pull/928
[2]: https://lore.kernel.org/linux-usb/425c1b8ea20002c6344a574cd094b4c715c67ba6.camel@crapouillou.net/T/#t

---
Changelog:
* Patches 01-02 are new;
* Patches [03/11], [05/11] didn't change;
* Patch [04/11]:
    - Reorganize arguments to iio_dma_buffer_io()
    - Change 'is_write' argument to 'is_from_user'
    - Change (__force char *) to (__force __user char *), in
      iio_dma_buffer_write(), since we only want to drop the "const".
* Patch [07/11]:
    - Get rid of the old IOCTLs. The IIO subsystem does not create or
      manage DMABUFs anymore, and only attaches/detaches externally
      created DMABUFs.
    - Add IIO_BUFFER_DMABUF_CYCLIC to the supported flags.
* Patch [09/11]:
    Update code to provide the functions that will be used as callbacks
    for the new IOCTLs.
* Patch [10/11]:
    Use the new dmaengine_prep_slave_dma_array(), and adapt the code to
    work with the new functions introduced in industrialio-buffer-dma.c.
* Patch [11/11]:
    Update the documentation to reflect the new API.

---
Alexandru Ardelean (1):
  iio: buffer-dma: split iio_dma_buffer_fileio_free() function

Paul Cercueil (10):
  dmaengine: Add API function dmaengine_prep_slave_dma_array()
  dmaengine: dma-axi-dmac: Implement device_prep_slave_dma_array
  iio: buffer-dma: Get rid of outgoing queue
  iio: buffer-dma: Enable buffer write support
  iio: buffer-dmaengine: Support specifying buffer direction
  iio: buffer-dmaengine: Enable write support
  iio: core: Add new DMABUF interface infrastructure
  iio: buffer-dma: Enable support for DMABUFs
  iio: buffer-dmaengine: Support new DMABUF based userspace API
  Documentation: iio: Document high-speed DMABUF based API

 Documentation/iio/dmabuf_api.rst              |  59 +++
 Documentation/iio/index.rst                   |   2 +
 drivers/dma/dma-axi-dmac.c                    |  41 ++
 drivers/iio/adc/adi-axi-adc.c                 |   3 +-
 drivers/iio/buffer/industrialio-buffer-dma.c  | 331 +++++++++++---
 .../buffer/industrialio-buffer-dmaengine.c    |  77 +++-
 drivers/iio/industrialio-buffer.c             | 402 ++++++++++++++++++
 include/linux/dmaengine.h                     |  16 +
 include/linux/iio/buffer-dma.h                |  40 +-
 include/linux/iio/buffer-dmaengine.h          |   5 +-
 include/linux/iio/buffer_impl.h               |  22 +
 include/uapi/linux/iio/buffer.h               |  22 +
 12 files changed, 939 insertions(+), 81 deletions(-)
 create mode 100644 Documentation/iio/dmabuf_api.rst

-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
