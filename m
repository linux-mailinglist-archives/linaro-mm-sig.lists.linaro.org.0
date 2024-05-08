Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8578C0148
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 17:45:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B8E240C4C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 15:45:53 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by lists.linaro.org (Postfix) with ESMTPS id 38E213F02C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 15:45:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=EkE5YeL+;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.172) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e2da49e86bso9569751fa.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 May 2024 08:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715183140; x=1715787940; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zQT930nNUV1vsHVoX3P+3mBNNldXqcqQMqEjZfBnVWc=;
        b=EkE5YeL+bG3qaQIexlASbqhITdPjfschEEbvzfAuqeeOfXIHiHVLINgQmlRbhRnapH
         X6ZJg/c2to0+WZXdRd3W2gr3ct+Prgi4cdyJccBc2emLUuONkVKNP9WDvL2r+rLdYG12
         mrybknEQ9LPitA25B67YJkYQtHe2WlM6LPnBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715183140; x=1715787940;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zQT930nNUV1vsHVoX3P+3mBNNldXqcqQMqEjZfBnVWc=;
        b=OB/zK7nAxE96l7NeN0sg/fU3egmLzrW6RcNGcX3gsPXUGzKIfUYtLpF3TvnBJ97Jcy
         +b5aoDw2/P8mJNPSJeJd8QMbkvlP5WiFq3vK64uNjoE/tzajk7UratgvoRsNaLVbQ28W
         ucEEy9TxcfsSiMAM2a5I+0MJspLyh1WeVAZRO0DJMdN0YKSB8zH1Kwby6BEfLJlF8PGs
         5dVSpa0JXaDvy1/bjxx3Bcif8X52X0MpWdGUtiR2NKFgNMVrREmfXj6Cu22ayo5jeE86
         wEF0gn8rTlY9KqNVtJch+fyAtC/NSPNIXlloze2nJAyfKODMP/yvK7LtDTRza+pfYVZx
         NUKg==
X-Forwarded-Encrypted: i=1; AJvYcCUWBR8IAAGsdkIX1WOayW1J/YXjtZ+w0Mutu/l32rZYQistb5Gcu6vi/fp/t7R9LWD1zRhKW+HM1UxJhnZeNdCmJxoxZywRKOxVWxyuMZg=
X-Gm-Message-State: AOJu0YxsNBV/ncNBU37qWfkWPGMp+mwL4Bm+GZfilCPzkkf4Wje43eGS
	7I9iYHuJ+N9KgUEG0HJKz12kM7hQD4F0HhlNILmzEIqTclwt4kBp0fnEjGMYwA8=
X-Google-Smtp-Source: AGHT+IElEidDiVjInarsAR7F2JpjTofgrb5PfDM8hUsyo09wsdL7lGXij8WK5Ptcrp9hokZm7DJwxg==
X-Received: by 2002:ac2:5b84:0:b0:51f:6d6d:57b with SMTP id 2adb3069b0e04-5217d6346e2mr2041007e87.6.1715183139855;
        Wed, 08 May 2024 08:45:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id cq27-20020a056402221b00b005727eb1ed6asm7672318edb.68.2024.05.08.08.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 08:45:39 -0700 (PDT)
Date: Wed, 8 May 2024 17:45:37 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <ZjueITUy0K8TP1WO@phenom.ffwll.local>
Mail-Followup-To: Christian Brauner <brauner@kernel.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org,
	axboe@kernel.dk, christian.koenig@amd.com,
	dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org,
	jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, minhquangbui99@gmail.com,
	sumit.semwal@linaro.org,
	syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com,
	syzkaller-bugs@googlegroups.com
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com>
 <20240508-risse-fehlpass-895202f594fd@brauner>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240508-risse-fehlpass-895202f594fd@brauner>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 38E213F02C
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.172:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[19];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	URIBL_BLOCKED(0.00)[mail-lj1-f172.google.com:rdns,mail-lj1-f172.google.com:helo];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
Message-ID-Hash: AS2GASWJD5LM4KHQUSARSXTQSOQVVKAH
X-Message-ID-Hash: AS2GASWJD5LM4KHQUSARSXTQSOQVVKAH
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linus Torvalds <torvalds@linux-foundation.org>, Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AS2GASWJD5LM4KHQUSARSXTQSOQVVKAH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, May 08, 2024 at 12:08:57PM +0200, Christian Brauner wrote:
> On Mon, May 06, 2024 at 04:29:44PM +0200, Christian K=F6nig wrote:
> > Am 04.05.24 um 20:20 schrieb Linus Torvalds:
> > > On Sat, 4 May 2024 at 08:32, Linus Torvalds
> > > <torvalds@linux-foundation.org> wrote:
> > > > Lookie here, the fundamental issue is that epoll can call '->poll()'
> > > > on a file descriptor that is being closed concurrently.
> > > Thinking some more about this, and replying to myself...
> > >=20
> > > Actually, I wonder if we could *really* fix this by simply moving the
> > > eventpoll_release() to where it really belongs.
> > >=20
> > > If we did it in file_close_fd_locked(),  it would actually make a
> > > *lot* more sense. Particularly since eventpoll actually uses this:
> > >=20
> > >      struct epoll_filefd {
> > >          struct file *file;
> > >          int fd;
> > >      } __packed;
> > >=20
> > > ie it doesn't just use the 'struct file *', it uses the 'fd' itself
> > > (for ep_find()).
> > >=20
> > > (Strictly speaking, it should also have a pointer to the 'struct
> > > files_struct' to make the 'int fd' be meaningful).
> >=20
> > While I completely agree on this I unfortunately have to ruin the idea.
> >=20
> > Before we had KCMP some people relied on the strange behavior of eventp=
oll
> > to compare struct files when the fd is the same.
> >=20
> > I just recently suggested that solution to somebody at AMD as a workaro=
und
> > when KCMP is disabled because of security hardening and I'm pretty sure=
 I've
> > seen it somewhere else as well.
> >=20
> > So when we change that it would break (undocumented?) UAPI behavior.
>=20
> I've worked on that a bit yesterday and I learned new things about epoll
> and ran into some limitations.
>=20
> Like, what happens if process P1 has a file descriptor registered in an
> epoll instance and now P1 forks and creates P2. So every file that P1
> maintains gets copied into a new file descriptor table for P2. And the
> same file descriptors refer to the same files for both P1 and P2.

So this is pretty similar to any other struct file that has resources
hanging off the struct file instead of the underlying inode. Like drm
chardev files, where all the buffers, gpu contexts and everything else
hangs off the file and there's no other way to get at them (except when
exporting to some explicitly meant-for-sharing file like dma-buf).

If you fork() that it's utter hilarity, which is why absolutely everyone
should set O_CLOEXEC on these. Or EPOLL_CLOEXEC for epoll_create.

For the uapi issue you describe below my take would be that we should just
try, and hope that everyone's been dutifully using O_CLOEXEC. But maybe
I'm biased from the gpu world, where we've been hammering it in that
"O_CLOEXEC or bust" mantra since well over a decade. Really the only valid
use-case is something like systemd handing open files to a service, where
it drops priviledges even well before the exec() call. But we can't switch
around the defaults for any of these special open files with anything more
than just a current seek position as state, since that breaks uapi.
-Sima

>=20
> So there's two interesting cases here:
>=20
> (1) P2 explicitly removes the file descriptor from the epoll instance
>     via epoll_ctl(EPOLL_CTL_DEL). That removal affects both P1 and P2
>     since the <fd, file> pair is only registered once and it isn't
>     marked whether it belongs to P1 and P2 fdtable.
>=20
>     So effectively fork()ing with epoll creates a weird shared state
>     where removal of file descriptors that were registered before the
>     fork() affects both child and parent.
>=20
>     I found that surprising even though I've worked with epoll quite
>     extensively in low-level userspace.
>=20
> (2) P2 doesn't close it's file descriptors. It just exits. Since removal
>     of the file descriptor from the epoll instance isn't done during
>     close() but during last fput() P1's epoll state remains unaffected
>     by P2's sloppy exit because P1 still holds references to all files
>     in its fdtable.
>=20
>     (Sidenote, if one ends up adding every more duped-fds into epoll
>     instance that one doesn't explicitly close and all of them refer to
>     the same file wouldn't one just be allocating new epitems that
>     are kept around for a really long time?)
>=20
> So if the removal of the fd would now be done during close() or during
> exit_files() when we call close_files() and since there's currently no
> way of differentiating whether P1 or P2 own that fd it would mean that
> (2) collapses into (1) and we'd always alter (1)'s epoll state. That
> would be a UAPI break.
>=20
> So say we record the fdtable to get ownership of that file descriptor so
> P2 doesn't close anything in (2) that really belongs to P1 to fix that
> problem.
>=20
> But afaict, that would break another possible use-case. Namely, where P1
> creates an epoll instance and registeres fds and then fork()s to create
> P2. Now P1 can exit and P2 takes over the epoll loop of P1. This
> wouldn't work anymore because P1 would deregister all fds it owns in
> that epoll instance during exit. I didn't see an immediate nice way of
> fixing that issue.
>=20
> But note that taking over an epoll loop from the parent doesn't work
> reliably for some file descriptors. Consider man signalfd(2):
>=20
>    epoll(7) semantics
>        If a process adds (via epoll_ctl(2)) a signalfd file descriptor to=
 an epoll(7) instance,
>        then epoll_wait(2) returns events only for signals sent to that pr=
ocess.  In particular,
>        if  the process then uses fork(2) to create a child process, then =
the child will be able
>        to read(2) signals that  are  sent  to  it  using  the  signalfd  =
file  descriptor,  but
>        epoll_wait(2)  will  not  indicate  that the signalfd file descrip=
tor is ready.  In this
>        scenario, a possible workaround is that after the fork(2), the chi=
ld process  can  close
>        the  signalfd  file descriptor that it inherited from the parent p=
rocess and then create
>        another signalfd file descriptor and add it to the epoll instance.=
   Alternatively,  the
>        parent and the child could delay creating their (separate) signalf=
d file descriptors and
>        adding them to the epoll instance until after the call to fork(2).
>=20
> So effectively P1 opens a signalfd and registers it in an epoll
> instance. Then it fork()s and creates P2. Now both P1 and P2 call
> epoll_wait(). Since signalfds are always relative to the caller and P1
> did call signalfd_poll() to register the callback only P1 can get
> events. So P2 can't take over signalfds in that epoll loop.
>=20
> Honestly, the inheritance semantics of epoll across fork() seem pretty
> wonky and it would've been better if an epoll fd inherited across
> would've returned ESTALE or EINVAL or something. And if that inheritance
> of epoll instances would really be a big use-case there'd be some
> explicit way to enable this.

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
