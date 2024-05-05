Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DE88BC38A
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 22:13:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9B3A447F4
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 20:13:14 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id 3CC5940D75
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 May 2024 20:13:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b=CnaLgPQ6;
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=FIBoGZquZ/VQe2BKe30XapKIaNM49ftHl1jJXnJm4k8=; b=CnaLgPQ6MmvvpktCsT6C2eJz3J
	oqeWQSgZ0Dw3Z1EwSS6+OhHluY6tG92atgAY7KqTo8lvS0C4CTfQS+YJdqrXUmNiCcgIWA/qDCv4F
	s39hw0eIJcULyRbooAxulMm+VWMPzYxFEtZRNKC6y8s03L9r9hOjO8MVk+OxNQxEtohB3mdEPcwq5
	6/svRI0/B+7pstJPhzIp6uyDiT4G31Y96bNSnZYHdZOFYnk3S4Ug7be4CUKX33+ebiIFEa1lDFzTN
	xhRECPgfGVbrmNkgd137h6fDVgyJHDe3j4aMst3q7MaunQnGbEO5wbFc8SEimuuHg5ZTrfxyAuqHm
	6pSrN7Nw==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat Linux))
	id 1s3iEA-00DH5K-0Z;
	Sun, 05 May 2024 20:12:54 +0000
Date: Sun, 5 May 2024 21:12:54 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20240505201254.GI2118490@ZenIV>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com>
 <20240505-gelehnt-anfahren-8250b487da2c@brauner>
 <CAHk-=wgMzzfPwKc=8yBdXwSkxoZMZroTCiLZTYESYD3BC_7rhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wgMzzfPwKc=8yBdXwSkxoZMZroTCiLZTYESYD3BC_7rhQ@mail.gmail.com>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3CC5940D75
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zeniv.linux.org.uk,none];
	MID_RHS_NOT_FQDN(0.50)[];
	FORGED_SENDER(0.30)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	R_DKIM_ALLOW(-0.20)[linux.org.uk:s=zeniv-20220401];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
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
Message-ID-Hash: DVI4J26SC5DOMFF2HNLZFSMF4RN67GV6
X-Message-ID-Hash: DVI4J26SC5DOMFF2HNLZFSMF4RN67GV6
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian Brauner <brauner@kernel.org>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DVI4J26SC5DOMFF2HNLZFSMF4RN67GV6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, May 05, 2024 at 09:46:05AM -0700, Linus Torvalds wrote:

> WHY?
> 
> Why cannot you and Al just admit that the problem is in epoll. Always
> has been, always will be.

Nobody (well, nobody who'd ever read epoll) argues that epoll is not
a problem.

> The fact is, it's not dma-buf that is violating any rules.

Now, that is something I've a trouble with.  Use of get_file() in there
actually looks rather fishy, regardless of epoll.

At the very least it needs a comment discouraging other instances from
blindly copying this.  A reference to struct file pins down more than
driver-internal objects; if nothing else, it pins down a mount and
if you don't have SB_NOUSER on file_inode(file)->i_sb->s_flags, it's
really not a good idea.

What's more, the reason for that get_file() is, AFAICS, that nodes
we put into callback queue for fence(s) in question[*] are embedded
into dmabuf and we don't want them gone before the callbacks have
happened.  Which looks fishy - it would make more sense to cancel
these callbacks and drop the fence(s) in question from ->release().

I've no problem whatsoever with fs/eventpoll.c grabbing/dropping
file reference around vfs_poll() calls.  And I don't believe that
"try to grab" has any place in dma_buf_poll(); it's just that I'm not
happy about get_file() call being there in the first place.

Sure, the call of ->poll() can bloody well lead to references being
grabbed - by the pollwait callback, which the caller of ->poll()
is aware of.  It's ->poll() instance *itself* grabbing such references
with vfs_poll() caller having no idea what's going on that has
potential for being unpleasant.  And we can't constify 'file' argument
of ->poll() because of poll_wait(), so it's hard to catch those who
do that kind of thing; I've explicitly said so upthread, I believe.

But similar calls of get_file() in ->poll() instances (again, not
the ones that are made by pollwait callback) are something to
watch out for and having the caller pin struct file does not solve
the problem.

[*] at most one per direction, and I've no idea whether there can be more
than one signalling fence for given dmabuf) 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
