Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DE99AE082
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 11:23:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAFBE44B56
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Oct 2024 09:23:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 4299140A8E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Oct 2024 09:23:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=iZx25NEm;
	spf=none (lists.linaro.org: domain of BATV+7e647dc4d1739dd50153+7732+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+7e647dc4d1739dd50153+7732+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=cNG1v54GZGBbvGCSwdr00JWJ070P99babx+9AJaD/EE=; b=iZx25NEmGfWGdU9TR3Z7lOIlHN
	860ZRDCDc6MYSxH7C5rCboTyY85io1hD4DTH0VXgePsuLBj85GxVdINRL9ppqAvtsgmMAUE7fEf64
	EiLE1vLnrU4rtgqQQRTS04uthFrfHrUh3o9R0IG9D3r+wbQSklLnEQ6Bw5OlCkJ121+y6yVT7R6Gw
	KMIXnizp6B2d1oEgi4CEc8K7ioDkoqgkT4clBkF9oNXaTrERX7OjPreJ0BNDBZDOgs89pEzvDOoVD
	/PO6+d+ouDQCbsKm0+tEZn1M4l3+Kgpmf7XZn2I+JBlqidrQk5y9hpIHddEvSu0I08GukpFt0fYO6
	ozhOLphA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98 #2 (Red Hat Linux))
	id 1t3u3q-0000000HRLl-3drM;
	Thu, 24 Oct 2024 09:23:18 +0000
Date: Thu, 24 Oct 2024 02:23:18 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <ZxoSBhC6sMEbXQi8@infradead.org>
References: <20241016185252.3746190-1-dw@davidwei.uk>
 <20241016185252.3746190-3-dw@davidwei.uk>
 <ZxijxiqNGONin3IY@infradead.org>
 <264c8f95-2a69-4d49-8af6-d035fa890ef1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <264c8f95-2a69-4d49-8af6-d035fa890ef1@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spamd-Result: default: False [-1.18 / 15.00];
	BAYES_HAM(-2.88)[99.48%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[7e647dc4d1739dd50153,7732,infradead.org,hch];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[infradead.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[infradead.org,davidwei.uk,vger.kernel.org,kernel.dk,kernel.org,redhat.com,davemloft.net,google.com,gmail.com,fastly.com,mojatatu.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[infradead.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MID_RHS_MATCH_FROM(0.00)[];
	RBL_SENDERSCORE_REPUT_8(0.00)[198.137.202.133:from];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4299140A8E
X-Spamd-Bar: -
Message-ID-Hash: BUN6IR3Y2X2HBAVPBMS5O7HWH6PNR2AX
X-Message-ID-Hash: BUN6IR3Y2X2HBAVPBMS5O7HWH6PNR2AX
X-MailFrom: BATV+7e647dc4d1739dd50153+7732+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, David Wei <dw@davidwei.uk>, io-uring@vger.kernel.org, netdev@vger.kernel.org, Jens Axboe <axboe@kernel.dk>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jesper Dangaard Brouer <hawk@kernel.org>, David Ahern <dsahern@kernel.org>, Mina Almasry <almasrymina@google.com>, Stanislav Fomichev <stfomichev@gmail.com>, Joe Damato <jdamato@fastly.com>, Pedro Tammela <pctammela@mojatatu.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 02/15] net: generalise net_iov chunk owners
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BUN6IR3Y2X2HBAVPBMS5O7HWH6PNR2AX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 23, 2024 at 03:34:53PM +0100, Pavel Begunkov wrote:
> It doesn't care much what kind of memory it is, nor it's important
> for internals how it's imported, it's user addresses -> pages for
> user convenience sake. All the net_iov setup code is in the page pool
> core code. What it does, however, is implementing the user API, so

That's not what this series does.  It adds the new memory_provider_ops
set of hooks, with once implementation for dmabufs, and one for
io_uring zero copy.

So you are precluding zero copy RX into anything but your magic
io_uring buffers, and using an odd abstraction for that.

The right way would be to support zero copy RX into every
designated dmabuf, and make io_uring work with udmabuf or if
absolutely needed it's own kind of dmabuf.  Instead we create
a maze of incompatible abstractions here.  The use case of e.g.
doing zero copy receive into a NVMe CMB using PCIe P2P transactions
is every but made up, so this does create a problem.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
