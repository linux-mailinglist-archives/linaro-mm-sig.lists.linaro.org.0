Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B510A58C8F0
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Aug 2022 15:04:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B620A47F65
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Aug 2022 13:04:01 +0000 (UTC)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by lists.linaro.org (Postfix) with ESMTPS id 343C747F20
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Aug 2022 13:03:58 +0000 (UTC)
Received: by mail-io1-f47.google.com with SMTP id e69so7018353iof.5
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Aug 2022 06:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=ZvT8zFSaN4+LwwHuSYqMb23PG3MGFvgeXxhuTYLZpLA=;
        b=bIV76remtNAYQAeCdeb3qJ3+b164qBdDrAh+RltF+dOCvtut76rYCFEeN05QWNkUuV
         AoVR5s8C364z0ybC7ibjDVnQDDa4asxYupQ5SMfZiDM9z7fodmeKYug3z8bzjsmQ+3Q0
         qoVud6QDZ7mOFNA9ESM5uAe9aFWlBDDNZvrbWyYB/qpn8LHm+33J2ADJwdmpnZZq2SW2
         BGrRUXM5imEq8M5Kiman/R0HF9ju5F9Y9WoiHfQxom2ElQLBXRg6lBPQBHG3rly+3UYV
         YSHbTbM5eTZT5Yhyfldvmq7YR1Hldk21TeWy52szjq0pmCwdvTf7O4OogCI1Lni7YdY3
         dP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=ZvT8zFSaN4+LwwHuSYqMb23PG3MGFvgeXxhuTYLZpLA=;
        b=Z0YjevqrzwEGu0Kja8MgWdIfyFuFORnL53eY9cJmkIE+K7GNMs+8POYj3t+Q7BGWJS
         ukjArWrWaL8mEg+SGznyQAtY37dmaPPHUltdJUCh7nidumXL/MXwquXl8Ei6QcZnh5dx
         oaa7mlYiIHqs6qb/2FJIgWPM+o/1vOKqy4aSg42Oi1EN06qFhbdbv5joRmRLlpERioKQ
         B4RKJvLhDU2FTNwrAI9ZqfUsaWyZT7vfJ+MfFzM5OYXOrrU7U4XP+irA25EMLgUg0WcP
         MV5Gwg74JektYNdcWKNiumL1pfMgD699aRBkO/sVYHSAas+9TdRfBEgkptdg+9yvtLT+
         YPmw==
X-Gm-Message-State: ACgBeo2JWimSZ2Tmk1LR+rDdLoSBt61qC6c3tZKd+BG18KxxCWsMJXQz
	JsRsq1WxcbROISjkYIdFfiscshLRX+bm16Rh0+E=
X-Google-Smtp-Source: AA6agR60DUrBizeFAOIl0MFBBFVK7rm5XRv8HCDKfsPieaM8O+nIy31LtUASY2Py2R3HzanJm6GnC6zPInf13BA0Rpo=
X-Received: by 2002:a05:6638:f8f:b0:342:cb21:f6d6 with SMTP id
 h15-20020a0566380f8f00b00342cb21f6d6mr5560379jal.138.1659963837491; Mon, 08
 Aug 2022 06:03:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220729170744.1301044-1-robdclark@gmail.com> <20220729170744.1301044-2-robdclark@gmail.com>
 <62afe47a-1a50-80ef-400d-8c238f1cb332@quicinc.com>
In-Reply-To: <62afe47a-1a50-80ef-400d-8c238f1cb332@quicinc.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 8 Aug 2022 06:04:19 -0700
Message-ID: <CAF6AEGuRnnjXN-sFeBkgF+ZiHQsABUEXBRLTO+jibHFk7RumSg@mail.gmail.com>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Message-ID-Hash: KFJ7DZ2MFNYVTVWVX2363BQLSX4RLCAK
X-Message-ID-Hash: KFJ7DZ2MFNYVTVWVX2363BQLSX4RLCAK
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>, open list <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Freedreno] [PATCH 1/3] dma-buf: Add ioctl to query mmap info
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KFJ7DZ2MFNYVTVWVX2363BQLSX4RLCAK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Aug 7, 2022 at 1:25 PM Akhil P Oommen <quic_akhilpo@quicinc.com> wrote:
>
> On 7/29/2022 10:37 PM, Rob Clark wrote:
> > From: Rob Clark <robdclark@chromium.org>
> >
> > This is a fairly narrowly focused interface, providing a way for a VMM
> > in userspace to tell the guest kernel what pgprot settings to use when
> > mapping a buffer to guest userspace.
> >
> > For buffers that get mapped into guest userspace, virglrenderer returns
> > a dma-buf fd to the VMM (crosvm or qemu).  In addition to mapping the
> > pages into the guest VM, it needs to report to drm/virtio in the guest
> > the cache settings to use for guest userspace.  In particular, on some
> > architectures, creating aliased mappings with different cache attributes
> > is frowned upon, so it is important that the guest mappings have the
> > same cache attributes as any potential host mappings.
> >
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > ---
> >   drivers/dma-buf/dma-buf.c    | 26 ++++++++++++++++++++++++++
> >   include/linux/dma-buf.h      |  7 +++++++
> >   include/uapi/linux/dma-buf.h | 28 ++++++++++++++++++++++++++++
> >   3 files changed, 61 insertions(+)
> >
> > diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> > index 32f55640890c..d02d6c2a3b49 100644
> > --- a/drivers/dma-buf/dma-buf.c
> > +++ b/drivers/dma-buf/dma-buf.c
> > @@ -326,6 +326,29 @@ static long dma_buf_set_name(struct dma_buf *dmabuf, const char __user *buf)
> >       return 0;
> >   }
> >
> > +static long dma_buf_info(struct dma_buf *dmabuf, const void __user *uarg)
> > +{
> > +     struct dma_buf_info arg;
> > +
> > +     if (copy_from_user(&arg, uarg, sizeof(arg)))
> > +             return -EFAULT;
> > +
> > +     switch (arg.param) {
> > +     case DMA_BUF_INFO_VM_PROT:
> > +             if (!dmabuf->ops->mmap_info)
> > +                     return -ENOSYS;
> > +             arg.value = dmabuf->ops->mmap_info(dmabuf);
> > +             break;
> > +     default:
> > +             return -EINVAL;
> > +     }
> > +
> > +     if (copy_to_user(uarg, &arg, sizeof(arg)))
> > +             return -EFAULT;
> > +
> > +     return 0;
> > +}
> > +
> >   static long dma_buf_ioctl(struct file *file,
> >                         unsigned int cmd, unsigned long arg)
> >   {
> > @@ -369,6 +392,9 @@ static long dma_buf_ioctl(struct file *file,
> >       case DMA_BUF_SET_NAME_B:
> >               return dma_buf_set_name(dmabuf, (const char __user *)arg);
> >
> > +     case DMA_BUF_IOCTL_INFO:
> > +             return dma_buf_info(dmabuf, (const void __user *)arg);
> > +
> >       default:
> >               return -ENOTTY;
> >       }
> > diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> > index 71731796c8c3..6f4de64a5937 100644
> > --- a/include/linux/dma-buf.h
> > +++ b/include/linux/dma-buf.h
> > @@ -283,6 +283,13 @@ struct dma_buf_ops {
> >        */
> >       int (*mmap)(struct dma_buf *, struct vm_area_struct *vma);
> >
> > +     /**
> > +      * @mmap_info:
> > +      *
> > +      * Return mmapping info for the buffer.  See DMA_BUF_INFO_VM_PROT.
> > +      */
> > +     int (*mmap_info)(struct dma_buf *);
> > +
> >       int (*vmap)(struct dma_buf *dmabuf, struct iosys_map *map);
> >       void (*vunmap)(struct dma_buf *dmabuf, struct iosys_map *map);
> >   };
> > diff --git a/include/uapi/linux/dma-buf.h b/include/uapi/linux/dma-buf.h
> > index b1523cb8ab30..a41adac0f46a 100644
> > --- a/include/uapi/linux/dma-buf.h
> > +++ b/include/uapi/linux/dma-buf.h
> > @@ -85,6 +85,32 @@ struct dma_buf_sync {
> >
> >   #define DMA_BUF_NAME_LEN    32
> >
> > +
> > +/**
> > + * struct dma_buf_info - Query info about the buffer.
> > + */
> > +struct dma_buf_info {
> > +
> > +#define DMA_BUF_INFO_VM_PROT      1
> > +#  define DMA_BUF_VM_PROT_WC      0
> > +#  define DMA_BUF_VM_PROT_CACHED  1
> > +
> > +     /**
> > +      * @param: Which param to query
> > +      *
> > +      * DMA_BUF_INFO_BM_PROT:
> Is there a typo here? BM -> VM ?

yes, fixed locally

>
> -Akhil.
> > +      *     Query the access permissions of userspace mmap's of this buffer.
> > +      *     Returns one of DMA_BUF_VM_PROT_x
> > +      */
> > +     __u32 param;
> > +     __u32 pad;
> > +
> > +     /**
> > +      * @value: Return value of the query.
> > +      */
> > +     __u64 value;
> > +};
> > +
> >   #define DMA_BUF_BASE                'b'
> >   #define DMA_BUF_IOCTL_SYNC  _IOW(DMA_BUF_BASE, 0, struct dma_buf_sync)
> >
> > @@ -95,4 +121,6 @@ struct dma_buf_sync {
> >   #define DMA_BUF_SET_NAME_A  _IOW(DMA_BUF_BASE, 1, __u32)
> >   #define DMA_BUF_SET_NAME_B  _IOW(DMA_BUF_BASE, 1, __u64)
> >
> > +#define DMA_BUF_IOCTL_INFO   _IOWR(DMA_BUF_BASE, 2, struct dma_buf_info)
> > +
> >   #endif
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
