Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE148BB858
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 01:39:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D27F744863
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:39:20 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id 4F81B401C4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 23:39:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b=q9II9mXc;
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=WAsHHyyLON6bH8kMNcqPvKu+nLtQfBaFyUzhN8/fmXI=; b=q9II9mXcxby6lVXHsG0JVrkTJT
	TbnocjCJurqmvStTQbv944nSP6uYVmbtKY8TuAIqJWuFuYMBM6uSKLCHaXf7YAJTamWF8AZlFwhBd
	DdsNEgsrfspvlmCfg4xJufBuXxSVe9MpcRIvGsC9KG0PLWPnWS1+PDRTYHiOYD6STZ8q1UBLB4u0D
	uS3Sm/j31Dc0E4LJEai6HSyOQqGvvpgo6kBBURsydLKEF5K4A5j7XCAClx9B9/J6zWoohYOKVzV1h
	WhiylI9wqnNhkDsYA9X7ophPs2Yf0JPspgd4a3QjJkdSGwQlQpe81inObgOvhP4wK099OCZRkf9SW
	1dBGEOkg==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat Linux))
	id 1s32UW-00BGUG-0X;
	Fri, 03 May 2024 23:39:00 +0000
Date: Sat, 4 May 2024 00:39:00 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20240503233900.GG2118490@ZenIV>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240503214531.GB2118490@ZenIV>
 <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
 <20240503220145.GD2118490@ZenIV>
 <20240503220744.GE2118490@ZenIV>
 <CAHk-=whULchE1i5LA2Fa=ZndSAzPXGWh_e5+a=YV3qT1BEST7w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whULchE1i5LA2Fa=ZndSAzPXGWh_e5+a=YV3qT1BEST7w@mail.gmail.com>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4F81B401C4
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[linux.org.uk:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zeniv.linux.org.uk,none];
	FORGED_SENDER(0.30)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	R_DKIM_ALLOW(-0.20)[linux.org.uk:s=zeniv-20220401];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[linux.org.uk:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:8419, ipnet:62.89.128.0/19, country:GB];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: GQ2ASPEVNTRLXG6ZONWKY6DMHOGPBPJV
X-Message-ID-Hash: GQ2ASPEVNTRLXG6ZONWKY6DMHOGPBPJV
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: keescook@chromium.org, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GQ2ASPEVNTRLXG6ZONWKY6DMHOGPBPJV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 04:16:15PM -0700, Linus Torvalds wrote:
> On Fri, 3 May 2024 at 15:07, Al Viro <viro@zeniv.linux.org.uk> wrote:
> >
> > Suppose your program calls select() on a pipe and dmabuf, sees data to be read
> > from pipe, reads it, closes both pipe and dmabuf and exits.
> >
> > Would you expect that dmabuf file would stick around for hell knows how long
> > after that?  I would certainly be very surprised by running into that...
> 
> Why?
> 
> That's the _point_ of refcounts. They make the thing they refcount
> stay around until it's no longer referenced.
> 
> Now, I agree that dmabuf's are a bit odd in how they use a 'struct
> file' *as* their refcount, but hey, it's a specialty use. Unusual
> perhaps, but not exactly wrong.
> 
> I suspect that if you saw a dmabuf just have its own 'refcount_t' and
> stay around until it was done, you wouldn't bat an eye at it, and it's
> really just the "it uses a struct file for counting" that you are
> reacting to.

*IF* those files are on purely internal filesystem, that's probably
OK; do that with something on something mountable (char device,
sysfs file, etc.) and you have a problem with filesystem staying
busy.

I'm really unfamiliar with the subsystem; it might be OK with all
objects that use that for ->poll(), but that's definitely not a good
thing to see in ->poll() instance in general.  And code gets copied,
so there really should be a big fat comment about the reasons why
it's OK in this particular case.

Said that, it seems that a better approach might be to have
their ->release() cancel callbacks and drop fence references.
Note that they *do* have refcounts - on fences.  The file
(well, dmabuf, really) is pinned only to protect against the
situation when pending callback is still around.  And Kees'
observation about multiple fences is also interesting - we don't
get extra fput(), but only because we get events only from one
fence, which does look fishy...
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
