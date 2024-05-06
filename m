Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8D68BCE57
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 14:47:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76DB044130
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 12:47:39 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id 3D15140074
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 May 2024 12:47:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=USQzl+vt;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.46) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-346407b8c9aso628108f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 May 2024 05:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1714999646; x=1715604446; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FzcPHN6WlIJ1C164IWBqCbC21dWtLB5dXSLGK/0dvq0=;
        b=USQzl+vt4K3vWhLXf+NzztlaleUh/LGKjsPjSDZJhq6Y0fU/TGiukbuoATkSgZdoW3
         Zo2zGWKjMAI09HaUXx/JMZW23a2aq/nlfBWkixNDn/ePlbYmDyrxwTQtnBorSKac3WmJ
         IjjTck13EiRrfkrmSxKbxbHycctQpWOUaYYxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714999646; x=1715604446;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FzcPHN6WlIJ1C164IWBqCbC21dWtLB5dXSLGK/0dvq0=;
        b=PkijQk/sGKQ9YQsfZ8KfW4HiI6bQlzat9jflRP4awhVdwV+XM/WRXefQdskGqFRsQQ
         kj99eXP0MrthJDhYz02g26avmqHcERyEnHJ7eynaiGdCQrPie3Kn8V6VNmmSPE1hrs02
         mgCjh92rEgGgT0xeyLccq3tSFjPUaK7BjfLuQu4PEWtoLBM62sbzla7L7dnJDPhV85KZ
         7EcYx+xf5v+jy4XBAEuqnuvLpKTHEuVdMuNyrkz2S786OFAD97Whj7QJt9O5hDDIEa0y
         7jE1kxuWjlPsuYMRJT5x9E3Tk3nap/KbOUUn4A8Drzc0jSkGnsiEI2R3nzEJ+cO/62Zs
         acHg==
X-Forwarded-Encrypted: i=1; AJvYcCVTxMwl1z84eST50UxUcWzxri1LOyLgxcdnveXAiQw2Vyp1+HPx3vZ5qyXcYQnIBT0QWK5ivbN5OHwG3VJvyWbomFQhsWcc4JpLAmDVkLc=
X-Gm-Message-State: AOJu0Yy83S83MSYbRGQY+Ul5hjCV9GEV8HG0o4LxUVHDNo4dKM3y43Kd
	7AYO/d5Nx7A6j6daFmK0yVEqBvHhj8VTcE18hzemzVX8xYBUkIAYW745ggCfXTw=
X-Google-Smtp-Source: AGHT+IEcjHlHcMPoNa6JKDX9W5QYo0xQvj2/BGYXVfuM3DvK3Nqva0gT+wcQ0vVg5ycmh5nDVF4Cvw==
X-Received: by 2002:a05:600c:5118:b0:418:9941:ca28 with SMTP id o24-20020a05600c511800b004189941ca28mr7020552wms.2.1714999646201;
        Mon, 06 May 2024 05:47:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id p12-20020a05600c1d8c00b0041bcb898984sm16038937wms.31.2024.05.06.05.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 05:47:25 -0700 (PDT)
Date: Mon, 6 May 2024 14:47:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ZjjRWybmAmClMMI9@phenom.ffwll.local>
Mail-Followup-To: Linus Torvalds <torvalds@linux-foundation.org>,
	Al Viro <viro@zeniv.linux.org.uk>,
	Christian Brauner <brauner@kernel.org>, keescook@chromium.org,
	axboe@kernel.dk, christian.koenig@amd.com,
	dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org,
	jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, minhquangbui99@gmail.com,
	sumit.semwal@linaro.org,
	syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com,
	syzkaller-bugs@googlegroups.com
References: <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com>
 <CAHk-=whrSSNYVzTHNFDNGag_xcKuv=RaQUX8+n29kkic39DRuQ@mail.gmail.com>
 <20240505194603.GH2118490@ZenIV>
 <CAHk-=wipanX2KYbWvO5=5Zv9O3r8kA-tqBid0g3mLTCt_wt8OA@mail.gmail.com>
 <20240505203052.GJ2118490@ZenIV>
 <CAHk-=whFg8-WyMbVUGW5c0baurGzqmRtzFLoU-gxtRXq2nVZ+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whFg8-WyMbVUGW5c0baurGzqmRtzFLoU-gxtRXq2nVZ+w@mail.gmail.com>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3D15140074
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:dkim,linux.org.uk:email,mail-wr1-f46.google.com:rdns,mail-wr1-f46.google.com:helo];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,kernel.org,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.46:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: R6E3UKNYIJZBCN5ILJLSXDJK6L4EYL76
X-Message-ID-Hash: R6E3UKNYIJZBCN5ILJLSXDJK6L4EYL76
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Al Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R6E3UKNYIJZBCN5ILJLSXDJK6L4EYL76/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, May 05, 2024 at 01:53:48PM -0700, Linus Torvalds wrote:
> On Sun, 5 May 2024 at 13:30, Al Viro <viro@zeniv.linux.org.uk> wrote:
> >
> > 0.      special-cased ->f_count rule for ->poll() is a wart and it's
> > better to get rid of it.
> >
> > 1.      fs/eventpoll.c is a steaming pile of shit and I'd be glad to see
> > git rm taken to it.  Short of that, by all means, let's grab reference
> > in there around the call of vfs_poll() (see (0)).
> 
> Agreed on 0/1.
> 
> > 2.      having ->poll() instances grab extra references to file passed
> > to them is not something that should be encouraged; there's a plenty
> > of potential problems, and "caller has it pinned, so we are fine with
> > grabbing extra refs" is nowhere near enough to eliminate those.
> 
> So it's not clear why you hate it so much, since those extra
> references are totally normal in all the other VFS paths.
> 
> I mean, they are perhaps not the *common* case, but we have a lot of
> random get_file() calls sprinkled around in various places when you
> end up passing a file descriptor off to some asynchronous operation
> thing.
> 
> Yeah, I think most of them tend to be special operations (eg the tty
> TIOCCONS ioctl to redirect the console), but it's not like vfs_ioctl()
> is *that* different from vfs_poll. Different operation, not somehow
> "one is more special than the other".
> 
> cachefiles and backing-file does it for regular IO, and drop it at IO
> completion - not that different from what dma-buf does. It's in
> ->read_iter() rather than ->poll(), but again: different operations,
> but not "one of them is somehow fundamentally different".
> 
> > 3.      dma-buf uses of get_file() are probably safe (epoll shite aside),
> > but they do look fishy.  That has nothing to do with epoll.
> 
> Now, what dma-buf basically seems to do is to avoid ref-counting its
> own fundamental data structure, and replaces that by refcounting the
> 'struct file' that *points* to it instead.
> 
> And it is a bit odd, but it actually makes some amount of sense,
> because then what it passes around is that file pointer (and it allows
> passing it around from user space *as* that file).
> 
> And honestly, if you look at why it then needs to add its refcount to
> it all, it actually makes sense.  dma-bufs have this notion of
> "fences" that are basically completion points for the asynchronous
> DMA. Doing a "poll()" operation will add a note to the fence to get
> that wakeup when it's done.
> 
> And yes, logically it takes a ref to the "struct dma_buf", but because
> of how the lifetime of the dma_buf is associated with the lifetime of
> the 'struct file', that then turns into taking a ref on the file.
> 
> Unusual? Yes. But not illogical. Not obviously broken. Tying the
> lifetime of the dma_buf to the lifetime of a file that is passed along
> makes _sense_ for that use.
> 
> I'm sure dma-bufs could add another level of refcounting on the
> 'struct dma_buf' itself, and not make it be 1:1 with the file, but
> it's not clear to me what the advantage would really be, or why it
> would be wrong to re-use a refcount that is already there.

So there is generally another refcount, because dma_buf is just the
cross-driver interface to some kind of real underlying buffer object from
the various graphics related subsystems we have.

And since it's a pure file based api thing that ceases to serve any
function once the fd/file is gone we tied all the dma_buf refcounting to
the refcount struct file already maintains. But the underlying buffer
object can easily outlive the dma_buf, and over the lifetime of an
underlying buffer object you might actually end up creating different
dma_buf api wrappers for it (but at least in drm we guarantee there's at
most one, hence why vmwgfx does the atomic_inc_unless_zero trick, which I
don't particularly like and isn't really needed).

But we could add another refcount, it just means we have 3 of those then
when only really 2 are needed.

Also maybe here two: dma_fence are bounded like other disk i/o (including
the option of timeouts if things go very wrong), so it's very much not
forever but at most a few seconds worst case (shit hw/driver excluded, as
usual).
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
