Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA484EAF0A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 16:07:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2AC53EC16
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:07:30 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	by lists.linaro.org (Postfix) with ESMTPS id 227D33EBF6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 14:07:27 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id n35so10380766wms.5
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 07:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=wO+KuIhwNONjIP1+Omeq6F8wrHiYWSfSBngRsB9GXrY=;
        b=BrecYWhHjxfGo6Ezo+gQnrlHVZTjI9Wi/uxDbXlwVRz85R5dLoKTzNI2MC2GX5Dv/G
         mlTmo8D6Fidj7ZmFDBVG2bjgyGa5lR7Ha/V1+AcbwIHpzuS0W560NQS5EwtFqdcsxZfN
         XvPWJ6QgGZjfSEuSK5+flPHypRYd7ejLLe7rA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=wO+KuIhwNONjIP1+Omeq6F8wrHiYWSfSBngRsB9GXrY=;
        b=yJm5GRIquvPIG1gvaip9A9Xk2Q+4+1GDHFKMewlz5wCS0SPrMFxwdG1VaPNacqhTID
         81e5ldT5CGviS/EEPBruHdddg1UgjP9IrnY7UlHHflwQ1a67Yv2GYDiyEyLc2B+OxAkb
         9VIS6ftbt9/RLkMJ3ocVuKZaHAiapgOiUf71GHsy2tm49661c59vAZzqiSpG+7/rON9g
         lqVjsjExGYOOgLkvLrMc7Pfo19Hgs6++2xOCLUBDChmU9rKyjNqCJpzPI0uLwemf5USO
         HHTh4VHJwSqyMsc3m8houPZDDpsig0fTNZM2IQhchds5mfqUlBC9GQHz9vMcYEPKGIdB
         G8Ew==
X-Gm-Message-State: AOAM533tBlxXHOxxt9JHkp9f3mWm+lg0r9Io5YFQ3goWb0zCvo6Oc+AC
	vblV/zuTdPofu9lpQtb9tzUxpg==
X-Google-Smtp-Source: ABdhPJyo7ea/nZXrlU3akF3tdf273o2t+KHlhil6iDV+KBGasrEr55RuNkwiRURTypDNaCbBNruEWw==
X-Received: by 2002:a05:600c:4241:b0:38c:ec66:7c8f with SMTP id r1-20020a05600c424100b0038cec667c8fmr7130162wmm.179.1648562843585;
        Tue, 29 Mar 2022 07:07:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id v4-20020adfa1c4000000b00205c6dfc41esm6194260wrv.18.2022.03.29.07.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 07:07:23 -0700 (PDT)
Date: Tue, 29 Mar 2022 16:07:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <YkMSmcQy1sKQJ5rJ@phenom.ffwll.local>
Mail-Followup-To: Paul Cercueil <paul@crapouillou.net>,
	Jonathan Cameron <jic23@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	Alexandru Ardelean <ardeleanalex@gmail.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
References: <20220207125933.81634-1-paul@crapouillou.net>
 <20220207130140.81891-1-paul@crapouillou.net>
 <20220207130140.81891-2-paul@crapouillou.net>
 <YkLJU7Pp98CPIHfY@phenom.ffwll.local>
 <Z63I9R.MKYUKBH4V8L41@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z63I9R.MKYUKBH4V8L41@crapouillou.net>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: LJNN54GLL2BHJWRCLVCGLUM6WBLR7NAF
X-Message-ID-Hash: LJNN54GLL2BHJWRCLVCGLUM6WBLR7NAF
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, Jonathan Cameron <jic23@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Alexandru Ardelean <ardeleanalex@gmail.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 12/12] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LJNN54GLL2BHJWRCLVCGLUM6WBLR7NAF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 29, 2022 at 10:47:23AM +0100, Paul Cercueil wrote:
> Hi Daniel,
>=20
> Le mar., mars 29 2022 at 10:54:43 +0200, Daniel Vetter <daniel@ffwll.ch> a
> =E9crit :
> > On Mon, Feb 07, 2022 at 01:01:40PM +0000, Paul Cercueil wrote:
> > >  Document the new DMABUF based API.
> > >=20
> > >  v2: - Explicitly state that the new interface is optional and is
> > >        not implemented by all drivers.
> > >      - The IOCTLs can now only be called on the buffer FD returned by
> > >        IIO_BUFFER_GET_FD_IOCTL.
> > >      - Move the page up a bit in the index since it is core stuff
> > > and not
> > >        driver-specific.
> > >=20
> > >  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> > >  ---
> > >   Documentation/driver-api/dma-buf.rst |  2 +
> > >   Documentation/iio/dmabuf_api.rst     | 94
> > > ++++++++++++++++++++++++++++
> > >   Documentation/iio/index.rst          |  2 +
> > >   3 files changed, 98 insertions(+)
> > >   create mode 100644 Documentation/iio/dmabuf_api.rst
> > >=20
> > >  diff --git a/Documentation/driver-api/dma-buf.rst
> > > b/Documentation/driver-api/dma-buf.rst
> > >  index 2cd7db82d9fe..d3c9b58d2706 100644
> > >  --- a/Documentation/driver-api/dma-buf.rst
> > >  +++ b/Documentation/driver-api/dma-buf.rst
> > >  @@ -1,3 +1,5 @@
> > >  +.. _dma-buf:
> > >  +
> > >   Buffer Sharing and Synchronization
> > >   =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >=20
> > >  diff --git a/Documentation/iio/dmabuf_api.rst
> > > b/Documentation/iio/dmabuf_api.rst
> > >  new file mode 100644
> > >  index 000000000000..43bb2c1b9fdc
> > >  --- /dev/null
> > >  +++ b/Documentation/iio/dmabuf_api.rst
> > >  @@ -0,0 +1,94 @@
> > >  +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >  +High-speed DMABUF interface for IIO
> > >  +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >  +
> > >  +1. Overview
> > >  +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >  +
> > >  +The Industrial I/O subsystem supports access to buffers through a
> > > file-based
> > >  +interface, with read() and write() access calls through the IIO
> > > device's dev
> > >  +node.
> > >  +
> > >  +It additionally supports a DMABUF based interface, where the
> > > userspace
> > >  +application can allocate and append DMABUF objects to the buffer's
> > > queue.
> > >  +This interface is however optional and is not available in all
> > > drivers.
> > >  +
> > >  +The advantage of this DMABUF based interface vs. the read()
> > >  +interface, is that it avoids an extra copy of the data between the
> > >  +kernel and userspace. This is particularly useful for high-speed
> > >  +devices which produce several megabytes or even gigabytes of data
> > > per
> > >  +second.
> > >  +
> > >  +The data in this DMABUF interface is managed at the granularity of
> > >  +DMABUF objects. Reducing the granularity from byte level to block
> > > level
> > >  +is done to reduce the userspace-kernelspace synchronization
> > > overhead
> > >  +since performing syscalls for each byte at a few Mbps is just not
> > >  +feasible.
> > >  +
> > >  +This of course leads to a slightly increased latency. For this
> > > reason an
> > >  +application can choose the size of the DMABUFs as well as how many
> > > it
> > >  +allocates. E.g. two DMABUFs would be a traditional double buffering
> > >  +scheme. But using a higher number might be necessary to avoid
> > >  +underflow/overflow situations in the presence of scheduling
> > > latencies.
> >=20
> > So this reads a lot like reinventing io-uring with pre-registered
> > O_DIRECT
> > memory ranges. Except it's using dma-buf and hand-rolling a lot of
> > pieces
> > instead of io-uring and O_DIRECT.
>=20
> I don't see how io_uring would help us. It's an async I/O framework, does=
 it
> allow us to access a kernel buffer without copying the data? Does it allow
> us to zero-copy the data to a network interface?

With networking, do you mean rdma, or some other kind of networking?
Anything else than rdma doesn't support dma-buf, and I don't think it will
likely ever do so. Similar it's really tricky to glue dma-buf support into
the block layer.

Wrt io_uring, yes it's async, but that's not the point. The point is that
with io_uring you pre-register ranges for reads and writes to target,
which in combination with O_DIRECT, makes it effectively (and efficient!)
zero-copy. Plus it has full integration with both networking and normal
file io, which dma-buf just doesn't have.

Like you _cannot_ do zero copy from a dma-buf into a normal file. You
absolutely can do the same with io_uring.

> > At least if the entire justification for dma-buf support is zero-copy
> > support between the driver and userspace it's _really_ not the right
> > tool
> > for the job. dma-buf is for zero-copy between devices, with cpu access
> > from userpace (or kernel fwiw) being very much the exception (and often
> > flat-out not supported at all).
>=20
> We want both. Using dma-bufs for the driver/userspace interface is a
> convenience as we then have a unique API instead of two distinct ones.
>=20
> Why should CPU access from userspace be the exception? It works fine for =
IIO
> dma-bufs. You keep warning about this being a terrible design, but I simp=
ly
> don't see it.

It depends really on what you're trying to do, and there's extremely high
chances it will simply not work.

Unless you want to do zero copy with a gpu, or something which is in that
ecosystem of accelerators and devices, then dma-buf is probably not what
you're looking for.
-Daniel

>=20
> Cheers,
> -Paul
>=20
> > >  +
> > >  +2. User API
> > >  +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >  +
> > >  +``IIO_BUFFER_DMABUF_ALLOC_IOCTL(struct iio_dmabuf_alloc_req *)``
> > >  +----------------------------------------------------------------
> > >  +
> > >  +Each call will allocate a new DMABUF object. The return value (if
> > > not
> > >  +a negative errno value as error) will be the file descriptor of
> > > the new
> > >  +DMABUF.
> > >  +
> > >  +``IIO_BUFFER_DMABUF_ENQUEUE_IOCTL(struct iio_dmabuf *)``
> > >  +--------------------------------------------------------
> > >  +
> > >  +Place the DMABUF object into the queue pending for hardware
> > > process.
> > >  +
> > >  +These two IOCTLs have to be performed on the IIO buffer's file
> > >  +descriptor, obtained using the `IIO_BUFFER_GET_FD_IOCTL` ioctl.
> > >  +
> > >  +3. Usage
> > >  +=3D=3D=3D=3D=3D=3D=3D=3D
> > >  +
> > >  +To access the data stored in a block by userspace the block must be
> > >  +mapped to the process's memory. This is done by calling mmap() on
> > > the
> > >  +DMABUF's file descriptor.
> > >  +
> > >  +Before accessing the data through the map, you must use the
> > >  +DMA_BUF_IOCTL_SYNC(struct dma_buf_sync *) ioctl, with the
> > >  +DMA_BUF_SYNC_START flag, to make sure that the data is available.
> > >  +This call may block until the hardware is done with this block.
> > > Once
> > >  +you are done reading or writing the data, you must use this ioctl
> > > again
> > >  +with the DMA_BUF_SYNC_END flag, before enqueueing the DMABUF to the
> > >  +kernel's queue.
> > >  +
> > >  +If you need to know when the hardware is done with a DMABUF, you
> > > can
> > >  +poll its file descriptor for the EPOLLOUT event.
> > >  +
> > >  +Finally, to destroy a DMABUF object, simply call close() on its
> > > file
> > >  +descriptor.
> > >  +
> > >  +For more information about manipulating DMABUF objects, see:
> > > :ref:`dma-buf`.
> > >  +
> > >  +A typical workflow for the new interface is:
> > >  +
> > >  +    for block in blocks:
> > >  +      DMABUF_ALLOC block
> > >  +      mmap block
> > >  +
> > >  +    enable buffer
> > >  +
> > >  +    while !done
> > >  +      for block in blocks:
> > >  +        DMABUF_ENQUEUE block
> > >  +
> > >  +        DMABUF_SYNC_START block
> > >  +        process data
> > >  +        DMABUF_SYNC_END block
> > >  +
> > >  +    disable buffer
> > >  +
> > >  +    for block in blocks:
> > >  +      close block
> > >  diff --git a/Documentation/iio/index.rst
> > > b/Documentation/iio/index.rst
> > >  index 58b7a4ebac51..669deb67ddee 100644
> > >  --- a/Documentation/iio/index.rst
> > >  +++ b/Documentation/iio/index.rst
> > >  @@ -9,4 +9,6 @@ Industrial I/O
> > >=20
> > >      iio_configfs
> > >=20
> > >  +   dmabuf_api
> > >  +
> > >      ep93xx_adc
> > >  --
> > >  2.34.1
> > >=20
> >=20
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
>=20
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
