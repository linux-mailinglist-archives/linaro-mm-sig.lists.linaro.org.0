Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EC3840CB9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jan 2024 18:02:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D92F400D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jan 2024 17:02:25 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 967733F5EB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jan 2024 17:02:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=crapouillou.net header.s=mail header.b=W7+npEzB;
	dmarc=pass (policy=none) header.from=crapouillou.net;
	spf=pass (lists.linaro.org: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1706547735;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UdxfhIPu1xHyG67FyRRevHrBT0ztFFCyHigeaYJvTDo=;
	b=W7+npEzBgGM0o8a7SHbyU6mF3GylmXNJJ8kTUn9FVMtH+5ggUp+e/cbweUryu9H+W0+PAQ
	vK3qpWhsITPG6Q2GGBsAqGuwNH5jUndpZvhfHmvkdsptWaGZeOtIbzmscoFvxEiMarHjXZ
	uS1DTilxDYGxydi6FIx+OKkDnE9pGaQ=
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Vinod Koul <vkoul@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Mon, 29 Jan 2024 18:01:55 +0100
Message-ID: <20240129170201.133785-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 967733F5EB
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
	RCPT_COUNT_TWELVE(0.00)[17];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[crapouillou.net:+]
Message-ID-Hash: ZQJPZDNNTPBSSV6D7CFHIUFVY5ZU3GFQ
X-Message-ID-Hash: ZQJPZDNNTPBSSV6D7CFHIUFVY5ZU3GFQ
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Nuno Sa <nuno.sa@analog.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 0/6] iio: new DMABUF based API, v6
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZQJPZDNNTPBSSV6D7CFHIUFVY5ZU3GFQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jonathan,

This is the v6 of my patchset that introduces a new interface based on
DMABUF objects.

The code was updated quite a bit, using the feedback on the list for
this patchset but also the feedback I received on the FunctionFS
patchset that I'm working on upstreaming in parallel [1] where the
DMABUF handling code is very similar.

See below for the full changelog.

I decided to drop the scope-based memory management for dma_buf and
I hope you are OK with that. Christian wants the patch(es) to support
scope-based memory management in dma-buf as a separate patchset; once
it's in, I will gladly send a follow-up patch to use __free() where it
makes sense.

For performance numbers, I'll point you to the cover letter for my v5
patchset [2].

This patchset was based on next-20240129.

Cheers,
-Paul

[1] https://lore.kernel.org/all/20230322092118.9213-1-paul@crapouillou.net/
[2] https://lore.kernel.org/linux-iio/219abc43b4fdd4a13b307ed2efaa0e6869e68e3f.camel@gmail.com/T/

---

Changelog:
* [2/6]:
    - Use new prototype for axi_dmac_alloc_desc() as it changed upstream
* [3/6]:
    - Remove dead code in iio_dma_resv_lock()
    - Fix non-block actually blocking
    - Cache dma_buf_attachment instead of mapping/unmapping it for every
      transfer
    - Return -EINVAL instead of IIO_IOCTL_UNHANDLED for unknown ioctl
    - Make .block_enqueue() callback take a dma_fence pointer, which
      will be passed to iio_buffer_signal_dmabuf_done() instead of the
      dma_buf_attachment; and remove the backpointer from the priv
      structure to the dma_fence.
    - Use dma_fence_begin/end_signalling in the dma_fence critical
      sections
    - Unref dma_fence and dma_buf_attachment in worker, because they
      might try to lock the dma_resv, which would deadlock.
    - Add buffer ops to lock/unlock the queue. This is motivated by the
      fact that once the dma_fence has been installed, we cannot lock
      anything anymore - so the queue must be locked before the
      dma_fence is installed.
    - Use 'long retl' variable to handle the return value of
      dma_resv_wait_timeout()
    - Protect dmabufs list access with a mutex
    - Rework iio_buffer_find_attachment() to use the internal dmabufs
      list, instead of messing with dmabufs private data.
    - Add an atomically-increasing sequence number for fences
* [4/6]:
    - Update iio_dma_buffer_enqueue_dmabuf() to take a dma_fence pointer
    - Pass that dma_fence pointer along to
      iio_buffer_signal_dmabuf_done()
    - Add iio_dma_buffer_lock_queue() / iio_dma_buffer_unlock_queue()
    - Do not lock the queue in iio_dma_buffer_enqueue_dmabuf().
      The caller will ensure that it has been locked already.
    - Replace "int += bool;" by "if (bool) int++;"
    - Use dma_fence_begin/end_signalling in the dma_fence critical
      sections
    - Use one "num_dmabufs" fields instead of one "num_blocks" and one
      "num_fileio_blocks". Make it an atomic_t, which makes it possible
      to decrement it atomically in iio_buffer_block_release() without
      having to lock the queue mutex; and in turn, it means that we
      don't need to use iio_buffer_block_put_atomic() everywhere to
      avoid locking the queue mutex twice.
    - Use cleanup.h guard(mutex) when possible
    - Explicitely list all states in the switch in
      iio_dma_can_enqueue_block()
    - Rename iio_dma_buffer_fileio_mode() to
      iio_dma_buffer_can_use_fileio(), and add a comment explaining why
      it cannot race vs. DMABUF.
* [5/6]:
    - Populate .lock_queue / .unlock_queue callbacks
    - Switch to atomic memory allocations in .submit_queue, because of
      the dma_fence critical section
    - Make sure that the size of the scatterlist is enough

---
Paul Cercueil (6):
  dmaengine: Add API function dmaengine_prep_slave_dma_vec()
  dmaengine: dma-axi-dmac: Implement device_prep_slave_dma_vec
  iio: core: Add new DMABUF interface infrastructure
  iio: buffer-dma: Enable support for DMABUFs
  iio: buffer-dmaengine: Support new DMABUF based userspace API
  Documentation: iio: Document high-speed DMABUF based API

 Documentation/iio/dmabuf_api.rst              |  54 ++
 Documentation/iio/index.rst                   |   2 +
 drivers/dma/dma-axi-dmac.c                    |  40 ++
 drivers/iio/buffer/industrialio-buffer-dma.c  | 181 ++++++-
 .../buffer/industrialio-buffer-dmaengine.c    |  58 ++-
 drivers/iio/industrialio-buffer.c             | 462 ++++++++++++++++++
 include/linux/dmaengine.h                     |  25 +
 include/linux/iio/buffer-dma.h                |  31 ++
 include/linux/iio/buffer_impl.h               |  33 ++
 include/uapi/linux/iio/buffer.h               |  22 +
 10 files changed, 891 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/iio/dmabuf_api.rst

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
