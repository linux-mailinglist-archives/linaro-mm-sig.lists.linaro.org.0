Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 372374B8831
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:52:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6970240167
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:52:52 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lists.linaro.org (Postfix) with ESMTPS id 9272D3ED38
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Feb 2022 17:43:46 +0000 (UTC)
Date: Tue, 15 Feb 2022 17:43:35 +0000
From: Paul Cercueil <paul@crapouillou.net>
To: Jonathan Cameron <jic23@kernel.org>
Message-Id: <N8XC7R.5FP2M8552CGT3@crapouillou.net>
In-Reply-To: <20220213184616.669b490b@jic23-huawei>
References: <20220207125933.81634-1-paul@crapouillou.net>
	<20220213184616.669b490b@jic23-huawei>
MIME-Version: 1.0
X-MailFrom: paul@crapouillou.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4EF3FKHDPCLXOPK2P427OLYRBCZO45L3
X-Message-ID-Hash: 4EF3FKHDPCLXOPK2P427OLYRBCZO45L3
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:52:49 +0000
CC: Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Christian =?iso-8859-1?b?S/ZuaWc=?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 00/12] iio: buffer-dma: write() and new DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4EF3FKHDPCLXOPK2P427OLYRBCZO45L3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-13"; format="flowed"
Content-Transfer-Encoding: quoted-printable

Hi Jonathan,

Le dim., f=E9vr. 13 2022 at 18:46:16 +0000, Jonathan Cameron=20
<jic23@kernel.org> a =E9crit :
> On Mon,  7 Feb 2022 12:59:21 +0000
> Paul Cercueil <paul@crapouillou.net> wrote:
>=20
>>  Hi Jonathan,
>>=20
>>  This is the V2 of my patchset that introduces a new userspace=20
>> interface
>>  based on DMABUF objects to complement the fileio API, and adds=20
>> write()
>>  support to the existing fileio API.
>=20
> Hi Paul,
>=20
> It's been a little while. Perhaps you could summarize the various view
> points around the appropriateness of using DMABUF for this?
> I appreciate it is a tricky topic to distil into a brief summary but
> I know I would find it useful even if no one else does!

So we want to have a high-speed interface where buffers of samples are=20
passed around between IIO devices and other devices (e.g. USB or=20
network), or made available to userspace without copying the data.

DMABUF is, at least in theory, exactly what we need. Quoting the=20
documentation=20
(https://www.kernel.org/doc/html/v5.15/driver-api/dma-buf.html):
"The dma-buf subsystem provides the framework for sharing buffers for=20
hardware (DMA) access across multiple device drivers and subsystems,=20
and for synchronizing asynchronous hardware access. This is used, for=20
example, by drm =B4prime=A1 multi-GPU support, but is of course not=20
limited to GPU use cases."

The problem is that right now DMABUF is only really used by DRM, and to=20
quote Daniel, "dma-buf looks like something super generic and useful,=20
until you realize that there's a metric ton of gpu/accelerator bagage=20
piled in".

Still, it seems to be the only viable option. We could add a custom=20
buffer-passing interface, but that would mean implementing the same=20
buffer-passing interface on the network and USB stacks, and before we=20
know it we re-invented DMABUFs.

Cheers,
-Paul


>>=20
>>  Changes since v1:
>>=20
>>  - the patches that were merged in v1 have been (obviously) dropped=20
>> from
>>    this patchset;
>>  - the patch that was setting the write-combine cache setting has=20
>> been
>>    dropped as well, as it was simply not useful.
>>  - [01/12]:
>>      * Only remove the outgoing queue, and keep the incoming queue,=20
>> as we
>>        want the buffer to start streaming data as soon as it is=20
>> enabled.
>>      * Remove IIO_BLOCK_STATE_DEQUEUED, since it is now functionally=20
>> the
>>        same as IIO_BLOCK_STATE_DONE.
>>  - [02/12]:
>>      * Fix block->state not being reset in
>>        iio_dma_buffer_request_update() for output buffers.
>>      * Only update block->bytes_used once and add a comment about=20
>> why we
>>        update it.
>>      * Add a comment about why we're setting a different state for=20
>> output
>>        buffers in iio_dma_buffer_request_update()
>>      * Remove useless cast to bool (!!) in iio_dma_buffer_io()
>>  - [05/12]:
>>      Only allow the new IOCTLs on the buffer FD created with
>>      IIO_BUFFER_GET_FD_IOCTL().
>>  - [12/12]:
>>      * Explicitly state that the new interface is optional and is
>>        not implemented by all drivers.
>>      * The IOCTLs can now only be called on the buffer FD returned by
>>        IIO_BUFFER_GET_FD_IOCTL.
>>      * Move the page up a bit in the index since it is core stuff=20
>> and not
>>        driver-specific.
>>=20
>>  The patches not listed here have not been modified since v1.
>>=20
>>  Cheers,
>>  -Paul
>>=20
>>  Alexandru Ardelean (1):
>>    iio: buffer-dma: split iio_dma_buffer_fileio_free() function
>>=20
>>  Paul Cercueil (11):
>>    iio: buffer-dma: Get rid of outgoing queue
>>    iio: buffer-dma: Enable buffer write support
>>    iio: buffer-dmaengine: Support specifying buffer direction
>>    iio: buffer-dmaengine: Enable write support
>>    iio: core: Add new DMABUF interface infrastructure
>>    iio: buffer-dma: Use DMABUFs instead of custom solution
>>    iio: buffer-dma: Implement new DMABUF based userspace API
>>    iio: buffer-dmaengine: Support new DMABUF based userspace API
>>    iio: core: Add support for cyclic buffers
>>    iio: buffer-dmaengine: Add support for cyclic buffers
>>    Documentation: iio: Document high-speed DMABUF based API
>>=20
>>   Documentation/driver-api/dma-buf.rst          |   2 +
>>   Documentation/iio/dmabuf_api.rst              |  94 +++
>>   Documentation/iio/index.rst                   |   2 +
>>   drivers/iio/adc/adi-axi-adc.c                 |   3 +-
>>   drivers/iio/buffer/industrialio-buffer-dma.c  | 610=20
>> ++++++++++++++----
>>   .../buffer/industrialio-buffer-dmaengine.c    |  42 +-
>>   drivers/iio/industrialio-buffer.c             |  60 ++
>>   include/linux/iio/buffer-dma.h                |  38 +-
>>   include/linux/iio/buffer-dmaengine.h          |   5 +-
>>   include/linux/iio/buffer_impl.h               |   8 +
>>   include/uapi/linux/iio/buffer.h               |  30 +
>>   11 files changed, 749 insertions(+), 145 deletions(-)
>>   create mode 100644 Documentation/iio/dmabuf_api.rst
>>=20
>=20


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
