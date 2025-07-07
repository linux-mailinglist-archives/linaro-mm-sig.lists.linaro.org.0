Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B307BAFB66E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 16:48:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBBE045612
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 14:48:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 7FBF63F674
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Jul 2025 14:48:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=vzhIjGyG;
	spf=none (lists.linaro.org: domain of BATV+7c4dbc6fc51c0acbb13f+7988+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+7c4dbc6fc51c0acbb13f+7988+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=sTDalUrNw2z9g3DokIxyhkW5+/gPhyhfQxHkWbiU65A=; b=vzhIjGyGUqrxKd96M1rnYuIasN
	mLdtFY51oEfHvGMGVUtIzQqW1kUQJOUYeqe3ezaVOoa6DpicP+NPj5A5N2+rO/4OZcOh9sR6rqluf
	1Gs5PrJ24DJA4u7kdlGCxVKohrf9Px8qncVfTfoDLSfPOX/A/x4zAeJpB48Q9yoqmk6DQ8pj3+/gm
	XIM8bEIJluQLaCrfSEfoFkhhkRk9N6OmbVQ9PEVWNdkYA5XxV7o0VasxtP1nTnbR32VbvAO219LKY
	qRUj1M23/JtRsiEHW+LWPH7wLXOfexcdxd8/i7ghcrNZEX4ad7O1jSmtMu+lFiUa2jL1EZKwvTdeF
	7S8LtUEg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYn8g-00000002kzX-3wAk;
	Mon, 07 Jul 2025 14:48:14 +0000
Date: Mon, 7 Jul 2025 07:48:14 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <aGveLlLDcsyCBKuU@infradead.org>
References: <cover.1751035820.git.asml.silence@gmail.com>
 <aGaSb5rpLD9uc1IK@infradead.org>
 <f2216c30-6540-4b1a-b798-d9a3f83547b2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2216c30-6540-4b1a-b798-d9a3f83547b2@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7FBF63F674
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.29 / 15.00];
	BAYES_HAM(-2.99)[99.93%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[bombadil.infradead.org:rdns,bombadil.infradead.org:helo];
	DMARC_NA(0.00)[infradead.org];
	TAGGED_FROM(0.00)[7c4dbc6fc51c0acbb13f,7988,infradead.org,hch];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[infradead.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[198.137.202.133:from];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[198.137.202.133:from]
X-Rspamd-Action: no action
Message-ID-Hash: 7VRKR6IO27YYANG5QBA6QNJYUVKRWSJJ
X-Message-ID-Hash: 7VRKR6IO27YYANG5QBA6QNJYUVKRWSJJ
X-MailFrom: BATV+7c4dbc6fc51c0acbb13f+7988+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, io-uring@vger.kernel.org, linux-block@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, Keith Busch <kbusch@kernel.org>, David Wei <dw@davidwei.uk>, Vishal Verma <vishal1.verma@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 00/12] io_uring dmabuf read/write support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7VRKR6IO27YYANG5QBA6QNJYUVKRWSJJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jul 07, 2025 at 12:15:54PM +0100, Pavel Begunkov wrote:
> > to attach to / detach from a dma_buf, and then have an iter that
> > specifies a dmabuf and offsets into.  That way the code behind the
> > file operations can forward the attachment to all the needed
> > devices (including more/less while it remains attached to the file)
> > and can pick the right dma address for each device.
> 
> By "iter that specifies a dmabuf" do you mean an opaque file-specific
> structure allocated inside the new fop?

I mean a reference the actual dma_buf (probably indirect through the file
* for it, but listen to the dma_buf experts for that and not me).

> Akin to what Keith proposed back
> then. That sounds good and has more potential for various optimisations.
> My concern would be growing struct iov_iter by an extra pointer:

> struct iov_iter {
> 	union {
> 		struct iovec *iov;
> 		struct dma_seg *dmav;
> 		...
> 	};
> 	void *dma_token;	
> };
> 
> But maybe that's fine. It's 40B -> 48B,

Alternatively we could the union point to a struct that has the dma buf
pointer and a variable length array of dma_segs. Not sure if that would
create a mess in the callers, though.

> and it'll get back to
> 40 when / if xarray_start / ITER_XARRAY is removed.

Would it?  At least for 64-bit architectures nr_segs is the same size.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
