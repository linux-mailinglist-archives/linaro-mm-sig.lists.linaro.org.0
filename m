Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B929B66AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2024 15:58:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7812A45412
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2024 14:58:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id EE38945403
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2024 14:58:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=OTLoqjE1;
	spf=none (lists.linaro.org: domain of BATV+d10b4746e65c5377225d+7738+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+d10b4746e65c5377225d+7738+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=EOhe37wzhw7xzeIak4/ImqmXuzFb2P7wAz173iN/p4U=; b=OTLoqjE1CZqI8ShDmv6JW4Ktxv
	hMRcPCrHHuu3B0qZfUNGiu9RW+3TpKco6Fmrg5szaBTrgFlqAQHcM4mWnn2QfL7M8uXM8F9Zhw4dB
	SkugKclQ8gBVH2xCldCkVnlZIsbRBC9Rt5+Md/5MwEGL28yyG6znlZuObJdb3QATdExFcwJTedoeS
	U3AJjnwNVpfZufyQ1NYkXFQmGtcN5WuSt741wtZvdZxtjWqJ/9KjRcwyUWrxbgBSuPwU0mRTGCORi
	CkH50ekY9Ok5BwMMHY8Fc4mLDvSyGgkjsqHZdrbRnyQ2qUvzown8yZzFMp+yI8lTIwiRDhfkjmyEI
	25loAEPw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98 #2 (Red Hat Linux))
	id 1t6A8v-00000000kGb-1hC0;
	Wed, 30 Oct 2024 14:57:53 +0000
Date: Wed, 30 Oct 2024 07:57:53 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <ZyJJcfQ-ldDtsfLN@infradead.org>
References: <20241016185252.3746190-1-dw@davidwei.uk>
 <20241016185252.3746190-3-dw@davidwei.uk>
 <ZxijxiqNGONin3IY@infradead.org>
 <264c8f95-2a69-4d49-8af6-d035fa890ef1@gmail.com>
 <ZxoSBhC6sMEbXQi8@infradead.org>
 <a6864bf1-dd88-4ae0-bc67-b88bb4c17b44@gmail.com>
 <ZxpwgLRNsrTBmJEr@infradead.org>
 <de9ae678-258d-4f68-86e1-59d5eb4b70a4@gmail.com>
 <Zx9_iYLVnkyE05Hh@infradead.org>
 <9a14e132-6a13-4077-973d-b1eca417e563@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a14e132-6a13-4077-973d-b1eca417e563@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spamd-Result: default: False [-0.86 / 15.00];
	BAYES_HAM(-1.56)[92.13%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[198.137.202.133:from];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[d10b4746e65c5377225d,7738,infradead.org,hch];
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
X-Rspamd-Queue-Id: EE38945403
X-Spamd-Bar: /
Message-ID-Hash: 4TBAB43HAVLOAHXD4E2RCL5FCZKZRR2T
X-Message-ID-Hash: 4TBAB43HAVLOAHXD4E2RCL5FCZKZRR2T
X-MailFrom: BATV+d10b4746e65c5377225d+7738+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, David Wei <dw@davidwei.uk>, io-uring@vger.kernel.org, netdev@vger.kernel.org, Jens Axboe <axboe@kernel.dk>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jesper Dangaard Brouer <hawk@kernel.org>, David Ahern <dsahern@kernel.org>, Mina Almasry <almasrymina@google.com>, Stanislav Fomichev <stfomichev@gmail.com>, Joe Damato <jdamato@fastly.com>, Pedro Tammela <pctammela@mojatatu.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 02/15] net: generalise net_iov chunk owners
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4TBAB43HAVLOAHXD4E2RCL5FCZKZRR2T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Oct 29, 2024 at 04:35:16PM +0000, Pavel Begunkov wrote:
> I see, the reply is about your phrase about additional memory
> abstractions:
> 
> "... don't really need to build memory buffer abstraction over
> memory buffer abstraction."

Yes, over the exsting memory buffer abstraction (dma_buf).

> If you mean internals, making up a dmabuf that has never existed in the
> picture in the first place is not cleaner or easier in any way. If that
> changes, e.g. there is more code to reuse in the future, we can unify it
> then.

I'm not sure what "making up" means here, they are all made up :)

> > with pre-registering the memry with the iommu to get good performance
> > in IOMMU-enabled setups.
> 
> The page pool already does that just like it handles the normal
> path without providers.

In which case is basically is a dma-buf.  If you'd expose it as such
we could actually use to communicate between subsystems in the
kernel.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
