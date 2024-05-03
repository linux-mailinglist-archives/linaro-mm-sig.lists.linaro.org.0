Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2F38BB59B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:24:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2372B447AD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 21:24:50 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id ACAA63F0A4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 21:24:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b=lHUXrMUy;
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=vSF9CJAk18KfYQ6Yz2FBQxa3cjRXNGsVqxiFCavCXyw=; b=lHUXrMUy3szqVJFXp8ewwVyALG
	FMwhGXj/QBF2ekq73bYumwb8JvTE5PalsZ/PXPWVBB0oPorPebp2p+RIBHU5rMBlca8sRkgFVg50b
	RiQbqehih1W0n77kUD51e1Ju8d4qNoEz+iD4dDvl/i+QyYhIO47/IUPNa9b5W8RqhJdO1Zii9HJ8R
	Tu56r7I50FMejgn8K4U+56PWJ5ubJUM/djzCFRHyVI6whK4JddDTF4M5gsKpbE2ScztycM8lwTywG
	kc6isI7RHzwqBNN1wTBXvtIxbWAa7z6X7h3OsXyp1il17czzMLjeA9HwLKD9q8gTzmbf002b7rhS2
	Ho0KrFIA==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat Linux))
	id 1s30OK-00B7yG-1D;
	Fri, 03 May 2024 21:24:28 +0000
Date: Fri, 3 May 2024 22:24:28 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20240503212428.GY2118490@ZenIV>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240503211129.679762-2-torvalds@linux-foundation.org>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ACAA63F0A4
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.39 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.97%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zeniv.linux.org.uk,none];
	MID_RHS_NOT_FQDN(0.50)[];
	FORGED_SENDER(0.30)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	R_DKIM_ALLOW(-0.20)[linux.org.uk:s=zeniv-20220401];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[chromium.org,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[linux.org.uk:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DNSWL_BLOCKED(0.00)[62.89.141.173:from];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:8419, ipnet:62.89.128.0/19, country:GB];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 6OKFMFARUCG7QWYCNVNSRUE4G72TFMXJ
X-Message-ID-Hash: 6OKFMFARUCG7QWYCNVNSRUE4G72TFMXJ
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: keescook@chromium.org, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6OKFMFARUCG7QWYCNVNSRUE4G72TFMXJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 02:11:30PM -0700, Linus Torvalds wrote:
> epoll is a mess, and does various invalid things in the name of
> performance.
> 
> Let's try to rein it in a bit. Something like this, perhaps?

> +/*
> + * The ffd.file pointer may be in the process of
> + * being torn down due to being closed, but we
> + * may not have finished eventpoll_release() yet.
> + *
> + * Technically, even with the atomic_long_inc_not_zero,
> + * the file may have been free'd and then gotten
> + * re-allocated to something else (since files are
> + * not RCU-delayed, they are SLAB_TYPESAFE_BY_RCU).

Can we get to ep_item_poll(epi, ...) after eventpoll_release_file()
got past __ep_remove()?  Because if we can, we have a worse problem -
epi freed under us.

If not, we couldn't possibly have reached ->release() yet, let
alone freeing anything.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
