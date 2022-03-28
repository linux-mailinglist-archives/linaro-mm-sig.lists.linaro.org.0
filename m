Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9240F4EC4AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:42:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDA923EC73
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:42:21 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 20CDE3ECAA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 20:46:39 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id r13so31126802ejd.5
        for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 13:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JtOIKDwYEmY0G6ZwVjCPJc+EKV3kxgQ9Fb0rQsgCgxk=;
        b=Au6XxjoO3TuN885D6RISvoi4b+Imy6m9ma8wBo5nZXyzrl8us8an+07UXpqcYW8zs0
         MCSmvT+BgeqF+LC5cDbAfNpCwtLF5xXOPMaS88l46OSA1XZAyK5odoPL2mbvJ6cB4vSl
         o1GWvonXJuK6WI14daDAyrKhkAi2IwZs9OFfthpp9zgCke8yrCTZm95PoWNuAOFPK+d/
         SOtOyAdzCfpdQ3lGnMfmrpx1n2bZellSprH310zAmA2p10nge7zkW5yvynqjJUTrYqLj
         Ef4LLKkBC/m64hzJyhYmDT+bEFN9A8v++0Xe/yWHq8Gquj0Yw/CTSjM09awB/tS3ohu6
         ZXSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JtOIKDwYEmY0G6ZwVjCPJc+EKV3kxgQ9Fb0rQsgCgxk=;
        b=IsyTzLFsF0EJhWPd1HI3MukU8vuIXh029UVj2jKZn/MUnuy+ebHD98yu1rD0PjVWAJ
         AtoKxZmWQROCglGeb+5dLlNmp/+5IUSIgfhEs5QHkmGpAmL1GkeuKYRrDVLOnw+2zwki
         TWc6rzb+AS6u7SERaSuVZ7Zl/3lksYNKsaE29F2vNzmGypZevbuNc/DX3ifbB8sK8CaB
         PsxVwN8oQ8SF9OCU6a9Tn9fcIsubQuBNqVLwU4EKm4ixU8rtJJizC+mLalmV4BivJGm6
         d488RWyxYq3pI6UEca0A3FxRrl68QI4pFeAC2Yy60PgERGi8OcbqE5A9+RzlnbNORMIy
         mWKA==
X-Gm-Message-State: AOAM5312fSw0FsR1XSs2OGZxJi7KzB/Z06fzIIR4+L5Htb0twvJDvOdj
	75zsK+PowzkESkRwZGUlv0FfDJnhozppttuAA9A=
X-Google-Smtp-Source: ABdhPJxuunfwUkBAnwXYx6Ny/ga6aWVlv3hTy52B/L+8KibeTrMHKVtaauHv16KEa6mM9fV/P7rh8AZODW2UuLnRBgI=
X-Received: by 2002:a17:907:e8d:b0:6e0:19e7:9549 with SMTP id
 ho13-20020a1709070e8d00b006e019e79549mr30132608ejc.44.1648500398124; Mon, 28
 Mar 2022 13:46:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220207125933.81634-1-paul@crapouillou.net> <20220207125933.81634-6-paul@crapouillou.net>
In-Reply-To: <20220207125933.81634-6-paul@crapouillou.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 28 Mar 2022 23:46:02 +0300
Message-ID: <CAHp75Vf8QhosJw79U97rA6u0KHY9avmzTMBUqEyWkY6jxBuPYg@mail.gmail.com>
To: Paul Cercueil <paul@crapouillou.net>
X-MailFrom: andy.shevchenko@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4YUCDDNC3QH6HKJAJI2QQ3C4AWTYRCYC
X-Message-ID-Hash: 4YUCDDNC3QH6HKJAJI2QQ3C4AWTYRCYC
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:40:55 +0000
CC: Jonathan Cameron <jic23@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Documentation List <linux-doc@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-iio <linux-iio@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 05/12] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4YUCDDNC3QH6HKJAJI2QQ3C4AWTYRCYC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Feb 8, 2022 at 5:26 PM Paul Cercueil <paul@crapouillou.net> wrote:
>
> Add the necessary infrastructure to the IIO core to support a new
> optional DMABUF based interface.
>
> The advantage of this new DMABUF based interface vs. the read()
> interface, is that it avoids an extra copy of the data between the
> kernel and userspace. This is particularly userful for high-speed

useful

> devices which produce several megabytes or even gigabytes of data per
> second.
>
> The data in this new DMABUF interface is managed at the granularity of
> DMABUF objects. Reducing the granularity from byte level to block level
> is done to reduce the userspace-kernelspace synchronization overhead
> since performing syscalls for each byte at a few Mbps is just not
> feasible.
>
> This of course leads to a slightly increased latency. For this reason an
> application can choose the size of the DMABUFs as well as how many it
> allocates. E.g. two DMABUFs would be a traditional double buffering
> scheme. But using a higher number might be necessary to avoid
> underflow/overflow situations in the presence of scheduling latencies.
>
> As part of the interface, 2 new IOCTLs have been added:
>
> IIO_BUFFER_DMABUF_ALLOC_IOCTL(struct iio_dmabuf_alloc_req *):
>  Each call will allocate a new DMABUF object. The return value (if not
>  a negative errno value as error) will be the file descriptor of the new
>  DMABUF.
>
> IIO_BUFFER_DMABUF_ENQUEUE_IOCTL(struct iio_dmabuf *):
>  Place the DMABUF object into the queue pending for hardware process.
>
> These two IOCTLs have to be performed on the IIO buffer's file
> descriptor, obtained using the IIO_BUFFER_GET_FD_IOCTL() ioctl.
>
> To access the data stored in a block by userspace the block must be
> mapped to the process's memory. This is done by calling mmap() on the
> DMABUF's file descriptor.
>
> Before accessing the data through the map, you must use the
> DMA_BUF_IOCTL_SYNC(struct dma_buf_sync *) ioctl, with the
> DMA_BUF_SYNC_START flag, to make sure that the data is available.
> This call may block until the hardware is done with this block. Once
> you are done reading or writing the data, you must use this ioctl again
> with the DMA_BUF_SYNC_END flag, before enqueueing the DMABUF to the
> kernel's queue.
>
> If you need to know when the hardware is done with a DMABUF, you can
> poll its file descriptor for the EPOLLOUT event.
>
> Finally, to destroy a DMABUF object, simply call close() on its file
> descriptor.

...

> v2: Only allow the new IOCTLs on the buffer FD created with
>     IIO_BUFFER_GET_FD_IOCTL().

Move changelogs after the cutter '--- ' line.

...

>  static const struct file_operations iio_buffer_chrdev_fileops = {
>         .owner = THIS_MODULE,
>         .llseek = noop_llseek,
>         .read = iio_buffer_read,
>         .write = iio_buffer_write,
> +       .unlocked_ioctl = iio_buffer_chrdev_ioctl,

> +       .compat_ioctl = compat_ptr_ioctl,

Is this member always available (implying the kernel configuration)?

...

> +#define IIO_BUFFER_DMABUF_SUPPORTED_FLAGS      0x00000000

No flags available right now?

...

> + * @bytes_used:        number of bytes used in this DMABUF for the data transfer.
> + *             If zero, the full buffer is used.

Wouldn't be error prone to have 0 defined like this?

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
