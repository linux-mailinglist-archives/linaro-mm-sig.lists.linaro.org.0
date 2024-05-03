Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEE88BB6DC
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 00:08:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16EC74475E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 22:08:06 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id 387A13F06F
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 22:07:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b=THwtsig7;
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=9IJ94F6D0hpL++k4cqV+mmpX37sPSJD4rkpmP5mQjAo=; b=THwtsig7+WAGUxhmJpiJpR9PpS
	dM05ePoKzCIBs8+7lHyp2MYwmUH+LkQoxFyS7J8MCf3nIVV6rhZHD+yoHk0cBUbKkW/VwL9wGwSlH
	FIiDgOtzJmmMBhSn+6zSf5+4VLvUrVDD1OA1Xvwarz4ztGra7C11jwxp9soa7j9BITqTMU01S/hN9
	bHOKJmd/37v/eZ5fAcBjKRLO3qSZI7TUi41kh6kFaPjPKQDwUBIJ0vhiYAKp3NVN7RHtNTas5JdV4
	xLWmh4Pxfnvbotxd93o72B8taYfTfsq9oNE8cs24NFEfZi6QMXsVXGTFetDToWXKjyc9lEN+MyX+L
	aeB8WzRQ==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat Linux))
	id 1s314C-00BAkU-39;
	Fri, 03 May 2024 22:07:45 +0000
Date: Fri, 3 May 2024 23:07:44 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20240503220744.GE2118490@ZenIV>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240503214531.GB2118490@ZenIV>
 <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
 <20240503220145.GD2118490@ZenIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240503220145.GD2118490@ZenIV>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 387A13F06F
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.73 / 15.00];
	BAYES_HAM(-2.33)[96.89%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zeniv.linux.org.uk,none];
	MID_RHS_NOT_FQDN(0.50)[];
	FORGED_SENDER(0.30)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	R_DKIM_ALLOW(-0.20)[linux.org.uk:s=zeniv-20220401];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:8419, ipnet:62.89.128.0/19, country:GB];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
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
Message-ID-Hash: L67DPI3OYUPP7FF3PT7NHTUAMHLAH72R
X-Message-ID-Hash: L67DPI3OYUPP7FF3PT7NHTUAMHLAH72R
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: keescook@chromium.org, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L67DPI3OYUPP7FF3PT7NHTUAMHLAH72R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 11:01:45PM +0100, Al Viro wrote:

> Having ->poll() instance itself grab reference is really asking for problem,
> even on the boxen that have CONFIG_EPOLL turned off.  select(2) is enough;
> it will take care of references grabbed by __pollwait(), but it doesn't
> know anything about the references driver has stashed hell knows where for
> hell knows how long.

Suppose your program calls select() on a pipe and dmabuf, sees data to be read
from pipe, reads it, closes both pipe and dmabuf and exits.

Would you expect that dmabuf file would stick around for hell knows how long
after that?  I would certainly be very surprised by running into that...
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
