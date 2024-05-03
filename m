Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F418BB5BF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:31:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A92CB44776
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 21:31:10 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id 7A45840C4C
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 21:31:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b="P9w/mUac";
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=OiaUBtTuclMlyYQB7Fm5pzFgIS7kDnUnoaLbaf/9epI=; b=P9w/mUacfd3afMUuHY0uTarqWo
	ANH8+bLd2GdqLqcg+YRliVnpFLB7gZ0AQvYL3vBCrr1dc8N+oEnPRGuZy7z3s7YwRmcjmbIwr34ad
	BoUlmbLBJdE5UQgNX7CI7C/CvZwYxm/BR6s4Ht8V/8UB3apgh2ViaoFLj75NIU/QQYkoV/USue2Ev
	XuLSpSzwt3Ji1M4Z1D/AfowaMkYbNMVG8efWCYUgPDOmIENfSL5/5u+K6riCSFR3NPspw2mP//YyO
	GaMi7JHbRvXKtkSAIpmXII8e0ipWCDUL1cn1AzUJMX6NMZybixhP4Sd1ayeNuCdhecJF2dZT7yrZP
	jyK4i+bg==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat Linux))
	id 1s30US-00B8QM-2L;
	Fri, 03 May 2024 21:30:48 +0000
Date: Fri, 3 May 2024 22:30:48 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20240503213048.GZ2118490@ZenIV>
References: <0000000000002d631f0615918f1e@google.com>
 <7c41cf3c-2a71-4dbb-8f34-0337890906fc@gmail.com>
 <202405031110.6F47982593@keescook>
 <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
 <202405031207.9D62DA4973@keescook>
 <d6285f19-01aa-49c8-8fef-4b5842136215@kernel.dk>
 <202405031237.B6B8379@keescook>
 <202405031325.B8979870B@keescook>
 <20240503211109.GX2118490@ZenIV>
 <CAHk-=wj0de-P2Q=Gz2uyrWBHagT25arLbN0Lyg=U6fT7psKnQA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wj0de-P2Q=Gz2uyrWBHagT25arLbN0Lyg=U6fT7psKnQA@mail.gmail.com>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7A45840C4C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zeniv.linux.org.uk,none];
	FORGED_SENDER(0.30)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	R_DKIM_ALLOW(-0.20)[linux.org.uk:s=zeniv-20220401];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,kernel.dk,gmail.com,kernel.org,syzkaller.appspotmail.com,vger.kernel.org,suse.cz,googlegroups.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org,labbott.name];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[linux.org.uk:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[62.89.141.173:from];
	FROM_NEQ_ENVFROM(0.00)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:8419, ipnet:62.89.128.0/19, country:GB];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: RII6YYZCRDRN3QGEF5DEZTLOV4JI7VIY
X-Message-ID-Hash: RII6YYZCRDRN3QGEF5DEZTLOV4JI7VIY
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Kees Cook <keescook@chromium.org>, Jens Axboe <axboe@kernel.dk>, Bui Quang Minh <minhquangbui99@gmail.com>, Christian Brauner <brauner@kernel.org>, syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, io-uring@vger.kernel.org, jack@suse.cz, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Laura Abbott <laura@labbott.name>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: get_file() unsafe under epoll (was Re: [syzbot] [fs?] [io-uring?] general protection fault in __ep_remove)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RII6YYZCRDRN3QGEF5DEZTLOV4JI7VIY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 02:24:45PM -0700, Linus Torvalds wrote:
> Because even with perfectly normal "->poll()", and even with the
> ep_item_poll() happening *before* eventpoll_release_file(), you have
> this trivial race:
> 
>   ep_item_poll()
>      ->poll()
> 
> and *between* those two operations, another CPU does "close()", and
> that causes eventpoll_release_file() to be called, and now f_count
> goes down to zero while ->poll() is running.
> 
> So you do need to increment the file count around the ->poll() call, I feel.
> 
> Or, alternatively, you'd need to serialize with
> eventpoll_release_file(), but that would need to be some sleeping lock
> held over the ->poll() call.
> 
> > As it is, dma_buf ->poll() is very suspicious regardless of that
> > mess - it can grab reference to file for unspecified interval.
> 
> I think that's actually much preferable to what epoll does, which is
> to keep using files without having reference counts to them (and then
> relying on magically not racing with eventpoll_release_file().

eventpoll_release_file() calling __ep_remove() while ep_item_poll()
is something we need to avoid anyway - having epi freed under
ep_item_poll() would be a problem regardless of struct file
lifetime issues.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
