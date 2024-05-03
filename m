Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4A68BB544
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:11:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE750447AD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 21:11:39 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id 3A8413F39D
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 21:11:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b=Rs9B3xI+;
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=NY7dpnWNXhQQKVFdAJPJlG4e4ZXMaDmQRQbDTVWLCeE=; b=Rs9B3xI+XdmJK5vPYQK8J22QKS
	EgQQjCflBDYUtxW7SIX67RGaVIh3sQxNGH90bxispPeYAm3Rch22e5sDAaxhSEmNW2ySJllWffdb5
	a4oV0hJkK1wMLB0wsYYYxmpIJp7sPoevLWMdPWdjnwETEp1S5NfsIj1h0wJX1d3jNqehubjWUYPn+
	7uDmwbVMNILcV4WyvLYqHObXMuav53kC37sidi15Uw1VLUrj5+Sngx5+0djz5feXF5HjHfmThe2Wn
	SpKgjexjGpBfd+US1tn2T08npPs/aGPCeX21rEsxXS0Wot3Ugzg/2Yns9RIFdjTU5nMXuJMK+yyG7
	QAAoXHQQ==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat Linux))
	id 1s30BR-00B72n-1X;
	Fri, 03 May 2024 21:11:09 +0000
Date: Fri, 3 May 2024 22:11:09 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20240503211109.GX2118490@ZenIV>
References: <0000000000002d631f0615918f1e@google.com>
 <7c41cf3c-2a71-4dbb-8f34-0337890906fc@gmail.com>
 <202405031110.6F47982593@keescook>
 <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
 <202405031207.9D62DA4973@keescook>
 <d6285f19-01aa-49c8-8fef-4b5842136215@kernel.dk>
 <202405031237.B6B8379@keescook>
 <202405031325.B8979870B@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202405031325.B8979870B@keescook>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3A8413F39D
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
	FREEMAIL_CC(0.00)[kernel.dk,gmail.com,kernel.org,syzkaller.appspotmail.com,vger.kernel.org,suse.cz,googlegroups.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org,labbott.name,linux-foundation.org];
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
Message-ID-Hash: 2LKKFVB3SWDM5QTXVM6JCFJ5Q5FRNHNK
X-Message-ID-Hash: 2LKKFVB3SWDM5QTXVM6JCFJ5Q5FRNHNK
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jens Axboe <axboe@kernel.dk>, Bui Quang Minh <minhquangbui99@gmail.com>, Christian Brauner <brauner@kernel.org>, syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, io-uring@vger.kernel.org, jack@suse.cz, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Laura Abbott <laura@labbott.name>, Linus Torvalds <torvalds@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: get_file() unsafe under epoll (was Re: [syzbot] [fs?] [io-uring?] general protection fault in __ep_remove)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2LKKFVB3SWDM5QTXVM6JCFJ5Q5FRNHNK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 01:28:37PM -0700, Kees Cook wrote:
> 
> Is this the right approach? It still feels to me like get_file() needs
> to happen much earlier...

I don't believe it needs to happen at all.  The problem is not that
->release() can be called during ->poll() - it can't and it doesn't.
It's that this instance of ->poll() is trying to extend the lifetime
of that struct file, when it might very well be past the point of no
return.

What we need is
	* promise that ep_item_poll() won't happen after eventpoll_release_file().
AFAICS, we do have that.
	* ->poll() not playing silly buggers.

As it is, dma_buf ->poll() is very suspicious regardless of that
mess - it can grab reference to file for unspecified interval.
Have that happen shortly before reboot and you are asking for failing
umount.

->poll() must be refcount-neutral wrt file passed to it.  I'm seriously
tempted to make ->poll() take const struct file * and see if there's
anything else that would fall out.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
