Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A718D53A534
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 14:40:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0C593F05C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jun 2022 12:40:22 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id 6ED3C3EBC0
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jun 2022 12:40:18 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id d26so2155736wrb.13
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jun 2022 05:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=2BLb3a/bKK8JSZ8nleWjYNhcYmYYgG/wy6R6ErsL1i8=;
        b=i2bfN+y0JLz22po/eL3Lw0qDgyhBAkJl6ewZX3EQMlGvvCs7Mntt2aiRKICHfvX4iV
         YPr9HwJ9nHvKHXaRqJsSlYNbAxo4NEEqps8N8PPgy9Z1wTXqE2F1lOKPj0tkaAHn/GJD
         nbWqPo8Enig167z9slg0Biu2LWGF+423jDsao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=2BLb3a/bKK8JSZ8nleWjYNhcYmYYgG/wy6R6ErsL1i8=;
        b=FQlAw/a5hXx7PVcbflfG9yuCgV+XVcmbyYkA8ansvSZaE2BYvzizCbDYgitEQ8S08T
         YSfsr7qkslDABOuNxGuG+nhUpzMsYsB7fr/XFw7vrpQLh6D1/ANtbSZRyrwyb5Oa06dg
         24kKq9Px02hlp3Tq+XQQ2nQH68ySktmBp9QLHqI6a9DErqiz57a1TFoGxzOS0+Z0fsTm
         Ct+RTTXshGqpSd4RSSeAdVQT2DunQ3J7wN+7Ul8Os4qLMWDLZ7En0ZcaHB+DMS0TRPss
         Bxm5IV6s5McKEljjYDDNxOTK+1HB9uDR7lkqXsjWMs/NLYZyvooiM4WKctzVS359Y5a7
         WYOg==
X-Gm-Message-State: AOAM531cuwjxZRnMYaqcC6twagL83O/7V44BBjSEGXpAr0+NmGGoYwu0
	faykUEc+tMOz3wrwGdv5NcTiEQ==
X-Google-Smtp-Source: ABdhPJzJHzc9OdTZBqvz/Ub5yA/mOJC3JvFEGfzcdAppFu9qrZLd+lPSu+/84/nYDyRM4+PKm6iNPw==
X-Received: by 2002:adf:f38f:0:b0:210:30cf:6e4a with SMTP id m15-20020adff38f000000b0021030cf6e4amr14338402wro.676.1654087217380;
        Wed, 01 Jun 2022 05:40:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id j37-20020a05600c1c2500b0039c235fb6a5sm1703467wms.8.2022.06.01.05.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 05:40:16 -0700 (PDT)
Date: Wed, 1 Jun 2022 14:40:14 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YpdeLrJzmCA7OozT@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
 <Yo4/XhWQkACWaPIh@phenom.ffwll.local>
 <CABdmKX2dC0fkFrCedjhzmheYiDVP4PnKBMeGkX3_bgrLjOiYOg@mail.gmail.com>
 <38da6dcd-b395-f32f-5a47-6a8f2c6a4331@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <38da6dcd-b395-f32f-5a47-6a8f2c6a4331@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: G5SMUQCTM5KIDBWDN5G5JG6BBOWFKRKD
X-Message-ID-Hash: G5SMUQCTM5KIDBWDN5G5JG6BBOWFKRKD
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suren Baghdasaryan <surenb@google.com>, Kalesh Singh <kaleshsingh@google.com>, Minchan Kim <minchan@google.com>, Greg Kroah-Hartman <gregkh@google.com>, John Stultz <jstultz@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Hridya Valsaraju <hridya@google.com>, kernel-team@android.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Move sysfs work out of DMA-BUF export path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G5SMUQCTM5KIDBWDN5G5JG6BBOWFKRKD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, May 30, 2022 at 08:12:16AM +0200, Christian K=F6nig wrote:
> Am 25.05.22 um 23:05 schrieb T.J. Mercier:
> > On Wed, May 25, 2022 at 7:38 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> > > On Tue, May 17, 2022 at 08:13:24AM +0200, Greg Kroah-Hartman wrote:
> > > > On Mon, May 16, 2022 at 05:08:05PM -0700, T.J. Mercier wrote:
> > > > > On Mon, May 16, 2022 at 12:21 PM Christian K=F6nig
> > > > > <christian.koenig@amd.com> wrote:
> > > > > > Am 16.05.22 um 20:08 schrieb T.J. Mercier:
> > > > > > > On Mon, May 16, 2022 at 10:20 AM Christian K=F6nig
> > > > > > > <christian.koenig@amd.com> wrote:
> > > > > > > > Am 16.05.22 um 19:13 schrieb T.J. Mercier:
> > > > > > > > > Recently, we noticed an issue where a process went into d=
irect reclaim
> > > > > > > > > while holding the kernfs rw semaphore for sysfs in write =
(exclusive)
> > > > > > > > > mode. This caused processes who were doing DMA-BUF export=
s and releases
> > > > > > > > > to go into uninterruptible sleep since they needed to acq=
uire the same
> > > > > > > > > semaphore for the DMA-BUF sysfs entry creation/deletion. =
In order to avoid
> > > > > > > > > blocking DMA-BUF export for an indeterminate amount of ti=
me while
> > > > > > > > > another process is holding the sysfs rw semaphore in excl=
usive mode,
> > > > > > > > > this patch moves the per-buffer sysfs file creation to th=
e default work
> > > > > > > > > queue. Note that this can lead to a short-term inaccuracy=
 in the dmabuf
> > > > > > > > > sysfs statistics, but this is a tradeoff to prevent the h=
ot path from
> > > > > > > > > being blocked. A work_struct is added to dma_buf to achie=
ve this, but as
> > > > > > > > > it is unioned with the kobject in the sysfs_entry, dma_bu=
f does not
> > > > > > > > > increase in size.
> > > > > > > > I'm still not very keen of this approach as it strongly fee=
ls like we
> > > > > > > > are working around shortcoming somewhere else.
> > > > > > > >=20
> > > > > > > My read of the thread for the last version is that we're runn=
ing into
> > > > > > > a situation where sysfs is getting used for something it wasn=
't
> > > > > > > originally intended for, but we're also stuck with this sysfs
> > > > > > > functionality for dmabufs.
> > > > > > >=20
> > > > > > > > > Fixes: bdb8d06dfefd ("dmabuf: Add the capability to expos=
e DMA-BUF stats in sysfs")
> > > > > > > > > Originally-by: Hridya Valsaraju <hridya@google.com>
> > > > > > > > > Signed-off-by: T.J. Mercier <tjmercier@google.com>
> > > > > > > > >=20
> > > > > > > > > ---
> > > > > > > > > See the originally submitted patch by Hridya Valsaraju he=
re:
> > > > > > > > > https://nam11.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Flkml.org%2Flkml%2F2022%2F1%2F4%2F1066&amp;data=3D05%7C01%7Cchris=
tian.koenig%40amd.com%7C8f00afd44b9744c45f5708da3e926503%7C3dd8961fe4884e60=
8e11a82d994e183d%7C0%7C0%7C637891095771223650%7CUnknown%7CTWFpbGZsb3d8eyJWI=
joiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%=
7C&amp;sdata=3DpubWqUyqhCWpXHhJHsoqarc3GLtB6IFB1rhgfsL4a1M%3D&amp;reserved=
=3D0
> > > > > > > > >=20
> > > > > > > > > v2 changes:
> > > > > > > > > - Defer only sysfs creation instead of creation and teard=
own per
> > > > > > > > > Christian K=F6nig
> > > > > > > > >=20
> > > > > > > > > - Use a work queue instead of a kthread for deferred work=
 per
> > > > > > > > > Christian K=F6nig
> > > > > > > > > ---
> > > > > > > > >     drivers/dma-buf/dma-buf-sysfs-stats.c | 56 ++++++++++=
++++++++++-------
> > > > > > > > >     include/linux/dma-buf.h               | 14 ++++++-
> > > > > > > > >     2 files changed, 54 insertions(+), 16 deletions(-)
> > > > > > > > >=20
> > > > > > > > > diff --git a/drivers/dma-buf/dma-buf-sysfs-stats.c b/driv=
ers/dma-buf/dma-buf-sysfs-stats.c
> > > > > > > > > index 2bba0babcb62..67b0a298291c 100644
> > > > > > > > > --- a/drivers/dma-buf/dma-buf-sysfs-stats.c
> > > > > > > > > +++ b/drivers/dma-buf/dma-buf-sysfs-stats.c
> > > > > > > > > @@ -11,6 +11,7 @@
> > > > > > > > >     #include <linux/printk.h>
> > > > > > > > >     #include <linux/slab.h>
> > > > > > > > >     #include <linux/sysfs.h>
> > > > > > > > > +#include <linux/workqueue.h>
> > > > > > > > >=20
> > > > > > > > >     #include "dma-buf-sysfs-stats.h"
> > > > > > > > >=20
> > > > > > > > > @@ -168,10 +169,46 @@ void dma_buf_uninit_sysfs_statistic=
s(void)
> > > > > > > > >         kset_unregister(dma_buf_stats_kset);
> > > > > > > > >     }
> > > > > > > > >=20
> > > > > > > > > +static void sysfs_add_workfn(struct work_struct *work)
> > > > > > > > > +{
> > > > > > > > > +     struct dma_buf_sysfs_entry *sysfs_entry =3D
> > > > > > > > > +             container_of(work, struct dma_buf_sysfs_ent=
ry, sysfs_add_work);
> > > > > > > > > +     struct dma_buf *dmabuf =3D sysfs_entry->dmabuf;
> > > > > > > > > +
> > > > > > > > > +     /*
> > > > > > > > > +      * A dmabuf is ref-counted via its file member. If =
this handler holds the only
> > > > > > > > > +      * reference to the dmabuf, there is no need for sy=
sfs kobject creation. This is an
> > > > > > > > > +      * optimization and a race; when the reference coun=
t drops to 1 immediately after
> > > > > > > > > +      * this check it is not harmful as the sysfs entry =
will still get cleaned up in
> > > > > > > > > +      * dma_buf_stats_teardown, which won't get called u=
ntil the final dmabuf reference
> > > > > > > > > +      * is released, and that can't happen until the end=
 of this function.
> > > > > > > > > +      */
> > > > > > > > > +     if (file_count(dmabuf->file) > 1) {
> > > > > > > > Please completely drop that. I see absolutely no justificat=
ion for this
> > > > > > > > additional complexity.
> > > > > > > >=20
> > > > > > > This case gets hit around 5% of the time in my testing so the=
 else is
> > > > > > > not a completely unused branch.
> > > > > > Well I can only repeat myself: This means that your userspace is
> > > > > > severely broken!
> > > > > >=20
> > > > > > DMA-buf are meant to be long living objects
> > > > > This patch addresses export *latency* regardless of how long-live=
d the
> > > > > object is. Even a single, long-lived export will benefit from this
> > > > > change if it would otherwise be blocked on adding an object to sy=
sfs.
> > > > > I think attempting to improve this latency still has merit.
> > > > Fixing the latency is nice, but as it's just pushing the needed wor=
k off
> > > > to another code path, it will take longer overall for the sysfs stu=
ff to
> > > > be ready for userspace to see.
> > > >=20
> > > > Perhaps we need to step back and understand what this code is suppo=
sed
> > > > to be doing.  As I recall, it was created because some systems do n=
ot
> > > > allow debugfs anymore, and they wanted the debugging information th=
at
> > > > the dmabuf code was exposing to debugfs on a "normal" system.  Movi=
ng
> > > > that logic to sysfs made sense, but now I am wondering why we didn'=
t see
> > > > these issues in the debugfs code previously?
> > > >=20
> > > > Perhaps we should go just one step further and make a misc device n=
ode
> > > > for dmabug debugging information to be in and just have userspace
> > > > poll/read on the device node and we spit the info that used to be in
> > > > debugfs out through that?  That way this only affects systems when =
they
> > > > want to read the information and not normal code paths?  Yeah that'=
s a
> > > > hack, but this whole thing feels overly complex now.
> > > A bit late on this discussion, but just wanted to add my +1 that we s=
hould
> > > either redesign the uapi, or fix the underlying latency issue in sysf=
s, or
> > > whatever else is deemed the proper fix.
> > >=20
> > > Making uapi interfaces async in ways that userspace can't discover is=
 a
> > > hack that we really shouldn't consider, at least for upstream. All ki=
nds
> > > of hilarious things might start to happen when an object exists, but =
not
> > > consistently in all the places where it should be visible. There's a
> > > reason sysfs has all these neat property groups so that absolutely
> > > everything is added atomically. Doing stuff later on just because usu=
ally
> > > no one notices that the illusion falls apart isn't great.
> > >=20
> > > Unfortunately I don't have a clear idea here what would be the right
> > > solution :-/ One idea perhaps: Should we dynamically enumerate the ob=
jects
> > > when userspace does a readdir()? That's absolutely not how sysfs work=
s,
> > > but procfs works like that and there's discussions going around about
> > > moving these optimizations to other kernfs implementations. At least =
there
> > > was a recent lwn article on this:
> > >=20
> > > https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl=
wn.net%2FArticles%2F895111%2F&amp;data=3D05%7C01%7Cchristian.koenig%40amd.c=
om%7C8f00afd44b9744c45f5708da3e926503%7C3dd8961fe4884e608e11a82d994e183d%7C=
0%7C0%7C637891095771223650%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQ=
IjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DQ58O=
Zi79vmKMCZLL0pY7NniIW6hmSqyWjlEaZgqzYtM%3D&amp;reserved=3D0
> > >=20
> > > But that would be serious amounts of work I guess.
> > > -Daniel
> > > --
> > > Daniel Vetter"
> > > Software Engineer, Intel Corporation
> > > https://nam11.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fbl=
og.ffwll.ch%2F&amp;data=3D05%7C01%7Cchristian.koenig%40amd.com%7C8f00afd44b=
9744c45f5708da3e926503%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6378910=
95771223650%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJ=
BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DpOIl5yszzak4TPqjBYy=
L0mHjj%2F1nYRfNJbNPQTXBhbA%3D&amp;reserved=3D0
> > Hi Daniel,
> >=20
> > My team has been discussing this, and I think we're approaching a
> > consensus on a way forward that involves deprecating the existing
> > uapi.
> >=20
> > I actually proposed a similar (but less elegant) idea to the readdir()
> > one. A new "dump_dmabuf_data" sysfs file that a user would write to,
> > which would cause a one-time creation of the per-buffer files. These
> > could be left around to become stale, or get cleaned up after first
> > read. However to me it seems impossible to correctly deal with
> > multiple simultaneous users with this technique. We're not currently
> > planning to pursue this.
> >=20
> > Thanks for the link to the article. That on-demand creation sounds
> > like it would allow us to keep the existing structure and files for
> > DMA-buf, assuming there is not a similar lock contention issue when
> > adding a new node to the virtual tree. :)
>=20
> I think that this on demand creation is even worse than the existing idea=
s,
> but if you can get Greg to accept the required sysfs changes than that's =
at
> least outside of my maintenance domain any more :)

I think doing it cleanly in sysfs without changing the current uapi sounds
pretty good. The hand-rolled "touch a magic file to force update all the
files into existence" sounds like a horror show to me :-) Plus I don't see
how you can actually avoid the locking pain with that since once the files
are created, you have to remove them synchronously again, plus you get to
deal with races on top (and likely some locking inversion fun on top).
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
