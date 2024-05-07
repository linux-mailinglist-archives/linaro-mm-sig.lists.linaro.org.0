Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A708BEB0E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 20:04:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CCC04416E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 18:04:36 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by lists.linaro.org (Postfix) with ESMTPS id B78F43EC0D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 18:04:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=TkaXkByF;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.167.169) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3c74a49fc4cso125685b6e.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 11:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715105065; x=1715709865; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YmWheXdPpQuPLWl1RiMEbt0Eg1z181/dlD8IMNrkg1o=;
        b=TkaXkByFzInoSeICsZxirgwLOHRTNR+IolPBIfjY3U96Jtf+0QES82s2JhaMS8eyvJ
         qHTpQDtfJ7nbYbvg9Y5smAmfNKpAWaHqOckUYgsmLQIh6+DZhQLhAER8/Qz/8eki8dip
         d99+a8GSRLQuHXk1AgeBvyV+ULnJxMmMcjygI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715105065; x=1715709865;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YmWheXdPpQuPLWl1RiMEbt0Eg1z181/dlD8IMNrkg1o=;
        b=cEI/P5i9RoqgNSrpky7Ic4h0jzsXT7sOVfWxcKAHjrWntNWPGq5C6kFwIW+G407lY0
         KbE/4spxJExclsQknRkUSJ5NYtK7rSSgIMe2fkIiEQfXLabxqZeIkuT2b4ipe+vxb8xF
         vh1V+/WUj7lDsZllrYMBKSA6a81mpejjEECxXSsnrcCOB8VQ7MbcbWqmLsRneBc3+9tw
         SYM4w8uPxbFQAJwbUcN21D/o9zvQObVd1r+cQjmMpOoDZw+rwZL2lOZg371vcCmTNP97
         95Sko5zNL+kn1G908qGm4c+ic5hIeh5+1RgJi+eyz0ai1ON66bbyKIvJTSzOlm4WjAsB
         XLww==
X-Forwarded-Encrypted: i=1; AJvYcCV0GH5C4y15gfajIm8LRO6RZ8Vk+RCqbMxns25IT19ZKo2YOTZ2DENcUZiBOyEkbXXFMUm55FxJ+eL4QpCnS6jmKgSqqHiBF2mBG8k3WL8=
X-Gm-Message-State: AOJu0YwXrsTeaVh6Fc2ytritwWHxGSv4bN0aJ6Ky5m6wB4bEePRYy6Nh
	a/NatvjsL3SI7HUPxnOX1VFfoHLglIujWKr2YnbOal7Ck2b6TzSrESEzSAzzRzcRqyRvAbc/NP1
	QkhYmXxjOxEZDMMo39w0UsSKmwbW++BzycaSGmQ==
X-Google-Smtp-Source: AGHT+IHmrwrHAXCxOJC+DssE4b3IrYE7fedfWDlb1+phM010DsU5X6/lJatnzj106ycVmmtXnenEsbtAWj3Yy2ck3IU=
X-Received: by 2002:a05:6870:239a:b0:22e:dfbc:4aae with SMTP id
 586e51a60fabf-240980ba70cmr376610fac.2.1715105064951; Tue, 07 May 2024
 11:04:24 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com> <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
 <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
In-Reply-To: <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 7 May 2024 20:04:13 +0200
Message-ID: <CAKMK7uGzhAHHkWj0N33NB3OXMFtNHv7=h=P-bdtYkw=Ja9kwHw@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, Simon Ser <contact@emersion.fr>,
	Pekka Paalanen <pekka.paalanen@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B78F43EC0D
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[daniel@ffwll.ch,daniel.vetter@ffwll.ch];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.169:from];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_NEQ_ENVFROM(0.00)[daniel@ffwll.ch,daniel.vetter@ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
Message-ID-Hash: GQ357HUXFRRAGDHJLCLNJWBF5T52ZVC7
X-Message-ID-Hash: GQ357HUXFRRAGDHJLCLNJWBF5T52ZVC7
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian Brauner <brauner@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GQ357HUXFRRAGDHJLCLNJWBF5T52ZVC7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 07, 2024 at 09:46:31AM -0700, Linus Torvalds wrote:
> On Tue, 7 May 2024 at 04:03, Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > It's really annoying that on some distros/builds we don't have that, and
> > for gpu driver stack reasons we _really_ need to know whether a fd is the
> > same as another, due to some messy uniqueness requirements on buffer
> > objects various drivers have.
>
> It's sad that such a simple thing would require two other horrid
> models (EPOLL or KCMP).
>
> There'[s a reason that KCMP is a config option - *some* of that is
> horrible code - but the "compare file descriptors for equality" is not
> that reason.
>
> Note that KCMP really is a broken mess. It's also a potential security
> hole, even for the simple things, because of how it ends up comparing
> kernel pointers (ie it doesn't just say "same file descriptor", it
> gives an ordering of them, so you can use KCMP to sort things in
> kernel space).
>
> And yes, it orders them after obfuscating the pointer, but it's still
> not something I would consider sane as a baseline interface. It was
> designed for checkpoint-restore, it's the wrong thing to use for some
> "are these file descriptors the same".
>
> The same argument goes for using EPOLL for that. Disgusting hack.
>
> Just what are the requirements for the GPU stack? Is one of the file
> descriptors "trusted", IOW, you know what kind it is?
>
> Because dammit, it's *so* easy to do. You could just add a core DRM
> ioctl for it. Literally just
>
>         struct fd f1 = fdget(fd1);
>         struct fd f2 = fdget(fd2);
>         int same;
>
>         same = f1.file && f1.file == f2.file;
>         fdput(fd1);
>         fdput(fd2);
>         return same;
>
> where the only question is if you also woudl want to deal with O_PATH
> fd's, in which case the "fdget()" would be "fdget_raw()".
>
> Honestly, adding some DRM ioctl for this sounds hacky, but it sounds
> less hacky than relying on EPOLL or KCMP.

Well, in slightly more code (because it's part of the "import this
dma-buf/dma-fence/whatever fd into a driver object" ioctl) this is what we
do.

The issue is that there's generic userspace (like compositors) that sees
these things fly by and would also like to know whether the other side
they receive them from is doing nasty stuff/buggy/evil. And they don't
have access to the device drm fd (since those are a handful of layers away
behind the opengl/vulkan userspace drivers even if the compositor could get
at them, and in some cases not even that).

So if we do this in drm we'd essentially have to create a special
drm_compare_files chardev, put the ioctl there and then tell everyone to
make that thing world-accessible.

Which is just too close to a real syscall that it's offensive, and hey
kcmp does what we want already (but unfortunately also way more). So we
rejected adding that to drm. But we did think about it.

> I'd be perfectly ok with adding a generic "FISAME" VFS level ioctl
> too, if this is possibly a more common thing. and not just DRM wants
> it.
>
> Would something like that work for you?

Yes.

Adding Simon and Pekka as two of the usual suspects for this kind of
stuff. Also example code (the int return value is just so that callers know
when kcmp isn't available, they all only care about equality):

https://gitlab.freedesktop.org/mesa/mesa/-/blob/main/src/util/os_file.c#L239
-Sima

--
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
