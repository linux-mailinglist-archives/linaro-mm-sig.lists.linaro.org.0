Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 552AC9B2FDD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Oct 2024 13:12:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5830644620
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Oct 2024 12:12:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 76BE340F95
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Oct 2024 12:12:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b="nbYSSs/T";
	spf=none (lists.linaro.org: domain of BATV+fde6398cdc6fa6cab30f+7736+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+fde6398cdc6fa6cab30f+7736+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=GANchaQxtsQUXPkHXZjcwxb7mo3qTTIUVflFphrpMRQ=; b=nbYSSs/TLdUtkkX49MCiEy49wQ
	JhQCqc+9shj6l/rWgmHUh3vHb2TelgkWvfsR9RiPKwCbTJ9cyV3FGFLc3ToTBKOJK9g98c4rckiQX
	hRSSQ0KcerCRxh+w6FDY+2FM2FkkgMlqfZitM1S7Kzqrdl6dF3iXXi78VvTpy3i7gzKON2oNwBl/g
	bKPKa26ZTjFUTDKupOhE3BJLM1zzAGN9G7crkz4vsMfOQ01twKvtXUGBeoVWFwzAObWfEFBoM3QhG
	6aCaKdem/ibNjvj0PlV+fK3MH6K73fRd48XjwIpj++F7ehMjqiHmOqRXaPY4OkF4b5izBQAY5/IQO
	b/dE4d4g==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98 #2 (Red Hat Linux))
	id 1t5ObB-0000000AhRn-0J2V;
	Mon, 28 Oct 2024 12:11:53 +0000
Date: Mon, 28 Oct 2024 05:11:53 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <Zx9_iYLVnkyE05Hh@infradead.org>
References: <20241016185252.3746190-1-dw@davidwei.uk>
 <20241016185252.3746190-3-dw@davidwei.uk>
 <ZxijxiqNGONin3IY@infradead.org>
 <264c8f95-2a69-4d49-8af6-d035fa890ef1@gmail.com>
 <ZxoSBhC6sMEbXQi8@infradead.org>
 <a6864bf1-dd88-4ae0-bc67-b88bb4c17b44@gmail.com>
 <ZxpwgLRNsrTBmJEr@infradead.org>
 <de9ae678-258d-4f68-86e1-59d5eb4b70a4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <de9ae678-258d-4f68-86e1-59d5eb4b70a4@gmail.com>
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
	TAGGED_FROM(0.00)[fde6398cdc6fa6cab30f,7736,infradead.org,hch];
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
X-Rspamd-Queue-Id: 76BE340F95
X-Spamd-Bar: --
Message-ID-Hash: VKPVQWJ2QK4CUMBKYRRZECMQZS6BKEBY
X-Message-ID-Hash: VKPVQWJ2QK4CUMBKYRRZECMQZS6BKEBY
X-MailFrom: BATV+fde6398cdc6fa6cab30f+7736+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, David Wei <dw@davidwei.uk>, io-uring@vger.kernel.org, netdev@vger.kernel.org, Jens Axboe <axboe@kernel.dk>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jesper Dangaard Brouer <hawk@kernel.org>, David Ahern <dsahern@kernel.org>, Mina Almasry <almasrymina@google.com>, Stanislav Fomichev <stfomichev@gmail.com>, Joe Damato <jdamato@fastly.com>, Pedro Tammela <pctammela@mojatatu.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 02/15] net: generalise net_iov chunk owners
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VKPVQWJ2QK4CUMBKYRRZECMQZS6BKEBY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 24, 2024 at 05:40:02PM +0100, Pavel Begunkov wrote:
> On 10/24/24 17:06, Christoph Hellwig wrote:
> > On Thu, Oct 24, 2024 at 03:23:06PM +0100, Pavel Begunkov wrote:
> > > > That's not what this series does.  It adds the new memory_provider_ops
> > > > set of hooks, with once implementation for dmabufs, and one for
> > > > io_uring zero copy.
> > > 
> > > First, it's not a _new_ abstraction over a buffer as you called it
> > > before, the abstraction (net_iov) is already merged.
> > 
> > Umm, it is a new ops vector.
> 
> I don't understand what you mean. Callback?

struct memory_provider_ops.  It's a method table or ops vetor, no
callbacks involved.

> Then please go ahead and take a look at the patchset in question
> and see how much of dmabuf handling is there comparing to pure
> networking changes. The point that it's a new set of API and lots
> of changes not related directly to dmabufs stand. dmabufs is useful
> there as an abstraction there, but it's a very long stretch saying
> that the series is all about it.

I did take a look, that's why I replied.

> > > on an existing network specific abstraction, which are not restricted to
> > > pages or anything specific in the long run, but the flow of which from
> > > net stack to user and back is controlled by io_uring. If you worry about
> > > abuse, io_uring can't even sanely initialise those buffers itself and
> > > therefore asking the page pool code to do that.
> > 
> > No, I worry about trying to io_uring for not good reason. This
> 
> It sounds that the argument is that you just don't want any
> io_uring APIs, I don't think you'd be able to help you with
> that.

No, that's complete misinterpreting what I'm saying.  Of course an
io_uring API is fine.  But tying low-level implementation details to
to is not.

> > pre-cludes in-kernel uses which would be extremly useful for
> 
> Uses of what? devmem TCP is merged, I'm not removing it,
> and the net_iov abstraction is in there, which can be potentially
> be reused by other in-kernel users if that'd even make sense.

How when you are hardcoding io uring memory registrations instead
of making them a generic dmabuf?  Which btw would also really help
with pre-registering the memry with the iommu to get good performance
in IOMMU-enabled setups.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
