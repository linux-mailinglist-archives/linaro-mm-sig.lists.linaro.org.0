Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1F8AF7742
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Jul 2025 16:24:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85C174560B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Jul 2025 14:24:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 4BADB44038
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Jul 2025 14:23:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=BSmjL+hK;
	spf=none (lists.linaro.org: domain of BATV+67f6620909e0c98f53ce+7984+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+67f6620909e0c98f53ce+7984+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=fdwQ7VoCdy9EDfz8qdHjHeqLPa9H8WWCarPWLj8vDE4=; b=BSmjL+hKMq+uETspb9lUMyEHQw
	0bxFAeC2GxGIerv0/y1S/jtyOo7o3HC1cIdgrFj/cACDXHADEyUAeyoUOrq8ommeAQlnCoyHHfpHY
	cLukEWcTdu23KMrC3Bql3cKQxdIc43/VGAmkIgT3U6kex/lPTpXOZ9DU9iScomTE/fckWN1rCQl3w
	wUQm0VQRKQr9LO+52bCrAajjRBNfF83RTFXcqDrCuhW7+pKKDu8l5dOoQOVIuuCE79gDxCxnmPW5d
	+NxJ9PmSYP0do/VK/Svlnk+pKid4eQ7cwDTOxHQ28VByz6yhjhnHBPZJW2Fk7L5l0D0rt+o48bZSW
	YHaTLpvw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXKql-0000000BeR1-44Zb;
	Thu, 03 Jul 2025 14:23:43 +0000
Date: Thu, 3 Jul 2025 07:23:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <aGaSb5rpLD9uc1IK@infradead.org>
References: <cover.1751035820.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1751035820.git.asml.silence@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4BADB44038
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[67f6620909e0c98f53ce,7984,infradead.org,hch];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[infradead.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[198.137.202.133:from]
X-Rspamd-Action: no action
Message-ID-Hash: KRDFZW7YQITYJYKACZJIULQN3VFEDAKV
X-Message-ID-Hash: KRDFZW7YQITYJYKACZJIULQN3VFEDAKV
X-MailFrom: BATV+67f6620909e0c98f53ce+7984+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: io-uring@vger.kernel.org, linux-block@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, Keith Busch <kbusch@kernel.org>, David Wei <dw@davidwei.uk>, Vishal Verma <vishal1.verma@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 00/12] io_uring dmabuf read/write support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KRDFZW7YQITYJYKACZJIULQN3VFEDAKV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

[Note: it would be really useful to Cc all relevant maintainers]

On Fri, Jun 27, 2025 at 04:10:27PM +0100, Pavel Begunkov wrote:
> This series implements it for read/write io_uring requests. The uAPI
> looks similar to normal registered buffers, the user will need to
> register a dmabuf in io_uring first and then use it as any other
> registered buffer. On registration the user also specifies a file
> to map the dmabuf for.

Just commenting from the in-kernel POV here, where the interface
feels wrong.

You can't just expose 'the DMA device' up file operations, because
there can be and often is more than one.  Similarly stuffing a
dma_addr_t into an iovec is rather dangerous.

The model that should work much better is to have file operations
to attach to / detach from a dma_buf, and then have an iter that
specifies a dmabuf and offsets into.  That way the code behind the
file operations can forward the attachment to all the needed
devices (including more/less while it remains attached to the file)
and can pick the right dma address for each device.

I also remember some discussion that new dma-buf importers should
use the dynamic imported model for long-term imports, but as I'm
everything but an expert in that area I'll let the dma-buf folks
speak.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
