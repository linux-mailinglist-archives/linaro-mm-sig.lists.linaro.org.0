Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B1453403FE1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 21:36:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A601863261
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Sep 2021 19:36:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9AE0564ADC; Wed,  8 Sep 2021 19:36:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5ECF160F21;
	Wed,  8 Sep 2021 19:36:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E42FF6057E
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 19:36:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E0E7460F21; Wed,  8 Sep 2021 19:36:33 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id D40616057E
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Sep 2021 19:36:31 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id i3so2566984wmq.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Sep 2021 12:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WFkz0KIGVRanwwOpQOB63f3hI9/QKctdUdt0tgTh9zM=;
 b=EsgfooutlpvYl9zZZ9jQN162hfvTjlYk1i9udEEEpQT6+D6RVJlzfbaoSW0cZLZP4K
 8xjfRlw4uyPuQkVzfdwFjgnMHKj8AVM7DEY4eWyoHUXuxJZ2+Izt9Mob96Pd4fRhVq2A
 XtGyX4voyU40GJwE/hqW18Wv8CPa9aS6Hi0DY8qM3FgE+dDi3K1kUmvHB5vPenjG15Wx
 hK0M2H5ivu/BupXc7LcC3UWfsEimZOq7bHpreacydK1E5X28APExPAa6Ln/l28kvTJqr
 1MI9fO/4LDwr55zEPOxEG/IRUIPw+EHFjBVjOmm61dZZ1perSvJFmCcafvEXROgvg38V
 i2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WFkz0KIGVRanwwOpQOB63f3hI9/QKctdUdt0tgTh9zM=;
 b=iWkIzRwnZiEOpbPar8+F7he24mLGvTIFdHOftRBZ8EuWyyKm4dI7SD4j7c38MGcJW5
 kjw9MhSPZMx5nlAyslS02lqqZiOi2R6pxZMYYluPFCRMB8KTkkGwcm9BYjIeY87h8Xqd
 k9eeJnhb9tloSP/DgSpWCPT6KXnHc2mbfyBKoen3y1VD1OHfDdsYDqAF+6l+0Gs1Et42
 1k4meYKuZp8yqQ0YncLQS5BSV1NvGtz6iekC7ucoYH0WMSBKo3mAsizGZzAlTCyYYqcf
 YVeh2HcyHSbi2H2B+S2G48gBWBnq8b5NB2piOaUo+xt78cA/O0fhrs5VoDNxCvJoo/yd
 oqNw==
X-Gm-Message-State: AOAM5317K47q3SW2juRWvKIiHlv2uAY0axxYcy35ZW6v/SeIyNqgrR+D
 PJrkUZ2jIyAMxr0wIWtZ025vjFmeeEfjW6Wl65tkC6y0oX4=
X-Google-Smtp-Source: ABdhPJzGCBZ4p5uJTM2qKSxGVjbqTwcWC8t2Hh+xiorvb8wF4TXx7LGAPQm7BCJsMICYTysbM28XWciPFXRZDwu8Q0w=
X-Received: by 2002:a05:600c:5110:: with SMTP id
 o16mr5203020wms.44.1631129790799; 
 Wed, 08 Sep 2021 12:36:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-9-robdclark@gmail.com>
 <YTj36NbUNxnn6uBU@phenom.ffwll.local>
 <CAF6AEGuVkHOvOkVHo69fOy71qiBh=12Nd=yMXm36p_bjzfFe9A@mail.gmail.com>
 <YTkFzjs3cEvPcCzn@phenom.ffwll.local>
In-Reply-To: <YTkFzjs3cEvPcCzn@phenom.ffwll.local>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 8 Sep 2021 12:40:48 -0700
Message-ID: <CAF6AEGv4cRCb+5qZdEH_b-m1jVu7t=CYb-18cADviwxvnJXELA@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, 
 Pekka Paalanen <ppaalanen@gmail.com>, Rob Clark <robdclark@chromium.org>, 
 Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
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
Cc: Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Sep 8, 2021 at 11:49 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Wed, Sep 08, 2021 at 11:23:42AM -0700, Rob Clark wrote:
> > On Wed, Sep 8, 2021 at 10:50 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> > >
> > > On Fri, Sep 03, 2021 at 11:47:59AM -0700, Rob Clark wrote:
> > > > From: Rob Clark <robdclark@chromium.org>
> > > >
> > > > The initial purpose is for igt tests, but this would also be useful for
> > > > compositors that wait until close to vblank deadline to make decisions
> > > > about which frame to show.
> > > >
> > > > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > >
> > > Needs userspace and I think ideally also some igts to make sure it works
> > > and doesn't go boom.
> >
> > See cover-letter.. there are igt tests, although currently that is the
> > only user.
>
> Ah sorry missed that. It would be good to record that in the commit too
> that adds the uapi. git blame doesn't find cover letters at all, unlike on
> gitlab where you get the MR request with everything.
>
> Ok there is the Link: thing, but since that only points at the last
> version all the interesting discussion is still usually lost, so I tend to
> not bother looking there.
>
> > I'd be ok to otherwise initially restrict this and the sw_sync UABI
> > (CAP_SYS_ADMIN?  Or??) until there is a non-igt user, but they are
> > both needed by the igt tests
>
> Hm really awkward, uapi for igts in cross vendor stuff like this isn't
> great. I think hiding it in vgem is semi-ok (we have fences there
> already). But it's all a bit silly ...
>
> For the tests, should we instead have a selftest/Kunit thing to exercise
> this stuff? igt probably not quite the right thing. Or combine with a page
> flip if you want to test msm.

Hmm, IIRC we have used CONFIG_BROKEN or something along those lines
for UABI in other places where we weren't willing to commit to yet?

I suppose if we had to I could make this a sw_sync ioctl instead.  But
OTOH there are kind of a limited # of ways this ioctl could look.  And
we already know that at least some wayland compositors are going to
want this.

I guess I can look at non-igt options.  But the igt test is already a
pretty convenient way to contrive situations (like loops, which is a
thing I need to add)

BR,
-R


> -Daniel
>
> >
> > BR,
> > -R
> >
> > > -Daniel
> > >
> > > > ---
> > > >  drivers/dma-buf/sync_file.c    | 19 +++++++++++++++++++
> > > >  include/uapi/linux/sync_file.h | 20 ++++++++++++++++++++
> > > >  2 files changed, 39 insertions(+)
> > > >
> > > > diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> > > > index 394e6e1e9686..f295772d5169 100644
> > > > --- a/drivers/dma-buf/sync_file.c
> > > > +++ b/drivers/dma-buf/sync_file.c
> > > > @@ -459,6 +459,22 @@ static long sync_file_ioctl_fence_info(struct sync_file *sync_file,
> > > >       return ret;
> > > >  }
> > > >
> > > > +static int sync_file_ioctl_set_deadline(struct sync_file *sync_file,
> > > > +                                     unsigned long arg)
> > > > +{
> > > > +     struct sync_set_deadline ts;
> > > > +
> > > > +     if (copy_from_user(&ts, (void __user *)arg, sizeof(ts)))
> > > > +             return -EFAULT;
> > > > +
> > > > +     if (ts.pad)
> > > > +             return -EINVAL;
> > > > +
> > > > +     dma_fence_set_deadline(sync_file->fence, ktime_set(ts.tv_sec, ts.tv_nsec));
> > > > +
> > > > +     return 0;
> > > > +}
> > > > +
> > > >  static long sync_file_ioctl(struct file *file, unsigned int cmd,
> > > >                           unsigned long arg)
> > > >  {
> > > > @@ -471,6 +487,9 @@ static long sync_file_ioctl(struct file *file, unsigned int cmd,
> > > >       case SYNC_IOC_FILE_INFO:
> > > >               return sync_file_ioctl_fence_info(sync_file, arg);
> > > >
> > > > +     case SYNC_IOC_SET_DEADLINE:
> > > > +             return sync_file_ioctl_set_deadline(sync_file, arg);
> > > > +
> > > >       default:
> > > >               return -ENOTTY;
> > > >       }
> > > > diff --git a/include/uapi/linux/sync_file.h b/include/uapi/linux/sync_file.h
> > > > index ee2dcfb3d660..f67d4ffe7566 100644
> > > > --- a/include/uapi/linux/sync_file.h
> > > > +++ b/include/uapi/linux/sync_file.h
> > > > @@ -67,6 +67,18 @@ struct sync_file_info {
> > > >       __u64   sync_fence_info;
> > > >  };
> > > >
> > > > +/**
> > > > + * struct sync_set_deadline - set a deadline on a fence
> > > > + * @tv_sec:  seconds elapsed since epoch
> > > > + * @tv_nsec: nanoseconds elapsed since the time given by the tv_sec
> > > > + * @pad:     must be zero
> > > > + */
> > > > +struct sync_set_deadline {
> > > > +     __s64   tv_sec;
> > > > +     __s32   tv_nsec;
> > > > +     __u32   pad;
> > > > +};
> > > > +
> > > >  #define SYNC_IOC_MAGIC               '>'
> > > >
> > > >  /**
> > > > @@ -95,4 +107,12 @@ struct sync_file_info {
> > > >   */
> > > >  #define SYNC_IOC_FILE_INFO   _IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_info)
> > > >
> > > > +
> > > > +/**
> > > > + * DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence
> > > > + *
> > > > + * Allows userspace to set a deadline on a fence, see dma_fence_set_deadline()
> > > > + */
> > > > +#define SYNC_IOC_SET_DEADLINE        _IOW(SYNC_IOC_MAGIC, 5, struct sync_set_deadline)
> > > > +
> > > >  #endif /* _UAPI_LINUX_SYNC_H */
> > > > --
> > > > 2.31.1
> > > >
> > >
> > > --
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > http://blog.ffwll.ch
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
