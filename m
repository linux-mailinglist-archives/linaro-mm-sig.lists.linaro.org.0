Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B3E8BCE0E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 14:37:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E282244141
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 12:37:24 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id 7863540B93
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 May 2024 12:37:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b="D9Zh/4q9";
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.43) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-41c26dcc3ecso2596595e9.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 May 2024 05:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1714999033; x=1715603833; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NmNWteJIHVG/FsNg6lLCmILTCJBN+MkrWHLSaZrPJk4=;
        b=D9Zh/4q9BUVLoZTk7saecDNGAEIe11Gq4uiPRQ/etZZa8q/3ORRuYaYeUvGOUXD2uK
         gu4myGmY2Iq2GhMf+N7NYApCvg5Qt4X6NDa6wLwPPWzr193UU7mVv2XTSeer1Iojh6QO
         oC/l2fQaP/rzAXnKjPmqsZ95FEWKPwh1vP47M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714999033; x=1715603833;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NmNWteJIHVG/FsNg6lLCmILTCJBN+MkrWHLSaZrPJk4=;
        b=Yap/7HgSUnbwQPNmAdKy+lJZHEd/L43KJJaRmFuvGfXhFd8XczBprLyQVYoU0e6f4c
         9BO7iA3Io/zUr+YdxUfAZw1WA1MTeT6nRfdbyJMUVCWUEFB5f/jeFi5hCrsqQxnVqzrx
         Bgx9DM4PGfGtjfgmPNiBcUOhVR0x96IrK51SPmKf5/oJZIHxjmSHeja6Om5McR2WscOi
         j6ijqWBo3cSfd8GC43z11oxubNVv2PNlCMskBpPx8hTvCZHcadKP9O7dsF+xzMkMSRoK
         WlGKl6cWZsFdFLf3oEuOlQJLkpha2kPpLMpEWedZ50VSqVvlNyuC0Aw7jj+J9tPcfftJ
         nTrg==
X-Forwarded-Encrypted: i=1; AJvYcCVc3j1OGCtft4c3GoOTaYNP/+WUDBT3WJggya29s0zcRH1IZxbl5fbyjhwJlVO+heVAeZqH8+OZfPinwLpb9YsTBLNmUyQ8FJ11aLuKeuM=
X-Gm-Message-State: AOJu0YxHd46qXvM+1/C3xd5tioR2Z8G6uM82soz55af31JlK9324Ppyi
	2DTJs9JW1maxLui6+MG+pp5qgSi+4aqpfgxqUsCSRxQBlTA4Vq6rLm3q+c7WRAU=
X-Google-Smtp-Source: AGHT+IF4oVKBpTMWMqUQ/dzQ+O/7RQpt5fMGVwZ3eSkPNG4BC5o71WjeNR+MccKjqHnTIbg2KzBZFg==
X-Received: by 2002:a05:600c:1d25:b0:418:ef65:4b11 with SMTP id l37-20020a05600c1d2500b00418ef654b11mr7944219wms.2.1714999033407;
        Mon, 06 May 2024 05:37:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id je16-20020a05600c1f9000b0041c7ac6b0ffsm19767802wmb.37.2024.05.06.05.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 05:37:13 -0700 (PDT)
Date: Mon, 6 May 2024 14:37:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ZjjO9kaRjT48Uyuc@phenom.ffwll.local>
Mail-Followup-To: Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Al Viro <viro@zeniv.linux.org.uk>, axboe@kernel.dk,
	brauner@kernel.org, christian.koenig@amd.com,
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
 <20240503214531.GB2118490@ZenIV>
 <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
 <202405031529.2CD1BFED37@keescook>
 <20240503230318.GF2118490@ZenIV>
 <202405031616.793DF7EEE@keescook>
 <CAHk-=wjoXgm=j=vt9S2dcMk3Ws6Z8ukibrEncFZcxh5n77F6Dg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjoXgm=j=vt9S2dcMk3Ws6Z8ukibrEncFZcxh5n77F6Dg@mail.gmail.com>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7863540B93
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[chromium.org,zeniv.linux.org.uk,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	URIBL_BLOCKED(0.00)[mail-wm1-f43.google.com:rdns,mail-wm1-f43.google.com:helo,chromium.org:email];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[ffwll.ch:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.43:from];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: XCPMYTV72DWRY7JFZXK2SSHVSCHSDBRK
X-Message-ID-Hash: XCPMYTV72DWRY7JFZXK2SSHVSCHSDBRK
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Al Viro <viro@zeniv.linux.org.uk>, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XCPMYTV72DWRY7JFZXK2SSHVSCHSDBRK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 04:41:19PM -0700, Linus Torvalds wrote:
> On Fri, 3 May 2024 at 16:23, Kees Cook <keescook@chromium.org> wrote:
> >
> > static bool __must_check get_dma_buf_unless_doomed(struct dma_buf *dmabuf)
> > {
> >         return atomic_long_inc_not_zero(&dmabuf->file->f_count) != 0L;
> > }
> >
> > If we end up adding epi_fget(), we'll have 2 cases of using
> > "atomic_long_inc_not_zero" for f_count. Do we need some kind of blessed
> > helper to live in file.h or something, with appropriate comments?
> 
> I wonder if we could try to abstract this out a bit more.
> 
> These games with non-ref-counted file structures *feel* a bit like the
> games we play with non-ref-counted (aka "stashed") 'struct dentry'
> that got fairly recently cleaned up with path_from_stashed() when both
> nsfs and pidfs started doing the same thing.
> 
> I'm not loving the TTM use of this thing, but at least the locking and
> logic feels a lot more straightforward (ie the
> atomic_long_inc_not_zero() here is clealy under the 'prime->mutex'
> lock

The one the vmgfx isn't really needed (I think at least), because all
other drivers that use gem or ttm use the dma_buf export cache in
drm/drm_prime.c, which is protected by a bog standard mutex.

vmwgfx is unfortunately special in a lot of ways due to somewhat parallel
dev history. So there might be an uapi reason why the weak reference is
required. I suspect because vmwgfx is reinventing a lot of its own wheels
it can't play the same tricks as gem_prime.c, which hooks into a few core
drm cleanup/release functions.

tldr; drm really has no architectural need for a get_file_unless_doomed,
and I certainly don't want to spread it it further than the vmwgfx
historical special case that was added in 2013.
-Sima

> IOW, the tty use looks correct to me, and it has fairly simple locking
> and is just catching the the race between 'fput()' decrementing the
> refcount and and 'file->f_op->release()' doing the actual release.
> 
> You are right that it's similar to the epoll thing in that sense, it
> just looks a _lot_ more straightforward to me (and, unlike epoll,
> doesn't look actively buggy right now).
> 
> Could we abstract out this kind of "stashed file pointer" so that we'd
> have a *common* form for this? Not just the inc_not_zero part, but the
> locking rule too?
> 
>               Linus

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
