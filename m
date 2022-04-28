Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E90513719
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 16:40:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CD2448012
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 14:40:15 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 3DB8F3EE1E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Apr 2022 14:40:10 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id p189so3069520wmp.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Apr 2022 07:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VDF1S0swnQgnLGnudgbyWT1rZ74mGW3wr0MnYGtlGFg=;
        b=RDrFgDDPhGeuzvPQOCdfvPZwSWVLp3JfR5m2ohcFjSHpxcbZReFodjhIzj+ng51WgX
         EVs8A9lliHnt+qyNwiiA+aweIJRFnS3iCU16OTWNSLeHxeY6kLFmvzaheiTEevabewzd
         OgfIR0cyv1KxCpIt1yGV4l8sS5EEOssAQV5kg/1fxzMTy2AD+B5+aHb5g63MUyqNAttq
         r3IwuPv213YSE5FhC6J9LPnJJv4mOGiZOohmGgApFBJ6mkrTXEsy7bEYyE+VMq+NHzGJ
         wmQdnt5s1S3CKCdhBI8YqVgL/OPwdqxyFiFueu8f3LXuT0MxbOpar3I1dfg8E4zrWdNg
         7FJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VDF1S0swnQgnLGnudgbyWT1rZ74mGW3wr0MnYGtlGFg=;
        b=dQHMZnE2Kozaw+ytOqeeoI05LQMCYMJQsKSWaWDKcBd5xpQaXbFN/fOrGCvVMUJtU9
         ixJn6H7J+OqjjFUowD/1gGapc6HevamMthRK8OuxYLAAd2bZOoMkJb2sS1sXUjvuCr/A
         jfKr4tjFvk6Lp+/YRHmbhmZHF3dvbdrmcbjSCR4R0QhFoOg6f2BABBNn4DjaViSoGuZt
         BwhgUCj1uLszfJWISFBkBNGTeh6sBfJIL66yjn4K/GjxZYQLPi8+fn3yuxjluQ1QMEgk
         FYfqPQ64WygfG1CU/JPOyjuscemf+04x6FUv6Vu1pkFXR++AKW4bpIqZoNZIUAocoALY
         cmuQ==
X-Gm-Message-State: AOAM530um4vIgtmy0neu6ic9mXXFVsuVjAPplHgnT9SwxhLJQ3lWbvEy
	aLcjm2HZ0IW5C+RUZ8V/n0g=
X-Google-Smtp-Source: ABdhPJxtWdPeuZGHutll5qdwBnskdYy79FMy79IM9OerYE+CBeorGM6cXBANz87spetWLA77cHiYJQ==
X-Received: by 2002:a1c:acc6:0:b0:38e:b184:7721 with SMTP id v189-20020a1cacc6000000b0038eb1847721mr31085601wme.94.1651156809221;
        Thu, 28 Apr 2022 07:40:09 -0700 (PDT)
Received: from orome ([62.96.65.119])
        by smtp.gmail.com with ESMTPSA id bk1-20020a0560001d8100b002061d6bdfd0sm42254wrb.63.2022.04.28.07.40.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 07:40:07 -0700 (PDT)
Date: Thu, 28 Apr 2022 16:40:05 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Cai Huoqing <cai.huoqing@linux.dev>
Message-ID: <YmqnReMMfRxLWK1d@orome>
References: <20220426060808.78225-1-cai.huoqing@linux.dev>
 <20220426060808.78225-5-cai.huoqing@linux.dev>
MIME-Version: 1.0
In-Reply-To: <20220426060808.78225-5-cai.huoqing@linux.dev>
User-Agent: Mutt/2.2.1 (c8109e14) (2022-02-19)
Message-ID-Hash: WHQTLBUJAXZAPXNQZVEBH5HK6UNAJB66
X-Message-ID-Hash: WHQTLBUJAXZAPXNQZVEBH5HK6UNAJB66
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] drm/nvdla/uapi: Add UAPI of NVDLA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WHQTLBUJAXZAPXNQZVEBH5HK6UNAJB66/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6340660816296202268=="


--===============6340660816296202268==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="I49D4SbKWwrxdmO0"
Content-Disposition: inline


--I49D4SbKWwrxdmO0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 26, 2022 at 02:08:01PM +0800, Cai Huoqing wrote:
> The NVIDIA Deep Learning Accelerator (NVDLA) is an open source IP
> which is integrated into NVIDIA Jetson AGX Xavier,
> so add UAPI of this driver.
>=20
> Signed-off-by: Cai Huoqing <cai.huoqing@linux.dev>
> ---
> v1->v2:
> *Rename nvdla_drm.[ch] to nvdla_drv.[ch] and rename nvdla_ioctl.h to nvdl=
a_drm.h,
>  move it to uapi.
>  comments link: https://lore.kernel.org/lkml/20bac605-97e6-e5cd-c4e4-83a8=
121645d8@amd.com/
>=20
>  include/uapi/drm/nvdla_drm.h | 99 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 99 insertions(+)
>  create mode 100644 include/uapi/drm/nvdla_drm.h
>=20
> diff --git a/include/uapi/drm/nvdla_drm.h b/include/uapi/drm/nvdla_drm.h
> new file mode 100644
> index 000000000000..984635285525
> --- /dev/null
> +++ b/include/uapi/drm/nvdla_drm.h
> @@ -0,0 +1,99 @@
> +/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
> +/*
> + * Copyright (C) 2017-2018 NVIDIA CORPORATION.
> + * Copyright (C) 2022 Cai Huoqing
> + */
> +
> +#ifndef __LINUX_NVDLA_IOCTL_H
> +#define __LINUX_NVDLA_IOCTL_H
> +
> +#include <linux/ioctl.h>
> +#include <linux/types.h>
> +
> +#if !defined(__KERNEL__)
> +#define __user
> +#endif
> +
> +/**
> + * struct nvdla_mem_handle structure for memory handles
> + *
> + * @handle		handle to DMA buffer allocated in userspace
> + * @reserved		Reserved for padding
> + * @offset		offset in bytes from start address of buffer
> + *
> + */
> +struct nvdla_mem_handle {
> +	__u32 handle;
> +	__u32 reserved;
> +	__u64 offset;
> +};
> +
> +/**
> + * struct nvdla_ioctl_submit_task structure for single task information
> + *
> + * @num_addresses		total number of entries in address_list
> + * @reserved			Reserved for padding
> + * @address_list		pointer to array of struct nvdla_mem_handle
> + *
> + */
> +struct nvdla_ioctl_submit_task {
> +#define NVDLA_MAX_BUFFERS_PER_TASK (6144)

This is an odd number. Can you clarify where this limitation comes from?
I say "limitation" here because, again, I'm no expert on DLA and I don't
know what a typical workload would look like. 6144 is a lot of buffers,
but are these tasks typically using a few large buffers or many small
buffers?

> +	__u32 num_addresses;
> +#define NVDLA_NO_TIMEOUT    (0xffffffff)
> +	__u32 timeout;
> +	__u64 address_list;
> +};

So if a task is basically just a collection of DMA buffers, is the
userspace supposed to fill some of those buffers with metadata to
determine what the task is about? If so, is this something that the
DLA firmware/hardware knows how to parse?

> +/**
> + * struct nvdla_submit_args structure for task submit
> + *
> + * @tasks		pointer to array of struct nvdla_ioctl_submit_task
> + * @num_tasks		number of entries in tasks
> + * @flags		flags for task submit, no flags defined yet
> + * @version		version of task structure
> + *
> + */
> +struct nvdla_submit_args {
> +	__u64 tasks;
> +	__u16 num_tasks;
> +#define NVDLA_MAX_TASKS_PER_SUBMIT	24

Perhaps worth clarifying if this is a hardware restriction or an
arbitrary software limit. Is this perhaps worth parameterizing somehow
if this can potentially change in newer versions of DLA?

> +#define NVDLA_SUBMIT_FLAGS_ATOMIC	(1 << 0)

What exactly does atomicity imply here? Should this be described in a
comment?

Thierry

> +	__u16 flags;
> +	__u32 version;
> +};
> +
> +/**
> + * struct nvdla_gem_create_args for allocating DMA buffer through GEM
> + *
> + * @handle		handle updated by kernel after allocation
> + * @flags		implementation specific flags
> + * @size		size of buffer to allocate
> + */
> +struct nvdla_gem_create_args {
> +	__u32 handle;
> +	__u32 flags;
> +	__u64 size;
> +};
> +
> +/**
> + * struct nvdla_gem_map_offset_args for mapping DMA buffer
> + *
> + * @handle		handle of the buffer
> + * @reserved		reserved for padding
> + * @offset		offset updated by kernel after mapping
> + */
> +struct nvdla_gem_map_offset_args {
> +	__u32 handle;
> +	__u32 reserved;
> +	__u64 offset;
> +};
> +
> +#define DRM_NVDLA_SUBMIT		0x00
> +#define DRM_NVDLA_GEM_CREATE	0x01
> +#define DRM_NVDLA_GEM_MMAP		0x02
> +
> +#define DRM_IOCTL_NVDLA_SUBMIT DRM_IOWR(DRM_COMMAND_BASE + DRM_NVDLA_SUB=
MIT, struct nvdla_submit_args)
> +#define DRM_IOCTL_NVDLA_GEM_CREATE DRM_IOWR(DRM_COMMAND_BASE + DRM_NVDLA=
_GEM_CREATE, struct nvdla_gem_create_args)
> +#define DRM_IOCTL_NVDLA_GEM_MMAP DRM_IOWR(DRM_COMMAND_BASE + DRM_NVDLA_G=
EM_MMAP, struct nvdla_gem_map_offset_args)
> +
> +#endif
> --=20
> 2.25.1
>=20

--I49D4SbKWwrxdmO0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmJqp0UACgkQ3SOs138+
s6Gunw//TuYX49xRu9m3TkkQzqiVSDRnyRXCsPVWQi7j7LYGtX4PYetlK7GohlSe
sejyf2OfBq49Q+Oaj6fNjvyYCl0r8oQA/ja+Wd7kf/PdMLP96PzaFNIqOO895eLJ
x63U9QqdgXgZXGLokN1RmtsUz2JIaIiYK5RVAj8qxg7csnvcM0VhBaulfI7hUDAP
E4Hc32TOvT/v205Sy7RuQYiT1deBrBYdSQ6bC/VM0oTHKP0uFW7OwlajAaU6/bCb
AgnntlH3cth85S4wkWXwkMzEpUdNyEqlsbEQR+qY26JSbZ3Fy+5sVNSQLLEw0sOs
hqPuIP1shji2SVMoFRs1Lf4AmMnYB8n2MUZyRsgGqqFZ9UN+QVtK5hMnMxQGqcOH
y5cA/2dZoYS5qxtOhnT10jEiW5ve3taZROIJHHuGSyohVKJepQ9JT9jMe8UrtSSV
W5qmsqXMjCfVet96Fb2qp4JxVXA8WpDGEkj2RYWj50mIrhO0m4hBKdA4A70x63nR
Xa1u4d0zMkDvh1Cb4MnU/dBh0GnDwRLk4CedfG/XTsqpyErJzWNVRW1qUIy2BtQV
GNpk9hvoZ4Xc6yjJEyzs+vUIm1fz3pGcHif/oz/48l/gfe/shIHnZtrE4+lomYwN
Usrfpc5pYT/ylIQyZXCoF1IENb8BtD/7kpuYMwS5mRGtfnJQS1w=
=08Yf
-----END PGP SIGNATURE-----

--I49D4SbKWwrxdmO0--

--===============6340660816296202268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6340660816296202268==--
