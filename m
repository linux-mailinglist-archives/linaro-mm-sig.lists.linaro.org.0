Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDEE8BE07A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 12:58:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C5BD40C4C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 10:58:29 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 61F913EC0D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 10:58:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=cd3dPw5N;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.50) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-41ecf80482bso2688575e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 May 2024 03:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715079497; x=1715684297; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ViRc7GAJZffBJpcUFJE5upGd7xOjgKlPDNKALV639RY=;
        b=cd3dPw5NRjw40gTkpHaEoartA+US9ooZEg8nPCZ0ebvZrGKYmDr3kyiP3eCxOaerdQ
         nmFFtBsWzQAvAXS2hje9Muv6qArHXoKrHo4Xk86dmtoJNgjcKwKSqrBVmiZwwc4G8RI8
         6BAUS0ctDmFOwfzeO+3xUUpJBysx0+/Hi9H/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715079497; x=1715684297;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ViRc7GAJZffBJpcUFJE5upGd7xOjgKlPDNKALV639RY=;
        b=qyI2ItmFAGxCkK3LufoixHNOlOXUVAA3zi5IjAI1urQTzg6Tn2PxHh6tWh+HK/GvkM
         eoN/ZaYBeclgTKSlQMrLDfVYrLWMM0FQu+tXTu3R8On0k/+ZZUNqHkKYYYOvVpRG1wg0
         IaEsIVOT2nWkJLt+LxlYXER+t8Ms0PXnbkpjFQkZSap0cLu42gb81owmhd80D+nUAvXR
         Rz/daSfIlapr01uTagrlGPURB0oa/T/tpoi8SSrisIEIRG+qwYCzOsACe32U+l5tWhV5
         0t/T4cSDKNm3EqlN0FyjPjA5H0Z9kHEppoxq59f+wxkgPc6WD6NHX5MuD2cjsLy0B3gA
         ICUA==
X-Forwarded-Encrypted: i=1; AJvYcCVrckxPHj4fyaZKiheF9AIVMVskMX3dH+FZCL0pFRowCYo9m7P4LJFThfMOzREVT0B+FYphCKu/M+YI6pa3h5rupb9NrNifU8vFVxjTk88=
X-Gm-Message-State: AOJu0YwRc6NIsCj/EBCU03tnbJQLf7OBjcNbL5lapndMJmEzNjujWnfc
	gyNnoKQ/2DGtAVnT4v9VMw+GluftinyjH2JnpChrPwp9tJw/1wy3cON5Hvsysf8=
X-Google-Smtp-Source: AGHT+IGmmpohUZWli41FI/bjCKJyuoxp80jtwfSXh1Ej1JbzBOZ7sdqvyBNDvL8g4N9bnXZUMYG4Hg==
X-Received: by 2002:a05:600c:3b21:b0:419:f0a8:9801 with SMTP id m33-20020a05600c3b2100b00419f0a89801mr10223677wms.0.1715079497175;
        Tue, 07 May 2024 03:58:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id j15-20020a05600c190f00b0041bf512f85bsm22775381wmq.14.2024.05.07.03.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 03:58:16 -0700 (PDT)
Date: Tue, 7 May 2024 12:58:14 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <ZjoJRs0Svrb9ELDu@phenom.ffwll.local>
Mail-Followup-To: Christian Brauner <brauner@kernel.org>,
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
References: <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com>
 <CAHk-=whrSSNYVzTHNFDNGag_xcKuv=RaQUX8+n29kkic39DRuQ@mail.gmail.com>
 <20240505194603.GH2118490@ZenIV>
 <CAHk-=wipanX2KYbWvO5=5Zv9O3r8kA-tqBid0g3mLTCt_wt8OA@mail.gmail.com>
 <20240505203052.GJ2118490@ZenIV>
 <CAHk-=whFg8-WyMbVUGW5c0baurGzqmRtzFLoU-gxtRXq2nVZ+w@mail.gmail.com>
 <ZjjRWybmAmClMMI9@phenom.ffwll.local>
 <20240506-zweisamkeit-zinsniveau-615a2e6d7c67@brauner>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240506-zweisamkeit-zinsniveau-615a2e6d7c67@brauner>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 61F913EC0D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[ffwll.ch,linux-foundation.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	URIBL_BLOCKED(0.00)[mail-wm1-f50.google.com:rdns,mail-wm1-f50.google.com:helo,ffwll.ch:url,ffwll.ch:dkim];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DNSWL_BLOCKED(0.00)[209.85.128.50:from];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: HHXTBTPW3EZXXIONHK7PKSGOYAXR3IJL
X-Message-ID-Hash: HHXTBTPW3EZXXIONHK7PKSGOYAXR3IJL
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Linus Torvalds <torvalds@linux-foundation.org>, Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HHXTBTPW3EZXXIONHK7PKSGOYAXR3IJL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 06, 2024 at 04:46:54PM +0200, Christian Brauner wrote:
> On Mon, May 06, 2024 at 02:47:23PM +0200, Daniel Vetter wrote:
> > On Sun, May 05, 2024 at 01:53:48PM -0700, Linus Torvalds wrote:
> > > On Sun, 5 May 2024 at 13:30, Al Viro <viro@zeniv.linux.org.uk> wrote:
> > > >
> > > > 0.      special-cased ->f_count rule for ->poll() is a wart and it's
> > > > better to get rid of it.
> > > >
> > > > 1.      fs/eventpoll.c is a steaming pile of shit and I'd be glad to see
> > > > git rm taken to it.  Short of that, by all means, let's grab reference
> > > > in there around the call of vfs_poll() (see (0)).
> > > 
> > > Agreed on 0/1.
> > > 
> > > > 2.      having ->poll() instances grab extra references to file passed
> > > > to them is not something that should be encouraged; there's a plenty
> > > > of potential problems, and "caller has it pinned, so we are fine with
> > > > grabbing extra refs" is nowhere near enough to eliminate those.
> > > 
> > > So it's not clear why you hate it so much, since those extra
> > > references are totally normal in all the other VFS paths.
> > > 
> > > I mean, they are perhaps not the *common* case, but we have a lot of
> > > random get_file() calls sprinkled around in various places when you
> > > end up passing a file descriptor off to some asynchronous operation
> > > thing.
> > > 
> > > Yeah, I think most of them tend to be special operations (eg the tty
> > > TIOCCONS ioctl to redirect the console), but it's not like vfs_ioctl()
> > > is *that* different from vfs_poll. Different operation, not somehow
> > > "one is more special than the other".
> > > 
> > > cachefiles and backing-file does it for regular IO, and drop it at IO
> > > completion - not that different from what dma-buf does. It's in
> > > ->read_iter() rather than ->poll(), but again: different operations,
> > > but not "one of them is somehow fundamentally different".
> > > 
> > > > 3.      dma-buf uses of get_file() are probably safe (epoll shite aside),
> > > > but they do look fishy.  That has nothing to do with epoll.
> > > 
> > > Now, what dma-buf basically seems to do is to avoid ref-counting its
> > > own fundamental data structure, and replaces that by refcounting the
> > > 'struct file' that *points* to it instead.
> > > 
> > > And it is a bit odd, but it actually makes some amount of sense,
> > > because then what it passes around is that file pointer (and it allows
> > > passing it around from user space *as* that file).
> > > 
> > > And honestly, if you look at why it then needs to add its refcount to
> > > it all, it actually makes sense.  dma-bufs have this notion of
> > > "fences" that are basically completion points for the asynchronous
> > > DMA. Doing a "poll()" operation will add a note to the fence to get
> > > that wakeup when it's done.
> > > 
> > > And yes, logically it takes a ref to the "struct dma_buf", but because
> > > of how the lifetime of the dma_buf is associated with the lifetime of
> > > the 'struct file', that then turns into taking a ref on the file.
> > > 
> > > Unusual? Yes. But not illogical. Not obviously broken. Tying the
> > > lifetime of the dma_buf to the lifetime of a file that is passed along
> > > makes _sense_ for that use.
> > > 
> > > I'm sure dma-bufs could add another level of refcounting on the
> > > 'struct dma_buf' itself, and not make it be 1:1 with the file, but
> > > it's not clear to me what the advantage would really be, or why it
> > > would be wrong to re-use a refcount that is already there.
> > 
> > So there is generally another refcount, because dma_buf is just the
> > cross-driver interface to some kind of real underlying buffer object from
> > the various graphics related subsystems we have.
> > 
> > And since it's a pure file based api thing that ceases to serve any
> > function once the fd/file is gone we tied all the dma_buf refcounting to
> > the refcount struct file already maintains. But the underlying buffer
> > object can easily outlive the dma_buf, and over the lifetime of an
> > underlying buffer object you might actually end up creating different
> > dma_buf api wrappers for it (but at least in drm we guarantee there's at
> > most one, hence why vmwgfx does the atomic_inc_unless_zero trick, which I
> > don't particularly like and isn't really needed).
> > 
> > But we could add another refcount, it just means we have 3 of those then
> > when only really 2 are needed.
> 
> Fwiw, the TTM thing described upthread and in the other thread really
> tries hard to work around the dma_buf == file lifetime choice by hooking
> into the dma-buf specific release function so it can access the dmabuf
> and then the file. All that seems like a pretty error prone thing to me.
> So a separate refcount for dma_buf wouldn't be the worst as that would
> allow that TTM thing to benefit and remove that nasty hacking into your
> generic dma_buf ops. But maybe I'm the only one who sees it that way and
> I'm certainly not familiar enough with dma-buf.

So the tricky part is the uniqueness requirement drm has for buffer
objects (and hence dma_buf wrappers), which together with the refcounting
makes dma_buf quite tricky:

- dma_buf needs to hold some reference onto the underlying object, or it
  wont work

- but you're not allowed to just create a new dma_buf every time someone
  exports an underlying object to a dma_buf, because that would break the
  uniqueness requirement. Which means the underlying object must also hold
  some kind of reference to its dma_buf, if it exists. So that on buffer
  export it can just increment the refcount for that and return it,
  instead of creating a new one.

Which would be a reference loop that never gets freed, so you need one of
two tricks:

- Either a weak reference, i.e. just a pointer plus
  atomic_inc_unless_zero trickery like ttm does. Splitting that refcount
  into more refcounts doesn't fundamentally solve the problem, it just
  adds even more refcounts.

- Or you do what all other drm drivers do in drm_prime.c do and careful
  clean up the dma_buf re-export cache when the userspace references (but
  not all kernel internal ones) disappear, to unbreak that reference loop.
  This needs to be done with extreme care and took a lot of screaming to
  get right, because if you have a race you might end up breaking the
  uniqueness requirement and have two dma_buf floating around.

So neither of these solutions really are simple, but I agree with you that
the atomic_inc_unless_zero trickery is less simple. It's definitely not
cool that it's done by digging around in struct file internals.
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
