Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C0D41D7B7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Sep 2021 12:28:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82AF362164
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Sep 2021 10:28:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 58F6C6070C; Thu, 30 Sep 2021 10:28:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE5B96043D;
	Thu, 30 Sep 2021 10:27:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 551EE6A91C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Sep 2021 10:20:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E69FB6AF30; Mon, 27 Sep 2021 14:31:35 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by lists.linaro.org (Postfix) with ESMTPS id DB5846AB1B
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Sep 2021 14:31:33 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 r83-20020a1c4456000000b0030cfc00ca5fso760798wma.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Sep 2021 07:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2mx71Ffj1LjI9dbNVEsMItvt4/c01TG+6Jn8XnjJkBA=;
 b=BnaCahteDxcsbqrbdc5Zu34nF/xoU1HeKj99e5MrhXbRLBb3eohTmHduzQ7Bvv7PlJ
 iHImPDIK81GUnxugHpzukmeRIYtnjuF2BfEtv4pVQhEVhr7Ow4OOhUq/+F6vItMlWsvV
 zbr7YpC6iVLD1oCoe+jdqBM4W7Y7IJr4Fc4deyeupJskOQkQprR4XLaTljPNIEIB0J/+
 jFD9iHjiKIpvH4ZRA741zvzAIMY1yB8HRvKOJGRbxRpxx44OKJ5O4j7e52tiGSRp88Ta
 a69wmF3jlTlNkSveRuD+7ERqrjt1l5BCsW6ZWTb4LXuoqgkviyhmSx3ZNNIiViQPxbb2
 cHXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2mx71Ffj1LjI9dbNVEsMItvt4/c01TG+6Jn8XnjJkBA=;
 b=JWraeVmGYeG1/fpirMSSKXTGpAnMIrPeJ861p997r7sJiBwg0uiWa3xKLEdTn/Qjh6
 aGyanD8UYT1hJZSYLaGFzhBhH5/YTPWKclM/vnfeVsW9Qn6D24VEMDusulSxG+DHd+a8
 fATkbQAcqr3p417UKPWswvmqECjy/QkE8YnMxINklHs9MKeobRr/jxcbD8z9p/zjpVy2
 zm25JIjvz9BjSlNVZXDxCV0hWze62lJf4dRMVF0kW+FI97M64jz4SC9OZUxfjWoOZRRs
 M/4oMQNOx1xru5DuPhh8WCFqXAyuZOf7fKxofCDYMCYimfgRZENltet6NdQt8fvFwFWa
 subQ==
X-Gm-Message-State: AOAM5305Z/ssrCDI0IHFEfiKjCt+T7QIvb3RXXs5qo+aGK5vpPeqDfPs
 kKT0fmzCiZ5qgMYZ+VCM5na/FZG3M2WrZDCegl4=
X-Google-Smtp-Source: ABdhPJxaMT5Ib0z3brv9yjSkdXxNC2Ep4DW2qUvpXe/nYwrumdJt3grX8mjdTKUoXXZV+xNfgBGfnHDh99X4mtG/+Wc=
X-Received: by 2002:a1c:f201:: with SMTP id s1mr4139651wmc.101.1632753092855; 
 Mon, 27 Sep 2021 07:31:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-9-robdclark@gmail.com>
 <20210927114201.1f8fdc17@eldfell>
In-Reply-To: <20210927114201.1f8fdc17@eldfell>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 27 Sep 2021 07:36:05 -0700
Message-ID: <CAF6AEGudjfgN+x_KxyED+1XBod7yNqLN43or7vs8h7UKQmzK7Q@mail.gmail.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 8/9] dma-buf/sync_file: Add
 SET_DEADLINE ioctl
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Rob Clark <robdclark@chromium.org>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Gustavo Padovan <gustavo@padovan.org>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Sep 27, 2021 at 1:42 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>
> On Fri,  3 Sep 2021 11:47:59 -0700
> Rob Clark <robdclark@gmail.com> wrote:
>
> > From: Rob Clark <robdclark@chromium.org>
> >
> > The initial purpose is for igt tests, but this would also be useful for
> > compositors that wait until close to vblank deadline to make decisions
> > about which frame to show.
> >
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > ---
> >  drivers/dma-buf/sync_file.c    | 19 +++++++++++++++++++
> >  include/uapi/linux/sync_file.h | 20 ++++++++++++++++++++
> >  2 files changed, 39 insertions(+)
> >
> > diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> > index 394e6e1e9686..f295772d5169 100644
> > --- a/drivers/dma-buf/sync_file.c
> > +++ b/drivers/dma-buf/sync_file.c
> > @@ -459,6 +459,22 @@ static long sync_file_ioctl_fence_info(struct sync_file *sync_file,
> >       return ret;
> >  }
> >
> > +static int sync_file_ioctl_set_deadline(struct sync_file *sync_file,
> > +                                     unsigned long arg)
> > +{
> > +     struct sync_set_deadline ts;
> > +
> > +     if (copy_from_user(&ts, (void __user *)arg, sizeof(ts)))
> > +             return -EFAULT;
> > +
> > +     if (ts.pad)
> > +             return -EINVAL;
> > +
> > +     dma_fence_set_deadline(sync_file->fence, ktime_set(ts.tv_sec, ts.tv_nsec));
> > +
> > +     return 0;
> > +}
> > +
> >  static long sync_file_ioctl(struct file *file, unsigned int cmd,
> >                           unsigned long arg)
> >  {
> > @@ -471,6 +487,9 @@ static long sync_file_ioctl(struct file *file, unsigned int cmd,
> >       case SYNC_IOC_FILE_INFO:
> >               return sync_file_ioctl_fence_info(sync_file, arg);
> >
> > +     case SYNC_IOC_SET_DEADLINE:
> > +             return sync_file_ioctl_set_deadline(sync_file, arg);
> > +
> >       default:
> >               return -ENOTTY;
> >       }
> > diff --git a/include/uapi/linux/sync_file.h b/include/uapi/linux/sync_file.h
> > index ee2dcfb3d660..f67d4ffe7566 100644
> > --- a/include/uapi/linux/sync_file.h
> > +++ b/include/uapi/linux/sync_file.h
> > @@ -67,6 +67,18 @@ struct sync_file_info {
> >       __u64   sync_fence_info;
> >  };
> >
> > +/**
> > + * struct sync_set_deadline - set a deadline on a fence
> > + * @tv_sec:  seconds elapsed since epoch
> > + * @tv_nsec: nanoseconds elapsed since the time given by the tv_sec
> > + * @pad:     must be zero
>
> Hi Rob,
>
> I think you need to specify which clock this timestamp must be in.
>
> Which epoch? Sounds a bit like CLOCK_REALTIME to me which would not
> make sense.

It should be monotonic.. same clock as is used for vblank timestamps,
which I assume that would be the most straightforward thing for
compositors to use

BR,
-R

> Also I cannot guess how a compositor should be using this, so
> explaining the expected usage would be really good, with reasons for
> why should userspace bother.
>
>
> Thanks,
> pq
>
> > + */
> > +struct sync_set_deadline {
> > +     __s64   tv_sec;
> > +     __s32   tv_nsec;
> > +     __u32   pad;
> > +};
> > +
> >  #define SYNC_IOC_MAGIC               '>'
> >
> >  /**
> > @@ -95,4 +107,12 @@ struct sync_file_info {
> >   */
> >  #define SYNC_IOC_FILE_INFO   _IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_info)
> >
> > +
> > +/**
> > + * DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence
> > + *
> > + * Allows userspace to set a deadline on a fence, see dma_fence_set_deadline()
> > + */
> > +#define SYNC_IOC_SET_DEADLINE        _IOW(SYNC_IOC_MAGIC, 5, struct sync_set_deadline)
> > +
> >  #endif /* _UAPI_LINUX_SYNC_H */
>
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
