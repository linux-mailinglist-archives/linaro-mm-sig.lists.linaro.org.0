Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C83BA8BB7DA
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 01:03:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C99604480B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:03:41 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id 3B6A94488F
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 23:03:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b=ZKRWD2ib;
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=cSDdKBLN0a5uI9scqsrmM49KsAV9URcP7+bHrbasnBA=; b=ZKRWD2ibo8voqmliDBcVDvN5cn
	/J5M/yDDbeZNdFnxzKaOxhsSkppprX3nENPQ0z3ugjwuDMe8tlOqb2H9u0+kPfmRHjzW0fkG5yIqK
	5oMf9bmXAKEj7jmrC9MBBwV0BQN7ufjs49HUQ5Wy/J9G7EnLMFlsSbDAMOO2TRReS+grtgUOcSqnR
	M6fY72Cud6MedRUa79lH44WMOzNeJnHRW2gs7c2goZq9n8vvF96i89CfhXI5/xAijTEX7PXVxsOZu
	mNJv9YI0vA9p2YJOkwZNX3RMTA7af85jNkMRbId/g0Q7XANJDk1Fv/AEo0Bggo7yTWSDvAtdOh+wY
	kTLCW7YA==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat Linux))
	id 1s31vy-00BEDK-1T;
	Fri, 03 May 2024 23:03:18 +0000
Date: Sat, 4 May 2024 00:03:18 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20240503230318.GF2118490@ZenIV>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240503214531.GB2118490@ZenIV>
 <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
 <202405031529.2CD1BFED37@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202405031529.2CD1BFED37@keescook>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3B6A94488F
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zeniv.linux.org.uk,none];
	MID_RHS_NOT_FQDN(0.50)[];
	FORGED_SENDER(0.30)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	R_DKIM_ALLOW(-0.20)[linux.org.uk:s=zeniv-20220401];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux-foundation.org,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[linux.org.uk:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[62.89.141.173:from];
	FROM_NEQ_ENVFROM(0.00)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	DWL_DNSWL_BLOCKED(0.00)[linux.org.uk:dkim];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:8419, ipnet:62.89.128.0/19, country:GB];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: EHD3MPHQAR3EKLHCH3LQVPJMYZLPPOP6
X-Message-ID-Hash: EHD3MPHQAR3EKLHCH3LQVPJMYZLPPOP6
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linus Torvalds <torvalds@linux-foundation.org>, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EHD3MPHQAR3EKLHCH3LQVPJMYZLPPOP6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 03:46:25PM -0700, Kees Cook wrote:
> On Fri, May 03, 2024 at 02:52:38PM -0700, Linus Torvalds wrote:
> > That means that the file will be released - and it means that you have
> > violated all the refcounting rules for poll().
> 
> I feel like I've been looking at this too long. I think I see another
> problem here, but with dmabuf even when epoll is fixed:
> 
> dma_buf_poll()
> 	get_file(dmabuf->file)		/* f_count + 1 */
> 	dma_buf_poll_add_cb()
> 		dma_resv_for_each_fence ...
> 			dma_fence_add_callback(fence, ..., dma_buf_poll_cb)
> 
> dma_buf_poll_cb()
> 	...
>         fput(dmabuf->file);		/* f_count - 1 ... for each fence */
> 
> Isn't it possible to call dma_buf_poll_cb() (and therefore fput())
> multiple times if there is more than 1 fence? Perhaps I've missed a
> place where a single struct dma_resv will only ever signal 1 fence? But
> looking through dma_fence_signal_timestamp_locked(), I don't see
> anything about resv nor somehow looking into other fence cb_list
> contents...

At a guess,
                r = dma_fence_add_callback(fence, &dcb->cb, dma_buf_poll_cb);
		if (!r)
			return true;

prevents that - it returns 0 on success and -E... on error;
insertion into the list happens only when it's returning 0,
so...
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
