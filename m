Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B14055A283
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jun 2022 22:22:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC88E47936
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jun 2022 20:22:00 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 44D973EA36
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jun 2022 20:21:56 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id u12so6873984eja.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jun 2022 13:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=aI/Wm30z63oEYhq+jLGxZI/tPMnn/tbFlzZ2xbhv+F4=;
        b=DSfCIl93ErkZQTmodLqWf6MxjRIpF1ZnQis6V2AmfYLHN/rGtlxKfpfQusYdU3/UoQ
         cGZ9t8NGw8N1UESLaZQtt9KE8BCcJRvCrZjHW4cY3x/vspkpF+H+OZ9YyYSAm/sR4To9
         S80AKWsZyDrPVwQDWYceohfI1JDJJuzPD7o2I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=aI/Wm30z63oEYhq+jLGxZI/tPMnn/tbFlzZ2xbhv+F4=;
        b=VRl9z/4XDzFl1uxxTLviEE1mgdJAOlb88O7Zgz/aK8vq0+qgJ5O909bahRpRWeuYKN
         lBo+CtrW1+aq2RGWr4/VzW8FRNIi3c3/80jRlG4IyvJvmfu7TNcIBdbRfTqcDeLNMEqI
         8vevsQ3w95o2dW+Gq5KNqEtiiEKDJyKRyRBPwYGXiVepElwY6/KzggksTJvJWVzUWXyv
         MO/C4J1ig21IEJyxzWyRQacGAKv1J7KFner6ArhdaJeVTH/potHi6iDSJGqQOASZxPnJ
         rw5ORxKzk+VEUYwlCJeRyuAPntLbI4pZAxRBmdO8P6qC2Bt3KCSIBrlOZltSvsCfz4y4
         /jpg==
X-Gm-Message-State: AJIora8WgWMa1DJiWMprf1WM7mla4LI0uaBtT6c5aVZgr0BYOHtc7A+U
	qJPONEygyMxr4i2fbyO49RStPA==
X-Google-Smtp-Source: AGRyM1vMLazEoSIRdqrX8zCM+3y9xklBh+nj+P3ouSsHUhI81GOe3I6uIj9foVrhcJrq+L6LjvY0lQ==
X-Received: by 2002:a17:906:72d1:b0:722:e714:e9ff with SMTP id m17-20020a17090672d100b00722e714e9ffmr758067ejl.748.1656102115311;
        Fri, 24 Jun 2022 13:21:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id y22-20020a170906559600b00722e7919835sm1623844ejp.111.2022.06.24.13.21.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jun 2022 13:21:54 -0700 (PDT)
Date: Fri, 24 Jun 2022 22:21:52 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YrYc4IUHJWSbC6AX@phenom.ffwll.local>
Mail-Followup-To: Rob Clark <robdclark@gmail.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
	Gurchetan Singh <gurchetansingh@chromium.org>,
	Chia-I Wu <olvaffe@gmail.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Gert Wollny <gert.wollny@collabora.com>,
	Gustavo Padovan <gustavo.padovan@collabora.com>,
	Daniel Stone <daniel@fooishbar.org>,
	Tomeu Vizoso <tomeu.vizoso@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
	Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
	Emil Velikov <emil.l.velikov@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Tomasz Figa <tfiga@chromium.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	virtualization@lists.linux-foundation.org,
	Dmitry Osipenko <digetx@gmail.com>, linux-tegra@vger.kernel.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
	kernel@collabora.com
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-18-dmitry.osipenko@collabora.com>
 <CAF6AEGt61t2truYDCxm17hqUPV-UdEdHjLs+6vmj5RPoPuVBYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGt61t2truYDCxm17hqUPV-UdEdHjLs+6vmj5RPoPuVBYg@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: IH5VPL6HVMMI72GH2V22XKTP47IUBIWL
X-Message-ID-Hash: IH5VPL6HVMMI72GH2V22XKTP47IUBIWL
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dmitry Osipenko <dmitry.osipenko@collabora.com>, David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, Emil Velikov <emil.l.velikov@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Maur
 o Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, Dmitry Osipenko <digetx@gmail.com>, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 17/22] drm/shmem-helper: Add generic memory shrinker
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IH5VPL6HVMMI72GH2V22XKTP47IUBIWL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Jun 19, 2022 at 10:53:03AM -0700, Rob Clark wrote:
> On Thu, May 26, 2022 at 4:55 PM Dmitry Osipenko
> <dmitry.osipenko@collabora.com> wrote:
> > +       mutex_unlock(&gem_shrinker->lock);
> 
> As I mentioned on other thread, count_objects, being approximate but
> lockless and fast is the important thing.  Otherwise when you start
> hitting the shrinker on many threads, you end up serializing them all,
> even if you have no pages to return to the system at that point.

Yeah agreed, seems like I was wrong here :-) Atomic counter or something
would also be in link the the lru_list stuff.

It would be to record this in the kerneldoc for the shrinker structure
though, to make sure this is all understood.

> > +               /* prevent racing with the dma-buf importing/exporting */
> > +               if (!mutex_trylock(&gem_shrinker->dev->object_name_lock)) {
> > +                       *lock_contention |= true;
> > +                       goto resv_unlock;
> > +               }
> 
> I'm not sure this is a good idea to serialize on object_name_lock.
> Purgeable buffers should never be shared (imported or exported).  So
> at best you are avoiding evicting and immediately swapping back in, in
> a rare case, at the cost of serializing multiple threads trying to
> reclaim pages in parallel.

Yeah this sounds really bad. Plus this is a per-device lock, and doing
those with trylock means the shrinker will fail to find shrinkable memory
way too often. We need to engineer this out somehow.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
