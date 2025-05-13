Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 802CDAB5929
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 17:55:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D531413D9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 15:55:31 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 9B7C540FBD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 May 2025 15:55:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=qzYU3ESW;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43d5f10e1aaso74935e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 May 2025 08:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747151716; x=1747756516; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yRTXNt5wlx4Ttr6BURqRzslfwPuD5g2S42H+azbd12o=;
        b=qzYU3ESWiYdAocH5/8Fi98BM4t58lUyMJHH+3vuwfLB3dg0ys7EW6/BSBIhgdWFBNN
         HaJwzc5p1nX/5ZBTKZAAOB4cDnR+mc6EjEsTdkF/qPCPKkcVBW292tCMspgrBRHusM6A
         oV9OHb+ykZY3BilcrGwXx+Lbw1MQlhm0xnNxkAaRUZBjiifhaT0EPkSp9FkYHNQkN6Mc
         YFPmVYsr9hj5Ame4PiA30tvBnjLBaqvqaM1tahKpkYvCrByl4g+aSshis0It5dgVPwk/
         KQZ36eiGZRSenyk0Q6skpbDB4Q7uIl00+eo1Sd5oiokBNUi5a80q57eE51a+A0m3Tvaz
         dXkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747151716; x=1747756516;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yRTXNt5wlx4Ttr6BURqRzslfwPuD5g2S42H+azbd12o=;
        b=l75kgwtlws9HZvSYeohFZF/mTifgxtodsRUBjQe3TIr3l83uvwf/JZRM2ZNT/jwCtX
         3WpdODOw6hokemae4kQ6q8qKHUHhLzWRP/Eyjb9nYVtXrfbsrsjJZBYsREhDF5oE+LU/
         9dIdLfDQNIQ1JIAIzbW8pSaQQnVxT97Ozh8XdZfATexNoV9RcxGNloVjfi+2FbH5ULaO
         xTs6oV//X4dHn2R9IkiUngfLZV5ETWLXwZb7qTOo7xNwjIa+szv1Hit653k4IGa07tgs
         vAzbV1ee2IaMVvv69orUgiu+Y0HOt8LmJTxXy9KdDhII1mecRpx+YGGU/xtaAkoaF/jj
         Ty+w==
X-Forwarded-Encrypted: i=1; AJvYcCVdkgC8f0EuertsbkeEQ4wUAZQtP+uAHaOsBbRrdL0GhKL+hjhVs0hxnBLlq1KRnKhDI+1mnhGleShsZGDF@lists.linaro.org
X-Gm-Message-State: AOJu0YxeeoiLSndCPEWIOzM3D+iUJLl6hHrCLEq/LAsy2S/POReLQYuA
	1h6KEERaOw+GkFwoYf9LyqPOlSmOvO9ALqvkRSyJJ3+sbUN7qa9V6j/HrSDyNlGnWb0KcOOESrl
	xdizenQ7RoBjYNc7h93DE7ueuNb79yHz78Lhg2URH
X-Gm-Gg: ASbGncsIwyRXuY9JLcVIkbhQynRMrLRlQxbI8gluwFxun25br6UshRbqcrv3Rx67OL2
	yJx5g7WRC70tsNWpx4UPyv3lmowL3CPAF4NOQj1m5oDabZsa8Tftx9xeBzPEgzWxy88tR0dFXAH
	+A8FQQDSwJ3vbc75Wh55b8rnyKI/liIR7Mfsa+sv0hDBQA/B01rKNZqJvTdS3RpWk=
X-Google-Smtp-Source: AGHT+IFEcgQRjnETpZrLf1CwPJMfsljDvK6msWH1CS7O+hxdESqyS573c/EllCa1t/nkBSOwWcTEuL4xiyVh96hOYHg=
X-Received: by 2002:a05:600c:3d91:b0:43b:bfe9:8b43 with SMTP id
 5b1f17b1804b1-442eb48219cmr1721565e9.4.1747151716462; Tue, 13 May 2025
 08:55:16 -0700 (PDT)
MIME-Version: 1.0
References: <20250513092735.1931-1-tao.wangtao@honor.com> <d77ed1c0-3f66-447a-956f-37e1dd543ca3@amd.com>
In-Reply-To: <d77ed1c0-3f66-447a-956f-37e1dd543ca3@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 13 May 2025 08:55:04 -0700
X-Gm-Features: AX0GCFvQHw5JTttfdr9IiIizsn3K7ugnMk9VF_pcUalc634nO7GUCLRkaLzylUY
Message-ID: <CABdmKX08DgEi4Gq6mQ-xPrtiNeRvarMyp9t+biRd001TRQzpQg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: multipart/mixed; boundary="0000000000006e3fd006350675f0"
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9B7C540FBD
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MIME_BAD_ATTACHMENT(1.60)[cpp:text/x-c++src];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-c++src];
	ARC_NA(0.00)[];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	FROM_HAS_DN(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.48:from];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: UQSGMCM7WPUWTN62DI5BACVLT7MZDANU
X-Message-ID-Hash: UQSGMCM7WPUWTN62DI5BACVLT7MZDANU
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: wangtao <tao.wangtao@honor.com>, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, bintian.wang@honor.com, yipengxiang@honor.com, liulu.liu@honor.com, feng.han@honor.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dmabuf: add DMA_BUF_IOCTL_RW_FILE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UQSGMCM7WPUWTN62DI5BACVLT7MZDANU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>

--0000000000006e3fd006350675f0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 13, 2025 at 4:31=E2=80=AFAM Christian K=C3=B6nig
<christian.koenig@amd.com> wrote:
>
> On 5/13/25 11:27, wangtao wrote:
> > Add DMA_BUF_IOCTL_RW_FILE to save/restore data from/to a dma-buf.
>
> Similar approach where rejected before in favor of using udmabuf.
>
> Is there any reason you can't use that approach as well?

I also recently verified that udmabuf + O_DIRECT works with
sendfile(), and you can even MADV_COLLAPSE the underlying shmem if you
want.

> Regards,
> Christian.
>
> >
> > Signed-off-by: wangtao <tao.wangtao@honor.com>
> > ---
> >  drivers/dma-buf/dma-buf.c    |  8 ++++++++
> >  include/linux/dma-buf.h      |  3 +++
> >  include/uapi/linux/dma-buf.h | 29 +++++++++++++++++++++++++++++
> >  3 files changed, 40 insertions(+)
> >
> > diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> > index 5baa83b85515..95d8b0158ffd 100644
> > --- a/drivers/dma-buf/dma-buf.c
> > +++ b/drivers/dma-buf/dma-buf.c
> > @@ -460,6 +460,7 @@ static long dma_buf_ioctl(struct file *file,
> >       struct dma_buf *dmabuf;
> >       struct dma_buf_sync sync;
> >       enum dma_data_direction direction;
> > +     struct dma_buf_rw_file kfile;
> >       int ret;
> >
> >       dmabuf =3D file->private_data;
> > @@ -504,6 +505,13 @@ static long dma_buf_ioctl(struct file *file,
> >               return dma_buf_import_sync_file(dmabuf, (const void __use=
r *)arg);
> >  #endif
> >
> > +     case DMA_BUF_IOCTL_RW_FILE:
> > +             if (copy_from_user(&kfile, (void __user *) arg, sizeof(kf=
ile)))
> > +                     return -EFAULT;
> > +             if (!dmabuf->ops->rw_file)
> > +                     return -EINVAL;
> > +             return dmabuf->ops->rw_file(dmabuf, &kfile);
> > +
> >       default:
> >               return -ENOTTY;
> >       }
> > diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> > index 36216d28d8bd..de236ba2094b 100644
> > --- a/include/linux/dma-buf.h
> > +++ b/include/linux/dma-buf.h
> > @@ -22,6 +22,7 @@
> >  #include <linux/fs.h>
> >  #include <linux/dma-fence.h>
> >  #include <linux/wait.h>
> > +#include <uapi/linux/dma-buf.h>
> >
> >  struct device;
> >  struct dma_buf;
> > @@ -285,6 +286,8 @@ struct dma_buf_ops {
> >
> >       int (*vmap)(struct dma_buf *dmabuf, struct iosys_map *map);
> >       void (*vunmap)(struct dma_buf *dmabuf, struct iosys_map *map);
> > +
> > +     int (*rw_file)(struct dma_buf *dmabuf, struct dma_buf_rw_file *fi=
le);
> >  };
> >
> >  /**
> > diff --git a/include/uapi/linux/dma-buf.h b/include/uapi/linux/dma-buf.=
h
> > index 5a6fda66d9ad..ec9164b7b753 100644
> > --- a/include/uapi/linux/dma-buf.h
> > +++ b/include/uapi/linux/dma-buf.h
> > @@ -167,6 +167,29 @@ struct dma_buf_import_sync_file {
> >       __s32 fd;
> >  };
> >
> > +/**
> > + * struct dma_buf_rw_file - read/write file associated with a dma-buf
> > + *
> > + * Userspace can performs a DMA_BUF_IOCTL_BACK to save data from a dma=
-buf or
> > + * restore data to a dma-buf.
> > + */
> > +struct dma_buf_rw_file {
> > +
> > +     /** @flags: Flags indicating read/write for this dma-buf. */
> > +     __u32 flags;
> > +     /** @fd: File descriptor of the file associated with this dma-buf=
. */
> > +     __s32 fd;
> > +     /** @file_offset: Offset within the file where this dma-buf start=
s.
> > +      *
> > +      *  Offset and Length must be page-aligned for direct I/O.
> > +      */
> > +     __u64 file_offset;
> > +     /** @buf_offset: Offset within this dma-buf where the read/write =
starts. */
> > +     __u64 buf_offset;
> > +     /** @buf_len: Length of this dma-buf read/write. */
> > +     __u64 buf_len;
> > +};
> > +
> >  #define DMA_BUF_BASE         'b'
> >  #define DMA_BUF_IOCTL_SYNC   _IOW(DMA_BUF_BASE, 0, struct dma_buf_sync=
)
> >
> > @@ -179,4 +202,10 @@ struct dma_buf_import_sync_file {
> >  #define DMA_BUF_IOCTL_EXPORT_SYNC_FILE       _IOWR(DMA_BUF_BASE, 2, st=
ruct dma_buf_export_sync_file)
> >  #define DMA_BUF_IOCTL_IMPORT_SYNC_FILE       _IOW(DMA_BUF_BASE, 3, str=
uct dma_buf_import_sync_file)
> >
> > +#define DMA_BUF_RW_FLAGS_OP_MASK (0xFF << 0)
> > +#define DMA_BUF_RW_FLAGS_READ (1 << 0) /* Restore dma-buf data */
> > +#define DMA_BUF_RW_FLAGS_WRITE (2 << 0) /* Save dma-buf data */
> > +#define DMA_BUF_RW_FLAGS_DIRECT (1u << 31) /* Direct read/write file *=
/
> > +#define DMA_BUF_IOCTL_RW_FILE        _IOW(DMA_BUF_BASE, 4, struct dma_=
buf_rw_file)
> > +
> >  #endif
>

--0000000000006e3fd006350675f0
Content-Type: text/x-c++src; charset="US-ASCII"; name="udmabuf_odirect.cpp"
Content-Disposition: attachment; filename="udmabuf_odirect.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_mamp0bim0>
X-Attachment-Id: f_mamp0bim0

I2luY2x1ZGUgPGNzdGRsaWI+CiNpbmNsdWRlIDxlcnJuby5oPgojaW5jbHVkZSA8ZmNudGwuaD4K
I2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2luY2x1ZGUgPHN5cy9pb2N0
bC5oPgojaW5jbHVkZSA8c3lzL21tYW4uaD4KI2luY2x1ZGUgPHN5cy9zZW5kZmlsZS5oPgojaW5j
bHVkZSA8dW5pc3RkLmg+CgojaW5jbHVkZSA8bGludXgvdWRtYWJ1Zi5oPgoKbmFtZXNwYWNlIHsK
CmludCBjcmVhdGVNZW1mZChzaXplX3QgYnl0ZXMsIHVuc2lnbmVkIGludCBmbGFncykgewoKICAg
IGludCBmZChtZW1mZF9jcmVhdGUoIm1lbWZkX3Rlc3QiLCBmbGFncykpOwogICAgaWYgKGZkID09
IC0xKSB7CiAgICAgICAgcGVycm9yKCJtZW1mZF9jcmVhdGUiKTsKICAgICAgICByZXR1cm4gLTE7
CiAgICB9CgogICAgaW50IHJjID0gZnRydW5jYXRlKGZkLCBieXRlcyk7CiAgICBpZiAocmMgPT0g
LTEpIHsKICAgICAgICBwZXJyb3IoImZ0cnVuY2F0ZSIpOwogICAgICAgIHJldHVybiAtMTsKICAg
IH0KCiAgICByZXR1cm4gZmQ7Cn0KCmludCBjcmVhdGVVZG1hYnVmKHNpemVfdCBieXRlcywgaW50
IG1lbWZkKSB7CiAgICBpbnQgdWRtYWJ1Zl9kZXZfZmQob3BlbigiL2Rldi91ZG1hYnVmIiwgT19S
RE9OTFkpKTsKICAgIGlmICh1ZG1hYnVmX2Rldl9mZCA9PSAtMSkgewogICAgICAgIHBlcnJvcigi
dWRtYWJ1ZiBvcGVuIik7CiAgICAgICAgcmV0dXJuIC0xOwogICAgfQoKICAgIHN0cnVjdCB1ZG1h
YnVmX2NyZWF0ZSBjcmVhdGU7CiAgICBjcmVhdGUubWVtZmQgPSBtZW1mZDsKICAgIGNyZWF0ZS5m
bGFncyA9IFVETUFCVUZfRkxBR1NfQ0xPRVhFQzsKICAgIGNyZWF0ZS5vZmZzZXQgPSAwOwogICAg
Y3JlYXRlLnNpemUgPSBieXRlczsKCiAgICBpbnQgZG1hYnVmX2ZkKGlvY3RsKHVkbWFidWZfZGV2
X2ZkLCBVRE1BQlVGX0NSRUFURSwgJmNyZWF0ZSkpOwogICAgaWYgKGRtYWJ1Zl9mZCA9PSAtMSkg
cGVycm9yKCJVRE1BQlVGX0NSRUFURSIpOwoKICAgIHJldHVybiBkbWFidWZfZmQ7Cn0KCn0gLy8g
YW5vbnltb3VzIG5hbWVzcGFjZQoKCmludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikgewoJ
c2l6ZV90IGJ5dGVzID0gMXVsbCA8PCAzMDsKCglpbnQgbWVtZmQgPSBjcmVhdGVNZW1mZChieXRl
cywgTUZEX0FMTE9XX1NFQUxJTkcpOwoJaWYgKG1lbWZkIDwgMCkgcmV0dXJuIEVYSVRfRkFJTFVS
RTsKCglpZiAoZmNudGwobWVtZmQsIEZfQUREX1NFQUxTLCBGX1NFQUxfU0hSSU5LKSA8IDApIHsK
CQlwZXJyb3IoIkZfU0VBTF9TSFJJTksiKTsKCQlyZXR1cm4gRVhJVF9GQUlMVVJFOwoJfQoKICAg
IGlmIChmdHJ1bmNhdGUobWVtZmQsIGJ5dGVzKSkgewogICAgICAgIHBlcnJvcigiZnRydW5jYXRl
Iik7CiAgICAgICAgcmV0dXJuIEVYSVRfRkFJTFVSRTsKICAgIH0KCiAgICBpbnQgYmlnZmlsZSA9
IG9wZW4oYXJndlsxXSwgT19SRE9OTFkgfCBPX0RJUkVDVCk7CiAgICBpZiAoYmlnZmlsZSA8IDAp
IHsKICAgICAgICBwZXJyb3IoIm9wZW4iKTsKICAgICAgICByZXR1cm4gRVhJVF9GQUlMVVJFOwog
ICAgfQoKICAgIG9mZl90IG9mZnNldCA9IDA7CiAgICBmb3IgKHNzaXplX3QgbiA9IHNlbmRmaWxl
KG1lbWZkLCBiaWdmaWxlLCAmb2Zmc2V0LCBieXRlcyAtIG9mZnNldCk7CiAgICAgICAgIG9mZnNl
dCA8IGJ5dGVzICYmIG4gPiAwOwogICAgICAgICBuID0gc2VuZGZpbGUobWVtZmQsIGJpZ2ZpbGUs
ICZvZmZzZXQsIGJ5dGVzIC0gb2Zmc2V0KSkKICAgIHt9CiAgICBwcmludGYoIk9mZnNldCAlbGRc
biIsIG9mZnNldCk7CgogICAgaW50IHVkbWFidWYgPSBjcmVhdGVVZG1hYnVmKGJ5dGVzLCBtZW1m
ZCk7CiAgICBpZiAodWRtYWJ1ZiA8IDApIHJldHVybiBFWElUX0ZBSUxVUkU7CgogICAgcmV0dXJu
IEVYSVRfU1VDQ0VTUzsKfQo=
--0000000000006e3fd006350675f0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--0000000000006e3fd006350675f0--
