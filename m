Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB579AC018
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Oct 2024 09:20:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7059D44248
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Oct 2024 07:20:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 1BB973F466
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Oct 2024 07:20:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b="sg/k6Sfu";
	spf=none (lists.linaro.org: domain of BATV+16051c3a8dabb1c72812+7731+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+16051c3a8dabb1c72812+7731+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=w+90h7H5AVOlUGCT6jpiVo75HoG20ZQ36MbBIWzDKCk=; b=sg/k6Sfu33Iw5/CiNpoYqkyf4X
	ElBBSIB+U1NJ6KBwX7CC1QLsj5/W7jRqgkVLS/Q1t55vyPeXoDDFWS8o6/u7JhoeDWfyv34O0lhQj
	NtSUWkELXMp3MDvKLwNwpQtsB85FtrY2ZsBiXxWGnjvrddxbNyryGmNOy5H3tYl3+U4EkspGvnqe9
	+ukocsux5Q+eNjr3i0AEtuBcufLP0hheAujRayp+4/YL9wtVn+h05KQ3rYQsvBnRkSJJCchy8W8Gs
	mRgTASenNL3AI7px863NvEkEOGfQgoYHm4P+ArsmPt1xZ+0/48UzWn1h2Ek//qM33/l7ceMPCS37s
	vllZB6xw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Vfa-0000000DMaT-0Hry;
	Wed, 23 Oct 2024 07:20:38 +0000
Date: Wed, 23 Oct 2024 00:20:38 -0700
From: Christoph Hellwig <hch@infradead.org>
To: David Wei <dw@davidwei.uk>
Message-ID: <ZxijxiqNGONin3IY@infradead.org>
References: <20241016185252.3746190-1-dw@davidwei.uk>
 <20241016185252.3746190-3-dw@davidwei.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241016185252.3746190-3-dw@davidwei.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spamd-Result: default: False [-2.23 / 15.00];
	BAYES_HAM(-2.93)[99.70%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[198.137.202.133:from];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.dk,gmail.com,kernel.org,redhat.com,davemloft.net,google.com,fastly.com,mojatatu.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	TAGGED_FROM(0.00)[16051c3a8dabb1c72812,7731,infradead.org,hch];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1BB973F466
X-Spamd-Bar: --
Message-ID-Hash: GNAFGN2DOBJUCQ5QDOI5H3CFKKVWSPRM
X-Message-ID-Hash: GNAFGN2DOBJUCQ5QDOI5H3CFKKVWSPRM
X-MailFrom: BATV+16051c3a8dabb1c72812+7731+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: io-uring@vger.kernel.org, netdev@vger.kernel.org, Jens Axboe <axboe@kernel.dk>, Pavel Begunkov <asml.silence@gmail.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jesper Dangaard Brouer <hawk@kernel.org>, David Ahern <dsahern@kernel.org>, Mina Almasry <almasrymina@google.com>, Stanislav Fomichev <stfomichev@gmail.com>, Joe Damato <jdamato@fastly.com>, Pedro Tammela <pctammela@mojatatu.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 02/15] net: generalise net_iov chunk owners
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GNAFGN2DOBJUCQ5QDOI5H3CFKKVWSPRM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 16, 2024 at 11:52:39AM -0700, David Wei wrote:
> From: Pavel Begunkov <asml.silence@gmail.com>
> 
> Currently net_iov stores a pointer to struct dmabuf_genpool_chunk_owner,
> which serves as a useful abstraction to share data and provide a
> context. However, it's too devmem specific, and we want to reuse it for
> other memory providers, and for that we need to decouple net_iov from
> devmem. Make net_iov to point to a new base structure called
> net_iov_area, which dmabuf_genpool_chunk_owner extends.

We've been there before.  Instead of reinventing your own memory
provider please enhance dmabufs for your use case.  We don't really
need to build memory buffer abstraction over memory buffer abstraction.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
