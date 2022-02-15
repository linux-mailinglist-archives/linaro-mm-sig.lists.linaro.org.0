Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4240B4B6F90
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 16:16:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79A65401D2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 15:15:59 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id D027B3EE45
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Feb 2022 12:59:43 +0000 (UTC)
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>
Date: Mon,  7 Feb 2022 12:59:21 +0000
Message-Id: <20220207125933.81634-1-paul@crapouillou.net>
MIME-Version: 1.0
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CBAWL4VC4VNO5MO2JYO337XQONNVXKFP
X-Message-ID-Hash: CBAWL4VC4VNO5MO2JYO337XQONNVXKFP
X-Mailman-Approved-At: Tue, 15 Feb 2022 15:15:40 +0000
CC: Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 00/12] iio: buffer-dma: write() and new DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CBAWL4VC4VNO5MO2JYO337XQONNVXKFP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jonathan,

This is the V2 of my patchset that introduces a new userspace interface
based on DMABUF objects to complement the fileio API, and adds write()
support to the existing fileio API.

Changes since v1:

- the patches that were merged in v1 have been (obviously) dropped from
  this patchset;
- the patch that was setting the write-combine cache setting has been
  dropped as well, as it was simply not useful.
- [01/12]: 
    * Only remove the outgoing queue, and keep the incoming queue, as we
      want the buffer to start streaming data as soon as it is enabled.
    * Remove IIO_BLOCK_STATE_DEQUEUED, since it is now functionally the
      same as IIO_BLOCK_STATE_DONE.
- [02/12]:
    * Fix block->state not being reset in
      iio_dma_buffer_request_update() for output buffers.
    * Only update block->bytes_used once and add a comment about why we
      update it.
    * Add a comment about why we're setting a different state for output
      buffers in iio_dma_buffer_request_update()
    * Remove useless cast to bool (!!) in iio_dma_buffer_io()
- [05/12]:
    Only allow the new IOCTLs on the buffer FD created with
    IIO_BUFFER_GET_FD_IOCTL().
- [12/12]:
    * Explicitly state that the new interface is optional and is
      not implemented by all drivers.
    * The IOCTLs can now only be called on the buffer FD returned by
      IIO_BUFFER_GET_FD_IOCTL.
    * Move the page up a bit in the index since it is core stuff and not
      driver-specific.

The patches not listed here have not been modified since v1.

Cheers,
-Paul

Alexandru Ardelean (1):
  iio: buffer-dma: split iio_dma_buffer_fileio_free() function

Paul Cercueil (11):
  iio: buffer-dma: Get rid of outgoing queue
  iio: buffer-dma: Enable buffer write support
  iio: buffer-dmaengine: Support specifying buffer direction
  iio: buffer-dmaengine: Enable write support
  iio: core: Add new DMABUF interface infrastructure
  iio: buffer-dma: Use DMABUFs instead of custom solution
  iio: buffer-dma: Implement new DMABUF based userspace API
  iio: buffer-dmaengine: Support new DMABUF based userspace API
  iio: core: Add support for cyclic buffers
  iio: buffer-dmaengine: Add support for cyclic buffers
  Documentation: iio: Document high-speed DMABUF based API

 Documentation/driver-api/dma-buf.rst          |   2 +
 Documentation/iio/dmabuf_api.rst              |  94 +++
 Documentation/iio/index.rst                   |   2 +
 drivers/iio/adc/adi-axi-adc.c                 |   3 +-
 drivers/iio/buffer/industrialio-buffer-dma.c  | 610 ++++++++++++++----
 .../buffer/industrialio-buffer-dmaengine.c    |  42 +-
 drivers/iio/industrialio-buffer.c             |  60 ++
 include/linux/iio/buffer-dma.h                |  38 +-
 include/linux/iio/buffer-dmaengine.h          |   5 +-
 include/linux/iio/buffer_impl.h               |   8 +
 include/uapi/linux/iio/buffer.h               |  30 +
 11 files changed, 749 insertions(+), 145 deletions(-)
 create mode 100644 Documentation/iio/dmabuf_api.rst

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
