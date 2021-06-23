Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 807043B1509
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 09:44:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B224F63523
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 07:44:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8433163520; Wed, 23 Jun 2021 07:43:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 382DC61A3A;
	Wed, 23 Jun 2021 07:43:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AB69B60AC6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 07:43:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A0FD561A3A; Wed, 23 Jun 2021 07:43:54 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 by lists.linaro.org (Postfix) with ESMTPS id 95B6260AC6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 07:43:52 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id
 f3-20020a0568301c23b029044ce5da4794so1041588ote.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 00:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cWzvtRTbDifdl+PxaGCuS2g5VXsz2HZV7fjfjiuvl1s=;
 b=MwPZIV8ivWfiDYeNv72T0B+TQPZZrJ03iZ4rRoU2dOZH5hIhooeh4E9s44iqSXCJga
 rLhAfs3qLh5yoXMJcT0SlHUVp9mhu3ulY2L3UIReEZwzMCwACBeBALYnuoHv4l2iNsTi
 GPNyV/KpMzRb/s3TAd2ysZR4QjPPytSEIPRro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cWzvtRTbDifdl+PxaGCuS2g5VXsz2HZV7fjfjiuvl1s=;
 b=hleP0Z1DMI5kjcVcbCctl6yA8FtDKlnsXDttXILxXPQU/hbVXruBvdlCVwcc/miXmv
 AFNDPydmTCFXQvmS6kagddJLB1O13gQmoVfxduZozTvtORpGYMepwLhDNWP8/zmghzhu
 20mPu/nU8od59wEp4PSmKtY3Rc0sINB5LhbaFsjyrLX4kh2R9xCozpUl+rZ6Dn2PDrl2
 1zBAiaauQaTdNb3Wmp0V5sy5a6UuX/tZ65NhGvgUpa6SwajowpL3XCS8pBUt7YfyYkIj
 N+r51T0ewtxcN6vVxdBnT/Ytq0H6Y6oKTl9sqV+3zsW3e6SdJ1G5wPgEkjGFsjk0NAKl
 y7yw==
X-Gm-Message-State: AOAM533pobudvmVlINR9u43BmH9DkY0kMwMZopL+8csFcsWygz4yzSHT
 05VJedhVJAUHJ0Mg/YHNzOVH81J8x+/vAlPkpHIghw==
X-Google-Smtp-Source: ABdhPJwFpV7dlXUDEnB4E9Qw7A63kO4THfzJY0ME2w2Az3FtLmVWlU6ptDgsAet4iMbRa20uvHGl6WIJBc9CZdE8dbM=
X-Received: by 2002:a9d:27a4:: with SMTP id c33mr6705525otb.281.1624434231910; 
 Wed, 23 Jun 2021 00:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210620110327.4964-1-desmondcheongzx@gmail.com>
 <20210620110327.4964-2-desmondcheongzx@gmail.com>
 <YNChRvGjIz6++jnd@phenom.ffwll.local>
In-Reply-To: <YNChRvGjIz6++jnd@phenom.ffwll.local>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Jun 2021 09:43:41 +0200
Message-ID: <CAKMK7uGPo=iFffph=fRYeuE=RoGJ1JahukPAwszY7Rsu5rb=5Q@mail.gmail.com>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/2] drm: add a locked version of
 drm_is_current_master
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

On Mon, Jun 21, 2021 at 4:25 PM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Sun, Jun 20, 2021 at 07:03:26PM +0800, Desmond Cheong Zhi Xi wrote:
> > While checking the master status of the DRM file in
> > drm_is_current_master(), the device's master mutex should be
> > held. Without the mutex, the pointer fpriv->master may be freed
> > concurrently by another process calling drm_setmaster_ioctl(). This
> > could lead to use-after-free errors when the pointer is subsequently
> > dereferenced in drm_lease_owner().
> >
> > The callers of drm_is_current_master() from drm_auth.c hold the
> > device's master mutex, but external callers do not. Hence, we implement
> > drm_is_current_master_locked() to be used within drm_auth.c, and
> > modify drm_is_current_master() to grab the device's master mutex
> > before checking the master status.
> >
> > Reported-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> > Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
>
> Merged to drm-misc-fixes, thanks for your patch.

Cc'ed you on the revert, but this blew up in intel-gfx CI. Please cc:
intel-gfx@lists.freedesktop.org for the next round so CI can pick it
up (it doesn't read dri-devel here).

I'm not exactly sure how we can best fix that issue in general, maybe
there's more. But for the specific lockdep splat around getconnector I
think just pulling the call to drm_is_current_master out from the
connector mutex should avoid the issue (just store it locally and then
still have the if() condition under the connector mutex ofc).
-Daniel

> -Daniel
>
> > ---
> >  drivers/gpu/drm/drm_auth.c | 51 ++++++++++++++++++++++++--------------
> >  1 file changed, 32 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> > index 232abbba3686..86d4b72e95cb 100644
> > --- a/drivers/gpu/drm/drm_auth.c
> > +++ b/drivers/gpu/drm/drm_auth.c
> > @@ -61,6 +61,35 @@
> >   * trusted clients.
> >   */
> >
> > +static bool drm_is_current_master_locked(struct drm_file *fpriv)
> > +{
> > +     lockdep_assert_held_once(&fpriv->master->dev->master_mutex);
> > +
> > +     return fpriv->is_master && drm_lease_owner(fpriv->master) == fpriv->minor->dev->master;
> > +}
> > +
> > +/**
> > + * drm_is_current_master - checks whether @priv is the current master
> > + * @fpriv: DRM file private
> > + *
> > + * Checks whether @fpriv is current master on its device. This decides whether a
> > + * client is allowed to run DRM_MASTER IOCTLs.
> > + *
> > + * Most of the modern IOCTL which require DRM_MASTER are for kernel modesetting
> > + * - the current master is assumed to own the non-shareable display hardware.
> > + */
> > +bool drm_is_current_master(struct drm_file *fpriv)
> > +{
> > +     bool ret;
> > +
> > +     mutex_lock(&fpriv->master->dev->master_mutex);
> > +     ret = drm_is_current_master_locked(fpriv);
> > +     mutex_unlock(&fpriv->master->dev->master_mutex);
> > +
> > +     return ret;
> > +}
> > +EXPORT_SYMBOL(drm_is_current_master);
> > +
> >  int drm_getmagic(struct drm_device *dev, void *data, struct drm_file *file_priv)
> >  {
> >       struct drm_auth *auth = data;
> > @@ -223,7 +252,7 @@ int drm_setmaster_ioctl(struct drm_device *dev, void *data,
> >       if (ret)
> >               goto out_unlock;
> >
> > -     if (drm_is_current_master(file_priv))
> > +     if (drm_is_current_master_locked(file_priv))
> >               goto out_unlock;
> >
> >       if (dev->master) {
> > @@ -272,7 +301,7 @@ int drm_dropmaster_ioctl(struct drm_device *dev, void *data,
> >       if (ret)
> >               goto out_unlock;
> >
> > -     if (!drm_is_current_master(file_priv)) {
> > +     if (!drm_is_current_master_locked(file_priv)) {
> >               ret = -EINVAL;
> >               goto out_unlock;
> >       }
> > @@ -321,7 +350,7 @@ void drm_master_release(struct drm_file *file_priv)
> >       if (file_priv->magic)
> >               idr_remove(&file_priv->master->magic_map, file_priv->magic);
> >
> > -     if (!drm_is_current_master(file_priv))
> > +     if (!drm_is_current_master_locked(file_priv))
> >               goto out;
> >
> >       drm_legacy_lock_master_cleanup(dev, master);
> > @@ -342,22 +371,6 @@ void drm_master_release(struct drm_file *file_priv)
> >       mutex_unlock(&dev->master_mutex);
> >  }
> >
> > -/**
> > - * drm_is_current_master - checks whether @priv is the current master
> > - * @fpriv: DRM file private
> > - *
> > - * Checks whether @fpriv is current master on its device. This decides whether a
> > - * client is allowed to run DRM_MASTER IOCTLs.
> > - *
> > - * Most of the modern IOCTL which require DRM_MASTER are for kernel modesetting
> > - * - the current master is assumed to own the non-shareable display hardware.
> > - */
> > -bool drm_is_current_master(struct drm_file *fpriv)
> > -{
> > -     return fpriv->is_master && drm_lease_owner(fpriv->master) == fpriv->minor->dev->master;
> > -}
> > -EXPORT_SYMBOL(drm_is_current_master);
> > -
> >  /**
> >   * drm_master_get - reference a master pointer
> >   * @master: &struct drm_master
> > --
> > 2.25.1
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
