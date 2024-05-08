Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F3B8BF888
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 10:32:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0795E43FCA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 08:32:24 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id EA4853F3A6
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 08:32:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=PZrBAm7m;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.52) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a59a1c4da28so130826466b.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 01:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715157131; x=1715761931; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k+L7cVJ0RXkqS3cuApbLADzGi4qIsO/ernkhsuK+4mg=;
        b=PZrBAm7mAb2eAUEQVSjXgA5tz4aCjmjkux/VZ1NyrI0gz1HEuthuFCFl3Z15cD5ka+
         NTzI0NG1ih9kGMpkyRzTojmnGPH1KPtR5j2ojp5E3yqZbw0LbPA07L/sph67AE6v6JW3
         Ex+ekjW6Vw1phskyGvBaK8dMv5HNIBfGR8Xg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715157131; x=1715761931;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k+L7cVJ0RXkqS3cuApbLADzGi4qIsO/ernkhsuK+4mg=;
        b=Ezz4JWybGYPGAZfuhRc9Ss8B1kuQkL9lMVRlSucGjJw37fgGY/ubcdbcMJGkyGim/a
         kOlUhlbX0L0Aw+9wqOU9F52L5KvYhttJlJb7zHBQ5Y2uToh5+2MRVWPxTUXJrXkwsXih
         0oou8sU/WVZfl2JCO77W1Sm+T2kkwe7dwKZl8kXOahnDkM8hFNkQ+1cDmCMSLF8Rn1Ba
         Pw+hyo+AtZuJvNz3/a8oVAAy12/45O0Fr2roizEvlB3twYlJ9N2qSwhUvd/ZbMFwQQEt
         Zjn28Lmako082J3RxA+OWjjJar15qYkdBrwhnaCqKomHAulsWFCjetbE4+DdrFDeXvK+
         ONxA==
X-Forwarded-Encrypted: i=1; AJvYcCVfISSO+h89TPA8dl0lrlfDGNXMiefa+WEq6wdwooyDhG3D+kJieG+p40cCKJyl/xWF1jmXNe212bdFrTN3hR9xrgr/zoJqFBQPdMwLcY8=
X-Gm-Message-State: AOJu0Yw5CqJK3lIXrPwObYh/catfOIxziVfAkhR1sLynN+3EqN5S6LLS
	pxaFdbV9xLRfYQWGQg8CpwaOI8EnLmzhT5eQM2uvvW0JoSRFKo9/bGPnuMJrNp4=
X-Google-Smtp-Source: AGHT+IHr0DJSEJ8IbuC5woWDxr1DEtRthw0/l9kV1uMkZSNSlIS/DcIHRg9/N+jRs+eVsPBC4/zXZw==
X-Received: by 2002:a17:906:fd17:b0:a59:7f38:8dfc with SMTP id a640c23a62f3a-a59fb9ebd21mr102078066b.5.1715157130873;
        Wed, 08 May 2024 01:32:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id uz14-20020a170907118e00b00a599adfd49dsm6073415ejb.64.2024.05.08.01.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 01:32:10 -0700 (PDT)
Date: Wed, 8 May 2024 10:32:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Zjs4iEw1Lx1YcR8M@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Simon Ser <contact@emersion.fr>,
	Pekka Paalanen <pekka.paalanen@collabora.com>,
	Christian Brauner <brauner@kernel.org>,
	Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org,
	axboe@kernel.dk, christian.koenig@amd.com,
	dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org,
	jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, minhquangbui99@gmail.com,
	sumit.semwal@linaro.org,
	syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com,
	syzkaller-bugs@googlegroups.com
References: <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com>
 <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
 <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
 <CAKMK7uGzhAHHkWj0N33NB3OXMFtNHv7=h=P-bdtYkw=Ja9kwHw@mail.gmail.com>
 <CAHk-=whFyOn4vp7+++MTOd1Y3wgVFxRoVdSuPmN1_b6q_Jjkxg@mail.gmail.com>
 <040b32b8-c4df-4121-bb0d-f0c6ee9e123d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <040b32b8-c4df-4121-bb0d-f0c6ee9e123d@gmail.com>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EA4853F3A6
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,ffwll.ch,emersion.fr,collabora.com,kernel.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
Message-ID-Hash: 2XVRGTK5FGPFDAQ6FE3XBTAD27CMEQQX
X-Message-ID-Hash: 2XVRGTK5FGPFDAQ6FE3XBTAD27CMEQQX
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linus Torvalds <torvalds@linux-foundation.org>, Daniel Vetter <daniel@ffwll.ch>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <pekka.paalanen@collabora.com>, Christian Brauner <brauner@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2XVRGTK5FGPFDAQ6FE3XBTAD27CMEQQX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, May 08, 2024 at 07:55:08AM +0200, Christian K=F6nig wrote:
> Am 07.05.24 um 21:07 schrieb Linus Torvalds:
> > On Tue, 7 May 2024 at 11:04, Daniel Vetter <daniel@ffwll.ch> wrote:
> > > On Tue, May 07, 2024 at 09:46:31AM -0700, Linus Torvalds wrote:
> > >=20
> > > > I'd be perfectly ok with adding a generic "FISAME" VFS level ioctl
> > > > too, if this is possibly a more common thing. and not just DRM wants
> > > > it.
> > > >=20
> > > > Would something like that work for you?
> > > Yes.
> > >=20
> > > Adding Simon and Pekka as two of the usual suspects for this kind of
> > > stuff. Also example code (the int return value is just so that caller=
s know
> > > when kcmp isn't available, they all only care about equality):
> > >=20
> > > https://gitlab.freedesktop.org/mesa/mesa/-/blob/main/src/util/os_file=
.c#L239
> > That example thing shows that we shouldn't make it a FISAME ioctl - we
> > should make it a fcntl() instead, and it would just be a companion to
> > F_DUPFD.
> >=20
> > Doesn't that strike everybody as a *much* cleaner interface? I think
> > F_ISDUP would work very naturally indeed with F_DUPFD.
> >=20
> > Yes? No?
>=20
> Sounds absolutely sane to me.

Yeah fcntl(fd1, F_ISDUP, fd2); sounds extremely reasonable to me too.

Aside, after some irc discussions I paged a few more of the relevant info
back in, and at least for dma-buf we kinda sorted this out by going away
from the singleton inode in this patch: ed63bb1d1f84 ("dma-buf: give each
buffer a full-fledged inode")

It's uapi now so we can't ever undo that, but with hindsight just the
F_ISDUP is really what we wanted. Because we have no need for that inode
aside from the unique inode number that's only used to compare dma-buf fd
for sameness, e.g.

https://gitlab.freedesktop.org/wlroots/wlroots/-/blob/master/render/vulkan/=
texture.c#L490

The one question I have is whether this could lead to some exploit tools,
because at least the android conformance test suite verifies that kcmp
isn't available to apps (which is where we need it, because even with all
the binder-based isolation gpu userspace still all run in the application
process due to performance reasons, any ipc at all is just too much).

Otoh if we just add this to drm fd as an ioctl somewhere, then it will
also be available to every android app because they all do need the gpu
for rendering. So going with the full generic fcntl is probably best.
-Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
