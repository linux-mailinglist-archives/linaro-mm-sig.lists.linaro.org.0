Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D83EE533F54
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 16:38:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D5AB53EE21
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 14:38:29 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by lists.linaro.org (Postfix) with ESMTPS id 17B4A3E8AA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 14:38:26 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id f2so30461196wrc.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 May 2022 07:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=EgY0jaM9vHozFElUnQ8vjV07u7clksrPr+0iIxlv5TU=;
        b=ZSAPAZI1ZzKFU26CKEpOFJwGxkDb48U0LhHGHNPMF66cJksDw2s26PhE92m2sP0/Lt
         0CrCMZVem2RauRgZf+QX2owKSP9hBndUIrO6pTxX6yjcvxSobJbCppPOaTGaOss3ce5s
         styIG9bn7WYlE9VRwM63fyU/WLG9nLL5z0hBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=EgY0jaM9vHozFElUnQ8vjV07u7clksrPr+0iIxlv5TU=;
        b=pT7mkg/mW++LGxwgNXdmkENBeUCHxVPMcpILrt6oZiqmIz2SgFZ1zMfDtCafmeCDVk
         0XW4iCSZLAUSExCvbHQULWhiCyZHWEJTwg9OSL8tV5SFun+vTB8gmdCUHlLAfqMGnyKA
         S5S2Gym1OJA4wj/VC0z4bczimNJbIgBu2vJ2PWRDuPXfd/BaxDsL4+9qcAWC93opuq1B
         aguLrMSiliI6gko5zKjjliT1ixkmt/pwyQcgQFD2xgvtyJMJGBFcZvxPqiOO1xl0GQ7Y
         PINJZfT7mI5gDSfCYN/LfVKZuHcnpS6HHH72hr1kAQyPxDCtsjSPTuucxgOvr2OhBDGP
         GOQA==
X-Gm-Message-State: AOAM531qIk464ABCz/RdLf16vnuHmhPO2+TvWy6lfhXKODLw8SbJA44R
	VXgsk5/DcTGlpQohbGagsqDneA==
X-Google-Smtp-Source: ABdhPJzLNNEykkR4Jh5XLHgXxwE9aky/euCfurPFRV26dc5jYUXygZu7DY5BbEHKBLSkPW+aTFGinA==
X-Received: by 2002:a05:6000:246:b0:20f:fff4:e1ec with SMTP id m6-20020a056000024600b0020ffff4e1ecmr2580893wrz.485.1653489505042;
        Wed, 25 May 2022 07:38:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id h15-20020adf9ccf000000b0020e58b3e064sm2292198wre.74.2022.05.25.07.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 07:38:24 -0700 (PDT)
Date: Wed, 25 May 2022 16:38:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <Yo4/XhWQkACWaPIh@phenom.ffwll.local>
Mail-Followup-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Suren Baghdasaryan <surenb@google.com>,
	Kalesh Singh <kaleshsingh@google.com>,
	Minchan Kim <minchan@google.com>,
	Greg Kroah-Hartman <gregkh@google.com>,
	John Stultz <jstultz@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Hridya Valsaraju <hridya@google.com>, kernel-team@android.com,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220516171315.2400578-1-tjmercier@google.com>
 <175c5af3-9224-9c8e-0784-349dad9a2954@amd.com>
 <CABdmKX2GcgCs1xANYPBp8OEtk9qqH7AvCzpdppj9rHXvMqWSAw@mail.gmail.com>
 <0875fa95-3a25-a354-1433-201fca81ed3e@amd.com>
 <CABdmKX1+VYfdzyVYOS5MCsr4ptGTygmuUP9ikyh-vW6DgKk2kg@mail.gmail.com>
 <YoM9BAwybcjG7K/H@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YoM9BAwybcjG7K/H@kroah.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: Y4XPIMB4QOHYAWS6ICCQZBSDXFDSVZ2E
X-Message-ID-Hash: Y4XPIMB4QOHYAWS6ICCQZBSDXFDSVZ2E
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Suren Baghdasaryan <surenb@google.com>, Kalesh Singh <kaleshsingh@google.com>, Minchan Kim <minchan@google.com>, Greg Kroah-Hartman <gregkh@google.com>, John Stultz <jstultz@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Hridya Valsaraju <hridya@google.com>, kernel-team@android.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Move sysfs work out of DMA-BUF export path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y4XPIMB4QOHYAWS6ICCQZBSDXFDSVZ2E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, May 17, 2022 at 08:13:24AM +0200, Greg Kroah-Hartman wrote:
> On Mon, May 16, 2022 at 05:08:05PM -0700, T.J. Mercier wrote:
> > On Mon, May 16, 2022 at 12:21 PM Christian K=F6nig
> > <christian.koenig@amd.com> wrote:
> > >
> > > Am 16.05.22 um 20:08 schrieb T.J. Mercier:
> > > > On Mon, May 16, 2022 at 10:20 AM Christian K=F6nig
> > > > <christian.koenig@amd.com> wrote:
> > > >> Am 16.05.22 um 19:13 schrieb T.J. Mercier:
> > > >>> Recently, we noticed an issue where a process went into direct re=
claim
> > > >>> while holding the kernfs rw semaphore for sysfs in write (exclusi=
ve)
> > > >>> mode. This caused processes who were doing DMA-BUF exports and re=
leases
> > > >>> to go into uninterruptible sleep since they needed to acquire the=
 same
> > > >>> semaphore for the DMA-BUF sysfs entry creation/deletion. In order=
 to avoid
> > > >>> blocking DMA-BUF export for an indeterminate amount of time while
> > > >>> another process is holding the sysfs rw semaphore in exclusive mo=
de,
> > > >>> this patch moves the per-buffer sysfs file creation to the defaul=
t work
> > > >>> queue. Note that this can lead to a short-term inaccuracy in the =
dmabuf
> > > >>> sysfs statistics, but this is a tradeoff to prevent the hot path =
from
> > > >>> being blocked. A work_struct is added to dma_buf to achieve this,=
 but as
> > > >>> it is unioned with the kobject in the sysfs_entry, dma_buf does n=
ot
> > > >>> increase in size.
> > > >> I'm still not very keen of this approach as it strongly feels like=
 we
> > > >> are working around shortcoming somewhere else.
> > > >>
> > > > My read of the thread for the last version is that we're running in=
to
> > > > a situation where sysfs is getting used for something it wasn't
> > > > originally intended for, but we're also stuck with this sysfs
> > > > functionality for dmabufs.
> > > >
> > > >>> Fixes: bdb8d06dfefd ("dmabuf: Add the capability to expose DMA-BU=
F stats in sysfs")
> > > >>> Originally-by: Hridya Valsaraju <hridya@google.com>
> > > >>> Signed-off-by: T.J. Mercier <tjmercier@google.com>
> > > >>>
> > > >>> ---
> > > >>> See the originally submitted patch by Hridya Valsaraju here:
> > > >>> https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Flkml.org%2Flkml%2F2022%2F1%2F4%2F1066&amp;data=3D05%7C01%7Cchristian.koe=
nig%40amd.com%7C794614324d114880a25508da37672e4b%7C3dd8961fe4884e608e11a82d=
994e183d%7C0%7C0%7C637883213566903705%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wL=
jAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;s=
data=3DbGlA2FeubfSeL5XDHYyWMZqUXfScoCphZjjK4jrqQJs%3D&amp;reserved=3D0
> > > >>>
> > > >>> v2 changes:
> > > >>> - Defer only sysfs creation instead of creation and teardown per
> > > >>> Christian K=F6nig
> > > >>>
> > > >>> - Use a work queue instead of a kthread for deferred work per
> > > >>> Christian K=F6nig
> > > >>> ---
> > > >>>    drivers/dma-buf/dma-buf-sysfs-stats.c | 56 +++++++++++++++++++=
+-------
> > > >>>    include/linux/dma-buf.h               | 14 ++++++-
> > > >>>    2 files changed, 54 insertions(+), 16 deletions(-)
> > > >>>
> > > >>> diff --git a/drivers/dma-buf/dma-buf-sysfs-stats.c b/drivers/dma-=
buf/dma-buf-sysfs-stats.c
> > > >>> index 2bba0babcb62..67b0a298291c 100644
> > > >>> --- a/drivers/dma-buf/dma-buf-sysfs-stats.c
> > > >>> +++ b/drivers/dma-buf/dma-buf-sysfs-stats.c
> > > >>> @@ -11,6 +11,7 @@
> > > >>>    #include <linux/printk.h>
> > > >>>    #include <linux/slab.h>
> > > >>>    #include <linux/sysfs.h>
> > > >>> +#include <linux/workqueue.h>
> > > >>>
> > > >>>    #include "dma-buf-sysfs-stats.h"
> > > >>>
> > > >>> @@ -168,10 +169,46 @@ void dma_buf_uninit_sysfs_statistics(void)
> > > >>>        kset_unregister(dma_buf_stats_kset);
> > > >>>    }
> > > >>>
> > > >>> +static void sysfs_add_workfn(struct work_struct *work)
> > > >>> +{
> > > >>> +     struct dma_buf_sysfs_entry *sysfs_entry =3D
> > > >>> +             container_of(work, struct dma_buf_sysfs_entry, sysf=
s_add_work);
> > > >>> +     struct dma_buf *dmabuf =3D sysfs_entry->dmabuf;
> > > >>> +
> > > >>> +     /*
> > > >>> +      * A dmabuf is ref-counted via its file member. If this han=
dler holds the only
> > > >>> +      * reference to the dmabuf, there is no need for sysfs kobj=
ect creation. This is an
> > > >>> +      * optimization and a race; when the reference count drops =
to 1 immediately after
> > > >>> +      * this check it is not harmful as the sysfs entry will sti=
ll get cleaned up in
> > > >>> +      * dma_buf_stats_teardown, which won't get called until the=
 final dmabuf reference
> > > >>> +      * is released, and that can't happen until the end of this=
 function.
> > > >>> +      */
> > > >>> +     if (file_count(dmabuf->file) > 1) {
> > > >> Please completely drop that. I see absolutely no justification for=
 this
> > > >> additional complexity.
> > > >>
> > > > This case gets hit around 5% of the time in my testing so the else =
is
> > > > not a completely unused branch.
> > >
> > > Well I can only repeat myself: This means that your userspace is
> > > severely broken!
> > >
> > > DMA-buf are meant to be long living objects
> > This patch addresses export *latency* regardless of how long-lived the
> > object is. Even a single, long-lived export will benefit from this
> > change if it would otherwise be blocked on adding an object to sysfs.
> > I think attempting to improve this latency still has merit.
>=20
> Fixing the latency is nice, but as it's just pushing the needed work off
> to another code path, it will take longer overall for the sysfs stuff to
> be ready for userspace to see.
>=20
> Perhaps we need to step back and understand what this code is supposed
> to be doing.  As I recall, it was created because some systems do not
> allow debugfs anymore, and they wanted the debugging information that
> the dmabuf code was exposing to debugfs on a "normal" system.  Moving
> that logic to sysfs made sense, but now I am wondering why we didn't see
> these issues in the debugfs code previously?
>=20
> Perhaps we should go just one step further and make a misc device node
> for dmabug debugging information to be in and just have userspace
> poll/read on the device node and we spit the info that used to be in
> debugfs out through that?  That way this only affects systems when they
> want to read the information and not normal code paths?  Yeah that's a
> hack, but this whole thing feels overly complex now.

A bit late on this discussion, but just wanted to add my +1 that we should
either redesign the uapi, or fix the underlying latency issue in sysfs, or
whatever else is deemed the proper fix.

Making uapi interfaces async in ways that userspace can't discover is a
hack that we really shouldn't consider, at least for upstream. All kinds
of hilarious things might start to happen when an object exists, but not
consistently in all the places where it should be visible. There's a
reason sysfs has all these neat property groups so that absolutely
everything is added atomically. Doing stuff later on just because usually
no one notices that the illusion falls apart isn't great.

Unfortunately I don't have a clear idea here what would be the right
solution :-/ One idea perhaps: Should we dynamically enumerate the objects
when userspace does a readdir()? That's absolutely not how sysfs works,
but procfs works like that and there's discussions going around about
moving these optimizations to other kernfs implementations. At least there
was a recent lwn article on this:

https://lwn.net/Articles/895111/

But that would be serious amounts of work I guess.
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
