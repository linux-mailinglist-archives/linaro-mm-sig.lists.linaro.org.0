Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A39763BA439
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Jul 2021 21:07:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C22A66716
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 Jul 2021 19:07:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F37796673C; Fri,  2 Jul 2021 19:07:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EDD360D42;
	Fri,  2 Jul 2021 19:07:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9E3EE6058D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  2 Jul 2021 19:07:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8AE1D60D42; Fri,  2 Jul 2021 19:07:50 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by lists.linaro.org (Postfix) with ESMTPS id 7E1EB6058D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  2 Jul 2021 19:07:48 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id l1so7244269wme.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 02 Jul 2021 12:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=eldD9WeHZLX6wVeB8QD8GX1uSa7l10sZxGzJ8FDpD+o=;
 b=Rxhb6O3gW6N9i9/X4TIaxpsb2UnTl8sEpgJESHL7ielObQqDRBMa0YD+dka0xeWG2a
 41eDh5E5iHyfltWQ10QJKfempg5UOYVPAzsMM75kdLFlG6g2Xyj63Bhr0fHNE2eBcR8h
 D19HLNgZ7cvL27xoby/du5ibQ/BUnrORM+My4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=eldD9WeHZLX6wVeB8QD8GX1uSa7l10sZxGzJ8FDpD+o=;
 b=HMcJxzcx0FNbfrv/dbszuHadtXAo/XsllTjiy8h9oQ69PTG8UxAl2mpCQQG4GWJvpF
 jJXceHGPX+dTNvquVBVDLwN1oclNvaePfMTUDHTiACpH61XWfNJCxFXWMIOlQ02iW277
 hzUb1XAiIPgoCvAUIxB/vAj6LnaKTB8OFYvUcPvuKA4ks2xaW3HNUz+AM70AZQlrM2sa
 aSgwSnfHSOPLY7iAhImGMlnNWmGr87vtfeZcbMLtf0YAIhzpU3hqsi8/AJHW2gCczf09
 /fqoK3nIuDP+9OjFxtswBtui57IAFcNWu9KK6o5bSOZnjNlm4fMeZRxNvxpcRj81b9eL
 lwng==
X-Gm-Message-State: AOAM531WUVKptBlB0U1JaqlZjQTukYI4X4ui6xdZ3i+AJ3m/MBXx2B4b
 FPKODVPkNAh2QMij67RbHvZVhg==
X-Google-Smtp-Source: ABdhPJxuuckgiHMKw5u2LFdcUJOOGD/QqPqftjLSsrtr60B+DTy0rLbZPAdCGh6heMzOeDQbto7cZQ==
X-Received: by 2002:a7b:c8da:: with SMTP id f26mr1048612wml.9.1625252867349;
 Fri, 02 Jul 2021 12:07:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f13sm4226230wrt.86.2021.07.02.12.07.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jul 2021 12:07:46 -0700 (PDT)
Date: Fri, 2 Jul 2021 21:07:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Message-ID: <YN9kAFcfGoB13x7f@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, sumit.semwal@linaro.org,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 skhan@linuxfoundation.org, gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 emil.l.velikov@gmail.com
References: <20210701165358.19053-1-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210701165358.19053-1-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v7 0/5] drm: address potential UAF bugs
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
Cc: tzimmermann@suse.de, airlied@linux.ie, gregkh@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, maarten.lankhorst@linux.intel.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org, emil.l.velikov@gmail.com,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Jul 02, 2021 at 12:53:53AM +0800, Desmond Cheong Zhi Xi wrote:
> This patch series addresses potential use-after-free errors when dereferencing pointers to struct drm_master. These were identified after one such bug was caught by Syzbot in drm_getunique():
> https://syzkaller.appspot.com/bug?id=148d2f1dfac64af52ffd27b661981a540724f803
> 
> The series is broken up into five patches:
> 
> 1. Move a call to drm_is_current_master() out from a section locked by &dev->mode_config.mutex in drm_mode_getconnector(). This patch does not apply to stable.
> 
> 2. Move a call to _drm_lease_held() out from the section locked by &dev->mode_config.idr_mutex in __drm_mode_object_find().
> 
> 3. Implement a locked version of drm_is_current_master() function that's used within drm_auth.c.
> 
> 4. Serialize drm_file.master by introducing a new lock that's held whenever the value of drm_file.master changes.
> 
> 5. Identify areas in drm_lease.c where pointers to struct drm_master are dereferenced, and ensure that the master pointers are not freed during use.
> 
> Changes in v6 -> v7:
> - Patch 2:
> Modify code alignment as suggested by the intel-gfx CI.
> 
> Update commit message based on the changes to patch 5.
> 
> - Patch 4:
> Add patch 4 to the series. This patch adds a new lock to serialize drm_file.master, in response to the lockdep splat by the intel-gfx CI.
> 
> - Patch 5:
> Move kerneldoc comment about protecting drm_file.master with drm_device.master_mutex into patch 4.
> 
> Update drm_file_get_master to use the new drm_file.master_lock instead of drm_device.master_mutex, in response to the lockdep splat by the intel-gfx CI.

So there's another one now because master->leases is protected by the
mode_config.idr_mutex, and that's a bit awkward to untangle.

Also I'm really surprised that there was now lockdep through the atomic
code anywhere. The reason seems to be that somehow CI reboot first before
it managed to run any of the kms_atomic tests, and we can only hit this
when we go through the atomic kms ioctl, the legacy kms ioctl don't have
that specific issue.

Anyway I think this approach doesn't look too workable, and we need
something new.

But first things first: Are you still on board working on this? You
started with a simple patch to fix a UAF bug, now we're deep into
reworking tricky locking ... If you feel like you want out I'm totally
fine with that.

Anyway, I think we need to split drm_device->master_mutex up into two
parts:

- One part that protects the actual access/changes, which I think for
  simplicity we'll just leave as the current lock. That lock is a very
  inner lock, since for the drm_lease.c stuff it has to nest within
  mode_config.idr_mutex even.

- Now the issue with checking master status/leases/whatever as an
  innermost lock is that you can race, it's a classic time of check vs
  time of use race: By the time we actually use the thing we validate
  we'er allowed to use, we might now have access anymore. There's two
  reasons for that:

  * DROPMASTER ioctl could remove the master rights, which removes access
    rights also for all leases

  * REVOKE_LEASE ioctl can do the same but only for a specific lease

  This is the thing we're trying to protect against in fbcon code, but
  that's very spotty protection because all the ioctls by other users
  aren't actually protected against this.

  So I think for this we need some kind of big reader lock.

Now for the implementation, there's a few things:

- I think best option for this big reader lock would be to just use srcu.
  We only need to flush out all current readers when we drop master or
  revoke a lease, so synchronize_srcu is perfectly good enough for this
  purpose.

- The fbdev code would switch over to srcu in
  drm_master_internal_acquire() and drm_master_internal_release(). Ofc
  within drm_master_internal_acquire we'd still need to check master
  status with the normal master_mutex.

- While we revamp all this we should fix the ioctl checks in drm_ioctl.c.
  Just noticed that drm_ioctl_permit() could and should be unexported,
  last user was removed.

  Within drm_ioctl_kernel we'd then replace the check for
  drm_is_current_master with the drm_master_internal_acquire/release.

- This alone does nothing, we still need to make sure that dropmaster and
  revoke_lease ioctl flush out all other access before they return to
  userspace. We can't just call synchronize_srcu because due to the ioctl
  code in drm_ioctl_kernel we're in that sruc section, we'd need to add a
  DRM_MASTER_FLUSH ioctl flag which we'd check only when DRM_MASTER is
  set, and use to call synchronize_srcu. Maybe wrap that in a
  drm_master_flush or so, or perhaps a drm_master_internal_release_flush.

- Also maybe we should drop the _internal_ from that name. Feels a bit
  wrong when we're also going to use this in the ioctl handler.

Thoughts? Totally silly and overkill?

Cheers, Daniel


> Changes in v5 -> v6:
> - Patch 2:
> Add patch 2 to the series. This patch moves the call to _drm_lease_held out from the section locked by &dev->mode_config.idr_mutex in __drm_mode_object_find.
> 
> - Patch 5:
> Clarify the kerneldoc for dereferencing drm_file.master, as suggested by Daniel Vetter.
> 
> Refactor error paths with goto labels so that each function only has a single drm_master_put(), as suggested by Emil Velikov.
> 
> Modify comparison to NULL into "!master", as suggested by the intel-gfx CI.
> 
> Changes in v4 -> v5:
> - Patch 1:
> Add patch 1 to the series. The changes in patch 1 do not apply to stable because they apply to new changes in the drm-misc-next branch. This patch moves the call to drm_is_current_master in drm_mode_getconnector out from the section locked by &dev->mode_config.mutex.
> 
> Additionally, added a missing semicolon to the patch, caught by the intel-gfx CI.
> 
> - Patch 3:
> Move changes to drm_connector.c into patch 1.
> 
> Changes in v3 -> v4:
> - Patch 3:
> Move the call to drm_is_current_master in drm_mode_getconnector out from the section locked by &dev->mode_config.mutex. As suggested by Daniel Vetter. This avoids a circular lock lock dependency as reported here https://patchwork.freedesktop.org/patch/440406/
> 
> Additionally, inside drm_is_current_master, instead of grabbing &fpriv->master->dev->master_mutex, we grab &fpriv->minor->dev->master_mutex to avoid dereferencing a null ptr if fpriv->master is not set.
> 
> - Patch 5:
> Modify kerneldoc formatting.
> 
> Additionally, add a file_priv->master NULL check inside drm_file_get_master, and handle the NULL result accordingly in drm_lease.c. As suggested by Daniel Vetter.
> 
> Changes in v2 -> v3:
> - Patch 3:
> Move the definition of drm_is_current_master and the _locked version higher up in drm_auth.c to avoid needing a forward declaration of drm_is_current_master_locked. As suggested by Daniel Vetter.
> 
> - Patch 5:
> Instead of leaking drm_device.master_mutex into drm_lease.c to protect drm_master pointers, add a new drm_file_get_master() function that returns drm_file->master while increasing its reference count, to prevent drm_file->master from being freed. As suggested by Daniel Vetter.
> 
> Changes in v1 -> v2:
> - Patch 5:
> Move the lock and assignment before the DRM_DEBUG_LEASE in drm_mode_get_lease_ioctl, as suggested by Emil Velikov.
> 
> Desmond Cheong Zhi Xi (5):
>   drm: avoid circular locks in drm_mode_getconnector
>   drm: separate locks in __drm_mode_object_find
>   drm: add a locked version of drm_is_current_master
>   drm: serialize drm_file.master with a master lock
>   drm: protect drm_master pointers in drm_lease.c
> 
>  drivers/gpu/drm/drm_auth.c        | 86 +++++++++++++++++++++++--------
>  drivers/gpu/drm/drm_connector.c   |  5 +-
>  drivers/gpu/drm/drm_file.c        |  1 +
>  drivers/gpu/drm/drm_lease.c       | 81 ++++++++++++++++++++++-------
>  drivers/gpu/drm/drm_mode_object.c | 10 ++--
>  include/drm/drm_auth.h            |  1 +
>  include/drm/drm_file.h            | 18 +++++--
>  7 files changed, 153 insertions(+), 49 deletions(-)
> 
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
