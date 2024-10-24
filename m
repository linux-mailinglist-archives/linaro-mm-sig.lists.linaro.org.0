Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D08E69AEB67
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 18:06:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B94EC4412D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 16:06:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 6B08F440F1
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 16:06:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=fkgo90sr;
	spf=none (lists.linaro.org: domain of BATV+7e647dc4d1739dd50153+7732+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+7e647dc4d1739dd50153+7732+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=pz4GWBtGnvEHYFjo2q7F/eFxvtdN8k9+uNnzymMDFd4=; b=fkgo90sryavSyc6EEDHCRt3vCP
	QaskRnxELYWmWYn3cM3/SS2VCOX7oSf8r7Udb/Y5LB2gAdfGBIXJFjCFBjguoFr0ocrcsMkh9Kv5q
	HLmes+C0NbTOKtgSbCPvQUcM64Frr5aE/Xvt4nxsSMP6B4b0hoFxVBI2fW1/fWHSGCb2l/yZjblAK
	TIkFSvccNqfp8z45xyMOLBBViW0mQsvfvTC5j5T0UFM8sxLoLogTDW/b8xS4bGboTNamNlTHp55ls
	TU08yt8CLrWP6a2jNcKm4q3yp2KfLxHZEFhQVMFS9HqOG3WqZRsjeAQrd+S6xbn+I6FqsBRYHbupT
	FrPm947w==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98 #2 (Red Hat Linux))
	id 1t40Lx-000000012DI-005E;
	Thu, 24 Oct 2024 16:06:25 +0000
Date: Thu, 24 Oct 2024 09:06:24 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <ZxpwgLRNsrTBmJEr@infradead.org>
References: <20241016185252.3746190-1-dw@davidwei.uk>
 <20241016185252.3746190-3-dw@davidwei.uk>
 <ZxijxiqNGONin3IY@infradead.org>
 <264c8f95-2a69-4d49-8af6-d035fa890ef1@gmail.com>
 <ZxoSBhC6sMEbXQi8@infradead.org>
 <a6864bf1-dd88-4ae0-bc67-b88bb4c17b44@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6864bf1-dd88-4ae0-bc67-b88bb4c17b44@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[198.137.202.133:from];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[7e647dc4d1739dd50153,7732,infradead.org,hch];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_NA(0.00)[infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[infradead.org,davidwei.uk,vger.kernel.org,kernel.dk,kernel.org,redhat.com,davemloft.net,google.com,gmail.com,fastly.com,mojatatu.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[infradead.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6B08F440F1
X-Spamd-Bar: --
Message-ID-Hash: U5BYTOIHPBU5ZRSRKFOMTDRHNP6LX7LU
X-Message-ID-Hash: U5BYTOIHPBU5ZRSRKFOMTDRHNP6LX7LU
X-MailFrom: BATV+7e647dc4d1739dd50153+7732+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, David Wei <dw@davidwei.uk>, io-uring@vger.kernel.org, netdev@vger.kernel.org, Jens Axboe <axboe@kernel.dk>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jesper Dangaard Brouer <hawk@kernel.org>, David Ahern <dsahern@kernel.org>, Mina Almasry <almasrymina@google.com>, Stanislav Fomichev <stfomichev@gmail.com>, Joe Damato <jdamato@fastly.com>, Pedro Tammela <pctammela@mojatatu.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 02/15] net: generalise net_iov chunk owners
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U5BYTOIHPBU5ZRSRKFOMTDRHNP6LX7LU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 24, 2024 at 03:23:06PM +0100, Pavel Begunkov wrote:
> > That's not what this series does.  It adds the new memory_provider_ops
> > set of hooks, with once implementation for dmabufs, and one for
> > io_uring zero copy.
> 
> First, it's not a _new_ abstraction over a buffer as you called it
> before, the abstraction (net_iov) is already merged.

Umm, it is a new ops vector.

> Second, you mention devmem TCP, and it's not just a page pool with
> "dmabufs", it's a user API to use it and other memory agnostic
> allocation logic. And yes, dmabufs there is the least technically
> important part. Just having a dmabuf handle solves absolutely nothing.

It solves a lot, becaue it provides a proper abstraction.

> > So you are precluding zero copy RX into anything but your magic
> > io_uring buffers, and using an odd abstraction for that.
> 
> Right io_uring zero copy RX API expects transfer to happen into io_uring
> controlled buffers, and that's the entire idea. Buffers that are based
> on an existing network specific abstraction, which are not restricted to
> pages or anything specific in the long run, but the flow of which from
> net stack to user and back is controlled by io_uring. If you worry about
> abuse, io_uring can't even sanely initialise those buffers itself and
> therefore asking the page pool code to do that.

No, I worry about trying to io_uring for not good reason. This
pre-cludes in-kernel uses which would be extremly useful for
network storage drivers, and it precludes device memory of all
kinds.

> I'm even more confused how that would help. The user API has to
> be implemented and adding a new dmabuf gives nothing, not even
> mentioning it's not clear what semantics of that beast is
> supposed to be.
>

The dma-buf maintainers already explained to you last time
that there is absolutely no need to use the dmabuf UAPI, you
can use dma-bufs through in-kernel interfaces just fine.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
