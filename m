Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A51898C7471
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 12:13:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FCB8447E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 10:13:57 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by lists.linaro.org (Postfix) with ESMTPS id B0EAE3F52A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 10:13:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=J9DQWvoZ;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.54) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-351d30ade7fso184412f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 03:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715854424; x=1716459224; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PL3A+Lq5qsI8B7R3zJ6ATrmpbf8tbtcXF50Qd0vm4po=;
        b=J9DQWvoZ/uQhpITkf8NbceIZf9440SXCIePKzClg/netyF+jlgu1QWDW0H+qd7g3EL
         uGdfilH+7tfJmSMOjnk4CPIih5gzwS3XOiXKDzl1mXZad7++JfLw1jvJEJpMhap+Lt5H
         jwUQx0bVtjIkB/gFPm0civorsYv3sj2jNBqp8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715854424; x=1716459224;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PL3A+Lq5qsI8B7R3zJ6ATrmpbf8tbtcXF50Qd0vm4po=;
        b=nKmWmZwTIs6tiP+wEUWoaCDZCuiA4KAOWOuMeOfsgAharj9DZGvL3hvMP1hUb2d9qa
         2HXy4ZsAgAPWhhX8RRugvlTD9GiW4vHCKLPj6NqrOFTGLcYbHMbNDMuveI1+8CRx03aY
         jr/8CqgtcEH4kXgWbWEYLUpePOrRFEdN05Hf28NGrBfKqfrhWem/wnbxxoLTaoXsbK4G
         fb4VJdt0p9pysuswT92dq2qGDWwsB869mnDv7BMQfdevLisuvK6oX85eTMmGGLY4VFZO
         0gBCtaFHmElI3LrK/YH9tTu22tzJfchwUSFPI9Uqe1gjr68ypkaOr4Tm0qQxJlPq1MDR
         372A==
X-Forwarded-Encrypted: i=1; AJvYcCVRlFV1yAg/2u9tJUr3kD5lPxlD3fZlXhkIRWS9iUYm/OZg7reCw1NVhWiFF4+7LNp3oeAcmTyK+nuHlESVfOw+FOkGhd+9/YCWdVVJNTs=
X-Gm-Message-State: AOJu0YwISs8PSKAjNQSb+FMtnM++OEM6jqNjE78evrfd6AwsSh4bPJw6
	wRUB1iFU4tg61H48As2/hOVp6ABcgVtk+cN90aS2Z3NirjMVV952TZpkwW5z8cU=
X-Google-Smtp-Source: AGHT+IFrOu2mAt7C1aMAaNxTCLbsYbd5mMBXhq9WratikDD42kzQoLe9iHoqPgFyU07inK7XLQ9rtw==
X-Received: by 2002:a05:600c:19c8:b0:419:f241:6336 with SMTP id 5b1f17b1804b1-41fea928decmr132296285e9.1.1715854424390;
        Thu, 16 May 2024 03:13:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41f87b2653bsm298218605e9.4.2024.05.16.03.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 03:13:43 -0700 (PDT)
Date: Thu, 16 May 2024 12:13:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Simon Ser <contact@emersion.fr>
Message-ID: <ZkXcVVt_G3TEh2iP@phenom.ffwll.local>
Mail-Followup-To: Simon Ser <contact@emersion.fr>,
	Daniel Stone <daniel@fooishbar.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Maxime Ripard <mripard@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Lennart Poettering <mzxreary@0pointer.de>,
	Robert Mader <robert.mader@collabora.com>,
	Sebastien Bacher <sebastien.bacher@canonical.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	linaro-mm-sig@lists.linaro.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Milan Zamazal <mzamazal@redhat.com>,
	Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <20240506-dazzling-nippy-rhino-eabccd@houat>
 <ZjjdUBYYKXJ1EPr5@phenom.ffwll.local>
 <cbe5a743-d8be-4b0e-99c4-e804fbadc099@redhat.com>
 <ZjoNTw-TkPnnWLTG@phenom.ffwll.local>
 <CAPj87rN3uSZoHpWLSQqz1SW9YMZNj9fkoA_EDEE_bzv-Tw8tSw@mail.gmail.com>
 <Zjs42PGvilLlF0Cg@phenom.ffwll.local>
 <CAPj87rN-wSbGSAoB8y3MXCS20_MAQvfpWSeUKYR6XzQ+Oh0FZA@mail.gmail.com>
 <Zjue98r4ZgGbMN5K@phenom.ffwll.local>
 <IXDM2ci-eGvU9RQkT6a52vcV66vr8d0ywbDRFY8gBjjNuMyv8RDgdJS0PvvfnKuPR1fXINPUjOBkKx4vIcshSb2Y11xd3DjfDQ-Np8VIFgQ=@emersion.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <IXDM2ci-eGvU9RQkT6a52vcV66vr8d0ywbDRFY8gBjjNuMyv8RDgdJS0PvvfnKuPR1fXINPUjOBkKx4vIcshSb2Y11xd3DjfDQ-Np8VIFgQ=@emersion.fr>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B0EAE3F52A
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[ffwll.ch,fooishbar.org,redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.54:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: EMPZLRQD3GPZTZ2AM6EHEIUDMXW5YX2S
X-Message-ID-Hash: EMPZLRQD3GPZTZ2AM6EHEIUDMXW5YX2S
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Hans de Goede <hdegoede@redhat.com>, Maxime Ripard <mripard@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EMPZLRQD3GPZTZ2AM6EHEIUDMXW5YX2S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 13, 2024 at 01:51:23PM +0000, Simon Ser wrote:
> On Wednesday, May 8th, 2024 at 17:49, Daniel Vetter <daniel@ffwll.ch> wrote:
> 
> > On Wed, May 08, 2024 at 09:38:33AM +0100, Daniel Stone wrote:
> > 
> > > On Wed, 8 May 2024 at 09:33, Daniel Vetter daniel@ffwll.ch wrote:
> > > 
> > > > On Wed, May 08, 2024 at 06:46:53AM +0100, Daniel Stone wrote:
> > > > 
> > > > > That would have the unfortunate side effect of making sandboxed apps
> > > > > less efficient on some platforms, since they wouldn't be able to do
> > > > > direct scanout anymore ...
> > > > 
> > > > I was assuming that everyone goes through pipewire, and ideally that is
> > > > the only one that can even get at these special chardev.
> > > > 
> > > > If pipewire is only for sandboxed apps then yeah this aint great :-/
> > > 
> > > No, PipeWire is fine, I mean graphical apps.
> > > 
> > > Right now, if your platform requires CMA for display, then the app
> > > needs access to the GPU render node and the display node too, in order
> > > to allocate buffers which the compositor can scan out directly. If it
> > > only has access to the render nodes and not the display node, it won't
> > > be able to allocate correctly, so its content will need a composition
> > > pass, i.e. performance penalty for sandboxing. But if it can allocate
> > > correctly, then hey, it can exhaust CMA just like heaps can.
> > > 
> > > Personally I think we'd be better off just allowing access and
> > > figuring out cgroups later. It's not like the OOM story is great
> > > generally, and hey, you can get there with just render nodes ...
> > 
> > Imo the right fix is to ask the compositor to allocate the buffers in this
> > case, and then maybe have some kind of revoke/purge behaviour on these
> > buffers. Compositor has an actual idea of who's a candidate for direct
> > scanout after all, not the app. Or well at least force migrate the memory
> > from cma to shmem.
> > 
> > If you only whack cgroups on this issue you're still stuck in the world
> > where either all apps together can ddos the display or no one can
> > realistically direct scanout.
> > 
> > So yeah on the display side the problem isn't solved either, but we knew
> > that already.
> 
> What makes scanout memory so special?
> 
> The way I see it, any kind of memory will always be a limited resource:
> regular programs can exhaust system memory, as well as GPU VRAM, as well
> as scanout memory. I think we need to have ways to limit/control/arbiter
> the allocations regardless, and I don't think scanout memory should be a
> special case here.

(Long w/en and I caught a cold)

It's not scanout that's special, it's cma memory that's special. Because
once you've allocated it, it's gone since it cannot be swapped out, and
there's not a lot of it to go around. Which means even if we'd have
cgroups for all the various gpu allocation heaps, you can't use cgroups to
manage cma in a meaningful way:

- You set the cgroup limits so low for apps that it's guaranteed that the
  compositor will always be able to allocate enough scanout memory for
  it's need. That will be low enough that apps can never allocate scanout
  buffers themselves.

- Or you set the limit high enough so that apps can allocate enough, which
  means (as soon as you have more than just one app and not a totally
  bonkers amount of cma) that the compositor might not be able to allocate
  anymore.

It's kinda shit situation, which is also why you need the compositor to be
able to revoke cma allocations it has handed to clients (like with drm
leases).

Or we just keep the current yolo situation.

For any other memory type than CMA most of the popular drivers at least
implement swapping, which gives you a ton more flexibility in setting up
limits in a way that actually work. But even there we'd need cgroups first
to make sure things don't go wrong too badly in the face of evil apps ...
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
