Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 947BD8BB647
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:45:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A70C744814
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 21:45:52 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id 267643F0A4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 21:45:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b=LBITSpJY;
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=3lCoy8uzoX7QQd8eqESv9U82+gq2FTw7cMvL87kLhkY=; b=LBITSpJYboAcmP2sLMLog8nydW
	mt/eEb1k1RxaC/1rf9axcfr3DpdDFVZWBzSM5oiyiRFUxSmSTNk7S/pL3r/LyK0sUx0B7ulVQ3JNQ
	r6F9ALR0ltwB+yhzi14FlChXAh3y8p88L3KhQBzlGvQE9Qyjmf9GyQKp0ImLKiTti9oHi8k3hRvo3
	wVh2ps6XnwBsfVzZeN71mN1klcTNC+Iw2ovocjktngU/aRLmD9i2C0kfkNl/XDxg43VHY7LcXvmHW
	cP5n8cc1rlrFA4QbwGKtuB0RilMr6TQXDJT8CFkSL/wplslwGYSr1h0+/PUFgSGJlDgXOv0RWp+HJ
	KdWj72Tw==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat Linux))
	id 1s30ih-00B9OV-2B;
	Fri, 03 May 2024 21:45:31 +0000
Date: Fri, 3 May 2024 22:45:31 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20240503214531.GB2118490@ZenIV>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 267643F0A4
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
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8419, ipnet:62.89.128.0/19, country:GB];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	DKIM_TRACE(0.00)[linux.org.uk:+]
X-Rspamd-Action: no action
Message-ID-Hash: DB5R7DT2VN4OG2SNO6A44APECOSBSGDS
X-Message-ID-Hash: DB5R7DT2VN4OG2SNO6A44APECOSBSGDS
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: keescook@chromium.org, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DB5R7DT2VN4OG2SNO6A44APECOSBSGDS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 02:33:37PM -0700, Linus Torvalds wrote:

> Look at the hack in __ep_remove(): if it is concurrent with
> eventpoll_release_file(), it will hit this code
> 
>         spin_lock(&file->f_lock);
>         if (epi->dying && !force) {
>                 spin_unlock(&file->f_lock);
>                 return false;
>         }
> 
> and not free the epi.

What does that have to do with ep_item_poll()?

eventpoll_release_file() itself calls __ep_remove().  Have that
happen while ep_item_poll() is running in another thread and
you've got a problem.

AFAICS, exclusion is on ep->mtx.  Callers of ep_item_poll() are
* __ep_eventpoll_poll() - grabs ->mtx
* ep_insert() - called under ->mtx
* ep_modify() - calls are under ->mtx
* ep_send_events() - grabs ->mtx

and eventpoll_release_file() grabs ->mtx around __ep_remove().

How do you get through eventpoll_release_file() while someone
has entered ep_item_poll()?
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
