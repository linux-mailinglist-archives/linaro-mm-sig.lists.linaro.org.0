Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2047E8C7484
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 12:18:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CB9544803
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 10:18:27 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id F211C3F52A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 10:18:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Q35GlMTT;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.47) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-41ff95798d4so8666405e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 03:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715854695; x=1716459495; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8TJDXJKaQUdW/2WF0Ge4iVoqYkhg+zWynHOclwI6BcY=;
        b=Q35GlMTTWaPazlRV1SFPlGZyydOIf2YiDT0C02xXLLbJQULlgy0GT5gHPdLgzJKO/f
         xZzwL+BUbOUwdyc3VMqaswNQj7djkX+7zOeEnttBfgnH0JnYXWcH6k18eTWYjtIjqDiM
         1Mvpd1K0l4aXlJuCD6Nuwvnje8xg5aEyNAIZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715854695; x=1716459495;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8TJDXJKaQUdW/2WF0Ge4iVoqYkhg+zWynHOclwI6BcY=;
        b=N4IiT7Ug9+l/JbymmNBuFd38xStvaECcVgZsf5rxg0pI2JDNV8mdiWMi4jf+2IvO/c
         vupZLUICtbFjsgxUQFmdaY64BoMCW/Tj6y/KFafVx8PZqDXEMwbH08fhKCI/fgW+fuwN
         yUeMDztWkhcWDhVKu5TOatDs9pG8FdoxApkB/lNHommqOuLbNyisMiGIIAxTo//PBZP9
         nS3dOLr8/ZePfJ6uqCPJcJKjHD3Eiy5S3nvp9Tvi2CXUrAkuUINfbjnEbyyNKqEiIvwd
         oSnUqkkf4kGPfLZlgxJNkvK44aDJZ5Hi0v7wNS2cD68z25lGCzVAAlYDmfQwfAzdAbKp
         EeXw==
X-Forwarded-Encrypted: i=1; AJvYcCV8VbubDsy2nZ9ffduLawACDUe8nlp7y6W4FJ7O6vuvsVZLBLFuibztabbCGX/Yud3S9+LP+ZQHJ13VRkmshmtNwIYhqJPX0PrMioi/UzE=
X-Gm-Message-State: AOJu0YxoM66g9wN8alhcsr8jSleqlE+HAvibl+7DaPBg5niiqNIfDd8C
	9OK0otT6NeWtw1LUsdf1OGIrdXqNXv7iwo//N1Y7xQKcHXvw7W9Ve7WcE9xFmgw=
X-Google-Smtp-Source: AGHT+IG1TPzGwHl4apjazHkVeFsaJK8zkxRgSZYPHdggvbCW8ifvCjuF5EuKt5xYF73xI9ZzEUOQZA==
X-Received: by 2002:a05:600c:5116:b0:418:ef65:4b11 with SMTP id 5b1f17b1804b1-41feac59e8amr154465585e9.2.1715854694962;
        Thu, 16 May 2024 03:18:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4201088fe8csm183349845e9.32.2024.05.16.03.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 03:18:14 -0700 (PDT)
Date: Thu, 16 May 2024 12:18:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Daniel Stone <daniel@fooishbar.org>
Message-ID: <ZkXdZBwPvZun33Fi@phenom.ffwll.local>
Mail-Followup-To: Daniel Stone <daniel@fooishbar.org>,
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
 <CAPj87rPywSjKLrv00N-0SrkDndPdYGCBeveO0adh4xGCp20h9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPj87rPywSjKLrv00N-0SrkDndPdYGCBeveO0adh4xGCp20h9g@mail.gmail.com>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F211C3F52A
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
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
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.47:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: MCDOGXORTLECWV2ZMBIFWR6FBR3KCUZK
X-Message-ID-Hash: MCDOGXORTLECWV2ZMBIFWR6FBR3KCUZK
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Hans de Goede <hdegoede@redhat.com>, Maxime Ripard <mripard@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MCDOGXORTLECWV2ZMBIFWR6FBR3KCUZK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, May 09, 2024 at 10:23:16AM +0100, Daniel Stone wrote:
> Hi,
> 
> On Wed, 8 May 2024 at 16:49, Daniel Vetter <daniel@ffwll.ch> wrote:
> > On Wed, May 08, 2024 at 09:38:33AM +0100, Daniel Stone wrote:
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
> 
> Mmm, back to DRI2. I can't say I'm wildly enthused about that, not
> least because a client using GPU/codec/etc for those buffers would
> have to communicate its requirements (alignment etc) forward to the
> compositor in order for the compositor to allocate for it. Obviously
> passing the constraints etc around isn't a solved problem yet, but it
> is at least contained down in clients rather than making it back and
> forth between client and compositor.

I don't think you need the compositor to allocate the buffer from the
requirements, you only need a protocol that a) allocates a buffer of a
given size from a given heap and b) has some kinda of revoke provisions so
that the compositor can claw back the memory again when it needs it.

> I'm extremely not-wild about the compositor migrating memory from CMA
> to shmem behind the client's back, and tbh I'm not sure how that would
> even work if the client has it pinned through whatever API it's
> imported into.

Other option is revoke on cma buffers that are allocated by clients, for
the case the compositor needs it.

> Anyway, like Laurent says, if we're deciding that heaps can't be used
> by generic apps (unlike DRM/V4L2/etc), then we need gralloc.

gralloc doesn't really fix this, it's just abstraction around how/where
you allocate?

Anyway the current plan is that we all pretend this issue of CMA allocated
buffers don't exist and we let clients allocate without limits. Given that
we don't even have cgroups to sort out the mess for anything else I
wouldn't worry too much ...
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
