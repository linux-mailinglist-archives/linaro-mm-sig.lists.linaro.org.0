Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D78944B87DF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:42:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CFBD3EECF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:42:32 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 196223ECBC
	for <linaro-mm-sig@lists.linaro.org>; Sat, 12 Feb 2022 07:19:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0D13EB82A98;
	Sat, 12 Feb 2022 07:19:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7399BC340F6;
	Sat, 12 Feb 2022 07:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1644650370;
	bh=fhuC77eYCkAqlGGGwVlWE8Ct6apx/c0HPnyA5bPYWI0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SKf8uxp7qr1huh/b9rmhZA8SDUlctbo1KuMYNMSpxkSEX1IQtB4c/q6zzPaWGjI/L
	 jOPB9Sjn/ArZ+a3qliza94LcQAQ2aBGXSpMP2Nk+2hbTEuTVMSB0WyYEStJda/8QrA
	 gac9s/gJGTQWroDZ92oKLhXOlEXfPG2vnrw7mYv8=
Date: Sat, 12 Feb 2022 08:19:23 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <Ygdfe3XSvN8iFuUc@kroah.com>
References: <20220211161831.3493782-1-tjmercier@google.com>
 <20220211161831.3493782-7-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220211161831.3493782-7-tjmercier@google.com>
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: 6CERSJVSY4FXCMQYP4WRJ6R5SEZEZG3S
X-Message-ID-Hash: 6CERSJVSY4FXCMQYP4WRJ6R5SEZEZG3S
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:29 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.ke
 rnel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 6/6] android: binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6CERSJVSY4FXCMQYP4WRJ6R5SEZEZG3S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 11, 2022 at 04:18:29PM +0000, T.J. Mercier wrote:
> This patch introduces a buffer flag BINDER_BUFFER_FLAG_SENDER_NO_NEED
> that a process sending an fd array to another process over binder IPC
> can set to relinquish ownership of the fds being sent for memory
> accounting purposes. If the flag is found to be set during the fd array
> translation and the fd is for a DMA-BUF, the buffer is uncharged from
> the sender's cgroup and charged to the receiving process's cgroup
> instead.
>=20
> It is up to the sending process to ensure that it closes the fds
> regardless of whether the transfer failed or succeeded.
>=20
> Most graphics shared memory allocations in Android are done by the
> graphics allocator HAL process. On requests from clients, the HAL process
> allocates memory and sends the fds to the clients over binder IPC.
> The graphics allocator HAL will not retain any references to the
> buffers. When the HAL sets the BINDER_BUFFER_FLAG_SENDER_NO_NEED for fd
> arrays holding DMA-BUF fds, the gpu cgroup controller will be able to
> correctly charge the buffers to the client processes instead of the
> graphics allocator HAL.
>=20
> From: Hridya Valsaraju <hridya@google.com>
> Signed-off-by: Hridya Valsaraju <hridya@google.com>
> Co-developed-by: T.J. Mercier <tjmercier@google.com>
> Signed-off-by: T.J. Mercier <tjmercier@google.com>
> ---
> changes in v2
> - Move dma-buf cgroup charge transfer from a dma_buf_op defined by every
> heap to a single dma-buf function for all heaps per Daniel Vetter and
> Christian K=F6nig.
>=20
>  drivers/android/binder.c            | 26 ++++++++++++++++++++++++++
>  include/uapi/linux/android/binder.h |  1 +
>  2 files changed, 27 insertions(+)
>=20
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 8351c5638880..f50d88ded188 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -42,6 +42,7 @@
> =20
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> =20
> +#include <linux/dma-buf.h>
>  #include <linux/fdtable.h>
>  #include <linux/file.h>
>  #include <linux/freezer.h>
> @@ -2482,8 +2483,10 @@ static int binder_translate_fd_array(struct list_h=
ead *pf_head,
>  {
>  	binder_size_t fdi, fd_buf_size;
>  	binder_size_t fda_offset;
> +	bool transfer_gpu_charge =3D false;
>  	const void __user *sender_ufda_base;
>  	struct binder_proc *proc =3D thread->proc;
> +	struct binder_proc *target_proc =3D t->to_proc;
>  	int ret;
> =20
>  	fd_buf_size =3D sizeof(u32) * fda->num_fds;
> @@ -2521,8 +2524,15 @@ static int binder_translate_fd_array(struct list_h=
ead *pf_head,
>  	if (ret)
>  		return ret;
> =20
> +	if (IS_ENABLED(CONFIG_CGROUP_GPU) &&
> +		parent->flags & BINDER_BUFFER_FLAG_SENDER_NO_NEED)
> +		transfer_gpu_charge =3D true;
> +
>  	for (fdi =3D 0; fdi < fda->num_fds; fdi++) {
>  		u32 fd;
> +		struct dma_buf *dmabuf;
> +		struct gpucg *gpucg;
> +
>  		binder_size_t offset =3D fda_offset + fdi * sizeof(fd);
>  		binder_size_t sender_uoffset =3D fdi * sizeof(fd);
> =20
> @@ -2532,6 +2542,22 @@ static int binder_translate_fd_array(struct list_h=
ead *pf_head,
>  						  in_reply_to);
>  		if (ret)
>  			return ret > 0 ? -EINVAL : ret;
> +
> +		if (!transfer_gpu_charge)
> +			continue;
> +
> +		dmabuf =3D dma_buf_get(fd);
> +		if (IS_ERR(dmabuf))
> +			continue;
> +
> +		gpucg =3D gpucg_get(target_proc->tsk);
> +		ret =3D dma_buf_charge_transfer(dmabuf, gpucg);
> +		if (ret) {
> +			pr_warn("%d:%d Unable to transfer DMA-BUF fd charge to %d",
> +				proc->pid, thread->pid, target_proc->pid);
> +			gpucg_put(gpucg);
> +		}
> +		dma_buf_put(dmabuf);
>  	}
>  	return 0;
>  }
> diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/and=
roid/binder.h
> index 3246f2c74696..169fd5069a1a 100644
> --- a/include/uapi/linux/android/binder.h
> +++ b/include/uapi/linux/android/binder.h
> @@ -137,6 +137,7 @@ struct binder_buffer_object {
> =20
>  enum {
>  	BINDER_BUFFER_FLAG_HAS_PARENT =3D 0x01,
> +	BINDER_BUFFER_FLAG_SENDER_NO_NEED =3D 0x02,
>  };
> =20
>  /* struct binder_fd_array_object - object describing an array of fds in =
a buffer
> --=20
> 2.35.1.265.g69c8d7142f-goog
>=20

How does userspace know that binder supports this new flag?  And where
is the userspace test for this new feature?  Isn't there a binder test
framework somewhere?

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
