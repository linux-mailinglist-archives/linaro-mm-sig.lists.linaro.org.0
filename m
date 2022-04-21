Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 83236511C52
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Apr 2022 18:17:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6FBB47FC8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Apr 2022 16:17:13 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	by lists.linaro.org (Postfix) with ESMTPS id D4CC53EF13
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Apr 2022 18:28:45 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id r83so5356877pgr.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Apr 2022 11:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Sqioiy8FTVIwwfgTrHoYKbgJrbPNKg5lpVy2JdR4EHU=;
        b=gX6IxUwKDSgUOrXLTiECcpA3Rp48wGxfgveQhWleNt2G3dILaJc7TVhv8vFGVxEaVi
         wfheNUizycAF5wCMRaBvqgTP3V27a1ohLtxvHpRlhbQDLXoE4BT1zxOmVKVhlvggvxD8
         xBKKCYXGGarCUjyHuEo39d2CON29e1o3eIsp/F33Pk8UOvQlPrrVxrJ19w7FqJzHsyBq
         aA6F2c+bBR9zHjvgNNjT4A6mNFBu2jia5hbCy32kvSIkc+As4VWEhQemAqWBBVdBNled
         r8iHp9BpG8kcfHIzDk1y0ELM0+HKHZvTjASj9vKr6JrzOXK14OHdpvwzUTP3LOun+0sy
         4ijg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Sqioiy8FTVIwwfgTrHoYKbgJrbPNKg5lpVy2JdR4EHU=;
        b=uwSSoqXGjgC3xCJLtGfXvtpydmSygMIgw65TcXPSP2X+v24ZY5ghFzhrrHzvDaTiTt
         6qPTGlKaJI1ybcu2Jc1aO9hXtLgpctYDnFEmqOJrgt3Odk8lPQq2bHDq8S3GA036gnXN
         Oy7A3qcpiBPAWFIz6zck7mWMPwKhglGoGxiHe1fMUof1JmIQaShU31p34s17eAWdfCD7
         w2v0qhaGBPbB9VbqgjIkWPATmAkXC8lJG5LenqBfDpQ4w0YdjXRH7tD35yMuWcKCNRrj
         ItP8d0xuAC8ilMz4C4Zj0390sXpUTAi4kKRmT6Da7d/GXOoRCHp1vFNvo49omt2d9mBS
         jxrg==
X-Gm-Message-State: AOAM531Iw1ZM9o74gvUNnyHitNrqB+rwdw1hHVDyz6QF97Mm0JJXQoc0
	z8E1nEe5gCydngk8wKNyx8bgHw==
X-Google-Smtp-Source: ABdhPJxepqVRb/L/wsoSRAnZEmxspQCHxD1CdYluXSymWq1W4Cyc26xyjzczEUvd8gXIIPzMw4rFqA==
X-Received: by 2002:a05:6a00:b87:b0:50a:5ff2:bb2d with SMTP id g7-20020a056a000b8700b0050a5ff2bb2dmr944441pfj.68.1650565724550;
        Thu, 21 Apr 2022 11:28:44 -0700 (PDT)
Received: from google.com (201.59.83.34.bc.googleusercontent.com. [34.83.59.201])
        by smtp.gmail.com with ESMTPSA id fv9-20020a17090b0e8900b001cd4989febcsm3506238pjb.8.2022.04.21.11.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 11:28:44 -0700 (PDT)
Date: Thu, 21 Apr 2022 18:28:40 +0000
From: Carlos Llamas <cmllamas@google.com>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <YmGiNh0DDIcwcnVl@google.com>
References: <20220420235228.2767816-1-tjmercier@google.com>
 <20220420235228.2767816-6-tjmercier@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220420235228.2767816-6-tjmercier@google.com>
X-MailFrom: cmllamas@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B463LHJFQ54HXPGWV7JD5AQAE6QYM4ML
X-Message-ID-Hash: B463LHJFQ54HXPGWV7JD5AQAE6QYM4ML
X-Mailman-Approved-At: Wed, 27 Apr 2022 16:17:08 +0000
CC: daniel@ffwll.ch, tj@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, jstultz@google.com, kaleshsingh@google.com, Kenny.Ho@amd.com, mkoutny@suse.com, skhan@linuxfoundation.org, kernel-team@android.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v5 5/6] binder: Add flags to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B463LHJFQ54HXPGWV7JD5AQAE6QYM4ML/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 20, 2022 at 11:52:23PM +0000, T.J. Mercier wrote:
> From: Hridya Valsaraju <hridya@google.com>
>=20
> This patch introduces flags BINDER_FD_FLAG_SENDER_NO_NEED, and
> BINDER_FDA_FLAG_SENDER_NO_NEED that a process sending an individual
> fd or fd array to another process over binder IPC can set to relinquish
> ownership of the fds being sent for memory accounting purposes. If the
> flag is found to be set during the fd or fd array translation and the
> fd is for a DMA-BUF, the buffer is uncharged from the sender's cgroup
> and charged to the receiving process's cgroup instead.
>=20
> It is up to the sending process to ensure that it closes the fds
> regardless of whether the transfer failed or succeeded.
>=20
> Most graphics shared memory allocations in Android are done by the
> graphics allocator HAL process. On requests from clients, the HAL process
> allocates memory and sends the fds to the clients over binder IPC.
> The graphics allocator HAL will not retain any references to the
> buffers. When the HAL sets *_FLAG_SENDER_NO_NEED for fd arrays holding
> DMA-BUF fds, or individual fd objects, the gpu cgroup controller will
> be able to correctly charge the buffers to the client processes instead
> of the graphics allocator HAL.
>=20
> Since this is a new feature exposed to userspace, the kernel and userspace
> must be compatible for the accounting to work for transfers. In all cases
> the allocation and transport of DMA buffers via binder will succeed, but
> only when both the kernel supports, and userspace depends on this feature
> will the transfer accounting work. The possible scenarios are detailed
> below:

New binder driver features which require userspace coordination can be
"advertised" by the kernel via binderfs. You can see an example of how
oneway_spam_detection is exposed in commit fc470abf54b2 ("binderfs: add
support for feature files"). This is just an option to consider if it
makes things easier in userspace. Although it seems that for the second
scenario (old kernel + new userpsace) the flags would just be ignored.

>=20
> 1. new kernel + old userspace
> The kernel supports the feature but userspace does not use it. The old
> userspace won't mount the new cgroup controller, accounting is not
> performed, charge is not transferred.
>=20
> 2. old kernel + new userspace
> The new cgroup controller is not supported by the kernel, accounting is
> not performed, charge is not transferred.
>=20
> 3. old kernel + old userspace
> Same as #2
>=20
> 4. new kernel + new userspace
> Cgroup is mounted, feature is supported and used.
>=20
> Signed-off-by: Hridya Valsaraju <hridya@google.com>
> Signed-off-by: T.J. Mercier <tjmercier@google.com>
>=20
> ---
> v5 changes
> Support both binder_fd_array_object and binder_fd_object. This is
> necessary because new versions of Android will use binder_fd_object
> instead of binder_fd_array_object, and we need to support both.
>=20
> Use the new, simpler dma_buf_transfer_charge API.
>=20
> v3 changes
> Remove android from title per Todd Kjos.
>=20
> Use more common dual author commit message format per John Stultz.
>=20
> Include details on behavior for all combinations of kernel/userspace
> versions in changelog (thanks Suren Baghdasaryan) per Greg Kroah-Hartman.
>=20
> v2 changes
> Move dma-buf cgroup charge transfer from a dma_buf_op defined by every
> heap to a single dma-buf function for all heaps per Daniel Vetter and
> Christian K=F6nig.
> ---
>  drivers/android/binder.c            | 27 +++++++++++++++++++++++----
>  drivers/dma-buf/dma-buf.c           |  4 ++--
>  include/linux/dma-buf.h             |  2 +-
>  include/uapi/linux/android/binder.h | 23 +++++++++++++++++++----
>  4 files changed, 45 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 8351c5638880..b07d50fe1c80 100644
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
> @@ -2170,7 +2171,7 @@ static int binder_translate_handle(struct flat_bind=
er_object *fp,
>  	return ret;
>  }
> =20
> -static int binder_translate_fd(u32 fd, binder_size_t fd_offset,
> +static int binder_translate_fd(u32 fd, binder_size_t fd_offset, __u32 fl=
ags,
>  			       struct binder_transaction *t,
>  			       struct binder_thread *thread,
>  			       struct binder_transaction *in_reply_to)
> @@ -2208,6 +2209,23 @@ static int binder_translate_fd(u32 fd, binder_size=
_t fd_offset,
>  		goto err_security;
>  	}
> =20
> +	if (IS_ENABLED(CONFIG_CGROUP_GPU) && (flags & BINDER_FD_FLAG_SENDER_NO_=
NEED)) {
> +		if (is_dma_buf_file(file)) {
> +			struct dma_buf *dmabuf =3D file->private_data;
> +
> +			ret =3D dma_buf_transfer_charge(dmabuf, target_proc->tsk);
> +			if (ret)
> +				pr_warn("%d:%d Unable to transfer DMA-BUF fd charge to %d\n",
> +					proc->pid, thread->pid, target_proc->pid);

If we fail to transfer the charge, it seems we continue with the fixup
allocation and then propagate the error. Shouldn't the translation be
aborted at this point instead? Or is this supposed to be handled?

> +		} else {

nit: negating is_dma_buf_file() check eliminates the "else" here.

> +			binder_user_error(
> +				"%d:%d got transaction with SENDER_NO_NEED for non-dmabuf fd, %d\n",
> +				proc->pid, thread->pid, fd);
> +			ret =3D -EINVAL;
> +			goto err_noneed;
> +		}
> +	}
> +
>  	/*
>  	 * Add fixup record for this transaction. The allocation
>  	 * of the fd in the target needs to be done from a
> @@ -2226,6 +2244,7 @@ static int binder_translate_fd(u32 fd, binder_size_=
t fd_offset,
>  	return ret;
> =20
>  err_alloc:
> +err_noneed:
>  err_security:
>  	fput(file);
>  err_fget:
> @@ -2528,7 +2547,7 @@ static int binder_translate_fd_array(struct list_he=
ad *pf_head,
> =20
>  		ret =3D copy_from_user(&fd, sender_ufda_base + sender_uoffset, sizeof(=
fd));
>  		if (!ret)
> -			ret =3D binder_translate_fd(fd, offset, t, thread,
> +			ret =3D binder_translate_fd(fd, offset, fda->flags, t, thread,
>  						  in_reply_to);
>  		if (ret)
>  			return ret > 0 ? -EINVAL : ret;
> @@ -3179,8 +3198,8 @@ static void binder_transaction(struct binder_proc *=
proc,
>  			struct binder_fd_object *fp =3D to_binder_fd_object(hdr);
>  			binder_size_t fd_offset =3D object_offset +
>  				(uintptr_t)&fp->fd - (uintptr_t)fp;
> -			int ret =3D binder_translate_fd(fp->fd, fd_offset, t,
> -						      thread, in_reply_to);
> +			int ret =3D binder_translate_fd(fp->fd, fd_offset, fp->flags,
> +						      t, thread, in_reply_to);
> =20
>  			fp->pad_binder =3D 0;
>  			if (ret < 0 ||
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index f3fb844925e2..36ed6cd4ddcc 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -31,7 +31,6 @@
> =20
>  #include "dma-buf-sysfs-stats.h"
> =20
> -static inline int is_dma_buf_file(struct file *);
> =20
>  struct dma_buf_list {
>  	struct list_head head;
> @@ -400,10 +399,11 @@ static const struct file_operations dma_buf_fops =
=3D {
>  /*
>   * is_dma_buf_file - Check if struct file* is associated with dma_buf
>   */
> -static inline int is_dma_buf_file(struct file *file)
> +int is_dma_buf_file(struct file *file)
>  {
>  	return file->f_op =3D=3D &dma_buf_fops;
>  }
> +EXPORT_SYMBOL_NS_GPL(is_dma_buf_file, DMA_BUF);
> =20
>  static struct file *dma_buf_getfile(struct dma_buf *dmabuf, int flags)
>  {
> diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> index 438ad8577b76..2b9812758fee 100644
> --- a/include/linux/dma-buf.h
> +++ b/include/linux/dma-buf.h
> @@ -614,7 +614,7 @@ dma_buf_attachment_is_dynamic(struct dma_buf_attachme=
nt *attach)
>  {
>  	return !!attach->importer_ops;
>  }
> -
> +int is_dma_buf_file(struct file *file);
>  struct dma_buf_attachment *dma_buf_attach(struct dma_buf *dmabuf,
>  					  struct device *dev);
>  struct dma_buf_attachment *
> diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/and=
roid/binder.h
> index 11157fae8a8e..b263cbb603ea 100644
> --- a/include/uapi/linux/android/binder.h
> +++ b/include/uapi/linux/android/binder.h
> @@ -91,14 +91,14 @@ struct flat_binder_object {
>  /**
>   * struct binder_fd_object - describes a filedescriptor to be fixed up.
>   * @hdr:	common header structure
> - * @pad_flags:	padding to remain compatible with old userspace code

Does this mean we no longer need to keep the compatibility with the "old
userspace code"? Maybe these old flags are all less than 0x2000?

> + * @flags:	One or more BINDER_FD_FLAG_* flags
>   * @pad_binder:	padding to remain compatible with old userspace code
>   * @fd:		file descriptor
>   * @cookie:	opaque data, used by user-space
>   */
>  struct binder_fd_object {
>  	struct binder_object_header	hdr;
> -	__u32				pad_flags;
> +	__u32				flags;
>  	union {
>  		binder_uintptr_t	pad_binder;
>  		__u32			fd;
> @@ -107,6 +107,17 @@ struct binder_fd_object {
>  	binder_uintptr_t		cookie;
>  };
> =20
> +enum {
> +	/**
> +	 * @BINDER_FD_FLAG_SENDER_NO_NEED
> +	 *
> +	 * When set, the sender of a binder_fd_object wishes to relinquish owne=
rship of the fd for
> +	 * memory accounting purposes. If the fd is for a DMA-BUF, the buffer i=
s uncharged from the
> +	 * sender's cgroup and charged to the receiving process's cgroup instea=
d.
> +	 */
> +	BINDER_FD_FLAG_SENDER_NO_NEED =3D 0x2000,

SENDER_NO_NEED wasn't straight-forward for me. Perhaps RELINQUISH or
XFER_{OWNER|CHARGE|CGROUP} could be some other options to consider.

> +};
> +
>  /* struct binder_buffer_object - object describing a userspace buffer
>   * @hdr:		common header structure
>   * @flags:		one or more BINDER_BUFFER_* flags
> @@ -141,7 +152,7 @@ enum {
> =20
>  /* struct binder_fd_array_object - object describing an array of fds in =
a buffer
>   * @hdr:		common header structure
> - * @pad:		padding to ensure correct alignment
> + * flags:		One or more BINDER_FDA_FLAG_* flags
>   * @num_fds:		number of file descriptors in the buffer
>   * @parent:		index in offset array to buffer holding the fd array
>   * @parent_offset:	start offset of fd array in the buffer
> @@ -162,12 +173,16 @@ enum {
>   */
>  struct binder_fd_array_object {
>  	struct binder_object_header	hdr;
> -	__u32				pad;
> +	__u32				flags;
>  	binder_size_t			num_fds;
>  	binder_size_t			parent;
>  	binder_size_t			parent_offset;
>  };
> =20
> +enum {
> +	BINDER_FDA_FLAG_SENDER_NO_NEED =3D BINDER_FD_FLAG_SENDER_NO_NEED,
> +};
> +
>  /*
>   * On 64-bit platforms where user code may run in 32-bits the driver must
>   * translate the buffer (and local binder) addresses appropriately.
> --=20
> 2.36.0.rc0.470.gd361397f0d-goog
>=20

Other than included minor comments:

Reviewed-by: Carlos Llamas <cmllamas@google.com>

--
Carlos Llamas
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
