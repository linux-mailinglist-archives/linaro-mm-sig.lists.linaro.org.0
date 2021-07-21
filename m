Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 857C63D0F70
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jul 2021 15:24:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08755623DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jul 2021 13:24:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7DDC86319C; Wed, 21 Jul 2021 13:24:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBFBA61A28;
	Wed, 21 Jul 2021 13:24:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9AE33611F5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jul 2021 13:24:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 92C0B61A28; Wed, 21 Jul 2021 13:24:06 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by lists.linaro.org (Postfix) with ESMTPS id 866FF611F5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jul 2021 13:24:04 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id e11so2803916oii.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jul 2021 06:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=J7kjvLLVDgJb9U07ZLlILvOE2QjtW/z+1WytRCj7dp8=;
 b=QOigZ7HWMPOvG1xoIIHD8wdnyLBZ4mo25yN8IHWf0/d8F9p0Zv2UidhAn8lVEpR/yL
 7ZTwOA9PZn/GSdyaJLZmXGBguYqrUZQrUmnWDyuiICONq29uw2rrqDG7XOG8QFr5m0S8
 3f1zb5LX2McJ0CPcKT68UqknK6lPLYNygpRVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=J7kjvLLVDgJb9U07ZLlILvOE2QjtW/z+1WytRCj7dp8=;
 b=oqMd9HPMgCqCHHet5fH1MPXiuzaQDm/r11IZbsZdO/CVZgpz5nUaWPcNrzlGKIVOQa
 ozMBed/95GOC8blRGLGCifzmRApE7giRNcFss788lbyY9ilFMUO49ki/Xt0zRHrCjd0/
 atjoD0xZLOkLjZGOZ3O2WDJ5YH3PHpBXay2gSKDN5x3pBP2e/zOfSQBPsMoehJ6NzQHe
 PyorM+pR+ix00bf8rcbF2EUHPWwwoSZytgOLgCVtI1wtEo1JgQfXsUywqGWX0eFOBqSO
 oHvv05YiKIpTHh9CK2VMBHlW51Z7ypbghpW/H/2GJGSLoC8pSWVuPvwMYm5Q98Hhgi85
 jRkw==
X-Gm-Message-State: AOAM532yIQm1qKNKknMiiObWAq/InQVmhfzlTj8YwaZ89+Zar3imwpD9
 +NglSH9d8f1dcD91J3bi7pAoULHm8M+6B0HLH3zyrA==
X-Google-Smtp-Source: ABdhPJx8x0J+2SiqO58mgYIWBv6MyNu2SlyMo+O1qNHYzfztf94nd9sZePkbuAsT0M15zIAz8qz463GkTwkOF3moWvM=
X-Received: by 2002:aca:d4cf:: with SMTP id l198mr2546927oig.14.1626873843909; 
 Wed, 21 Jul 2021 06:24:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210712043508.11584-1-desmondcheongzx@gmail.com>
 <YPcU3wJK7kC5b7kv@phenom.ffwll.local>
 <50c5582b-c674-4ef8-585f-7a3d78a49f85@gmail.com>
 <CAKMK7uGvb3O9Ypd73xZf6bdMcXJyGJw4C7GXGprkZLpN9Gx7qQ@mail.gmail.com>
 <52c4207a-6830-01c9-a28c-635c68de3e14@gmail.com>
In-Reply-To: <52c4207a-6830-01c9-a28c-635c68de3e14@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 21 Jul 2021 15:23:52 +0200
Message-ID: <CAKMK7uF4Y+WbiXWyvn1em4=xZAFvBusRhxYg9ue5TE003tovbA@mail.gmail.com>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v8 0/5] drm: address potential UAF bugs
 with drm_master ptrs
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
Cc: Dave Airlie <airlied@linux.ie>, Greg KH <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Emil Velikov <emil.l.velikov@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Shuah Khan <skhan@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Jul 21, 2021 at 2:44 PM Desmond Cheong Zhi Xi
<desmondcheongzx@gmail.com> wrote:
> On 21/7/21 6:29 pm, Daniel Vetter wrote:
> > On Wed, Jul 21, 2021 at 6:12 AM Desmond Cheong Zhi Xi
> > <desmondcheongzx@gmail.com> wrote:
> >> On 21/7/21 2:24 am, Daniel Vetter wrote:
> >>> On Mon, Jul 12, 2021 at 12:35:03PM +0800, Desmond Cheong Zhi Xi wrote:
> >>>> Hi,
> >>>>
> >>>> In the previous thread on this series we decided to remove a patch that was violating a lockdep requirement in drm_lease. In addition to this change, I took a closer look at the CI logs for the Basic Acceptance Tests and noticed that another regression was introduced. The new patch 2 is a response to this.
> >>>>
> >>>> Overall, this series addresses potential use-after-free errors when dereferencing pointers to struct drm_master. These were identified after one such bug was caught by Syzbot in drm_getunique():
> >>>> https://syzkaller.appspot.com/bug?id=148d2f1dfac64af52ffd27b661981a540724f803
> >>>>
> >>>> The series is broken up into five patches:
> >>>>
> >>>> 1. Move a call to drm_is_current_master() out from a section locked by &dev->mode_config.mutex in drm_mode_getconnector(). This patch does not apply to stable.
> >>>>
> >>>> 2. Move a call to drm_is_current_master() out from the RCU read-side critical section in drm_clients_info().
> >>>>
> >>>> 3. Implement a locked version of drm_is_current_master() function that's used within drm_auth.c.
> >>>>
> >>>> 4. Serialize drm_file.master by introducing a new spinlock that's held whenever the value of drm_file.master changes.
> >>>>
> >>>> 5. Identify areas in drm_lease.c where pointers to struct drm_master are dereferenced, and ensure that the master pointers are not freed during use.
> >>>>
> >>>> v7 -> v8:
> >>>> - Remove the patch that moves the call to _drm_lease_held out from the section locked by &dev->mode_config.idr_mutex in __drm_mode_object_find. This patch violated an existing lockdep requirement as reported by the intel-gfx CI.
> >>>> - Added a new patch that moves a call to drm_is_current_master out from the RCU critical section in drm_clients_info. This was reported by the intel-gfx CI.
> >>>>
> >>>> v6 -> v7:
> >>>> - Modify code alignment as suggested by the intel-gfx CI.
> >>>> - Add a new patch to the series that adds a new lock to serialize drm_file.master, in response to the lockdep splat by the intel-gfx CI.
> >>>> - Update drm_file_get_master to use the new drm_file.master_lock instead of drm_device.master_mutex, in response to the lockdep splat by the intel-gfx CI.
> >>>>
> >>>> v5 -> v6:
> >>>> - Add a new patch to the series that moves the call to _drm_lease_held out from the section locked by &dev->mode_config.idr_mutex in __drm_mode_object_find.
> >>>> - Clarify the kerneldoc for dereferencing drm_file.master, as suggested by Daniel Vetter.
> >>>> - Refactor error paths with goto labels so that each function only has a single drm_master_put(), as suggested by Emil Velikov.
> >>>> - Modify comparisons to NULL into "!master", as suggested by the intel-gfx CI.
> >>>>
> >>>> v4 -> v5:
> >>>> - Add a new patch to the series that moves the call to drm_is_current_master in drm_mode_getconnector out from the section locked by &dev->mode_config.mutex.
> >>>> - Additionally, added a missing semicolon to the patch, caught by the intel-gfx CI.
> >>>>
> >>>> v3 -> v4:
> >>>> - Move the call to drm_is_current_master in drm_mode_getconnector out from the section locked by &dev->mode_config.mutex. As suggested by Daniel Vetter. This avoids a circular lock lock dependency as reported here https://patchwork.freedesktop.org/patch/440406/
> >>>> - Inside drm_is_current_master, instead of grabbing &fpriv->master->dev->master_mutex, we grab &fpriv->minor->dev->master_mutex to avoid dereferencing a null ptr if fpriv->master is not set.
> >>>> - Modify kerneldoc formatting for drm_file.master, as suggested by Daniel Vetter.
> >>>> - Additionally, add a file_priv->master NULL check inside drm_file_get_master, and handle the NULL result accordingly in drm_lease.c. As suggested by Daniel Vetter.
> >>>>
> >>>> v2 -> v3:
> >>>> - Move the definition of drm_is_current_master and the _locked version higher up in drm_auth.c to avoid needing a forward declaration of drm_is_current_master_locked. As suggested by Daniel Vetter.
> >>>> - Instead of leaking drm_device.master_mutex into drm_lease.c to protect drm_master pointers, add a new drm_file_get_master() function that returns drm_file->master while increasing its reference count, to prevent drm_file->master from being freed. As suggested by Daniel Vetter.
> >>>>
> >>>> v1 -> v2:
> >>>> - Move the lock and assignment before the DRM_DEBUG_LEASE in drm_mode_get_lease_ioctl, as suggested by Emil Velikov.
> >>>
> >>> Apologies for the delay, I missed your series. Maybe just ping next time
> >>> around there's silence.
> >>>
> >>> Looks all great, merged to drm-misc-next. Given how complex this was I'm
> >>> vary of just pushing this to -fixes without some solid testing.
> >>>
> >>
> >> Hi Daniel,
> >>
> >> Thanks for merging, more testing definitely sounds good to me.
> >>
> >>> One thing I noticed is that drm_is_current_master could just use the
> >>> spinlock, since it's only doing a read access. Care to type up that patch?
> >>>
> >>
> >> I thought about this too, but I'm not sure if that's the best solution.
> >>
> >> drm_is_current_master calls drm_lease_owner which then walks up the tree
> >> of master lessors. The spinlock protects the master of the current drm
> >> file, but subsequent lessors aren't protected without holding the
> >> device's master mutex.
> >
> > But this isn't a fpriv->master pointer, but a master->lessor pointer.
> > Which should never ever be able to change (we'd have tons of uaf bugs
> > around drm_lease_owner otherwise). So I don't think there's anything
> > that dev->master_lock protects here that fpriv->master_lookup_lock
> > doesn't protect already?
> >
> > Or am I missing something?
> >  > The comment in the struct drm_master says it's protected by
> > mode_config.idr_mutex, but that only applies to the idrs and lists I
> > think.
> >
>
> Ah you're right, I also completely forgot that lessees hold a reference
> to their lessor so nothing will be freed as long as the spinlock is
> held. I'll prepare that patch then, thanks for pointing it out.

btw since we now looked at all this in detail, can you perhaps do a
patch to update the kerneldoc for all the lease fields in struct
drm_master? I think moving them to the inline style and then adding
comments for each field how locking/lifetime rules work would be
really good. Since right now it's all fresh from for us.
-Daniel

> >>> Also, do you plan to look into that idea we've discussed to flush pending
> >>> access when we revoke a master or a lease? I think that would be really
> >>> nice improvement here.
> >>> -Daniel
> >>>
> >>
> >> Yup, now that the potential UAFs are addressed (hopefully), I'll take a
> >> closer look and propose a patch for this.
> >
> > Thanks a lot.
> > -Daniel
> >
> >>
> >> Best wishes,
> >> Desmond
> >>
> >>>>
> >>>> Desmond Cheong Zhi Xi (5):
> >>>>     drm: avoid circular locks in drm_mode_getconnector
> >>>>     drm: avoid blocking in drm_clients_info's rcu section
> >>>>     drm: add a locked version of drm_is_current_master
> >>>>     drm: serialize drm_file.master with a new spinlock
> >>>>     drm: protect drm_master pointers in drm_lease.c
> >>>>
> >>>>    drivers/gpu/drm/drm_auth.c      | 93 ++++++++++++++++++++++++---------
> >>>>    drivers/gpu/drm/drm_connector.c |  5 +-
> >>>>    drivers/gpu/drm/drm_debugfs.c   |  3 +-
> >>>>    drivers/gpu/drm/drm_file.c      |  1 +
> >>>>    drivers/gpu/drm/drm_lease.c     | 81 +++++++++++++++++++++-------
> >>>>    include/drm/drm_auth.h          |  1 +
> >>>>    include/drm/drm_file.h          | 18 +++++--
> >>>>    7 files changed, 152 insertions(+), 50 deletions(-)
> >>>>
> >>>> --
> >>>> 2.25.1
> >>>>
> >>>
> >>
> >
> >
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
