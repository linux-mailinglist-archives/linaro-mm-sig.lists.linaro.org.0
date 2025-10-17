Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E98DEBE6AF7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Oct 2025 08:31:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 164224445E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Oct 2025 06:31:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 19FE04445E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Oct 2025 06:31:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=493urc9v;
	dmarc=none;
	spf=none (lists.linaro.org: domain of BATV+4b0bb848bbbfa73029ae+8090+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+4b0bb848bbbfa73029ae+8090+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=pmHn5+tRqJO2fDf6pS/Dahy8vpk/9cVU0mdR9JQWhq0=; b=493urc9vdCLUHtN/APrPDMt+Nw
	AAbBU0C8dfMa1U8/04w8afM0UbQ7W4gfcGrT1PBGuKApCfeI/yVbNcy67l/1CHbSzWig+DgEMzhl1
	ZzpKrqbkQ86pXT09AHT/LEn9pdUs7xyx39HR4pPuC0C9RK1ZEmdj52vKjGs8HzpfXkoQOv3DRNBAo
	iiC9vjRotySW9JM5FhYFwF21OgRE0gkvj0t2hF3xqmFaqwWaYjuZbpS5u4slbgR3A/lwVwbjv0Qs8
	3wRUKZuJqg22v24KQ247pwYg+VEk3THzgctOopEJX1pwFYWtXV1JYoFEi9fP+5GDHzAhdIYSMFrOU
	EcuOZFYw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9e0H-00000006nP1-0jS7;
	Fri, 17 Oct 2025 06:31:53 +0000
Date: Thu, 16 Oct 2025 23:31:53 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <aPHi2c2BQNB4eqm_@infradead.org>
References: <cover.1760368250.git.leon@kernel.org>
 <0fa715706e1adf5e26199dc3eaa3b1ff3b14db67.1760368250.git.leon@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0fa715706e1adf5e26199dc3eaa3b1ff3b14db67.1760368250.git.leon@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Queue-Id: 19FE04445E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.80 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	DMARC_NA(0.00)[infradead.org];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[4b0bb848bbbfa73029ae,8090,infradead.org,hch];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SK77L3CMPVQWMKPSAEENVBO72XEZF5GC
X-Message-ID-Hash: SK77L3CMPVQWMKPSAEENVBO72XEZF5GC
X-MailFrom: BATV+4b0bb848bbbfa73029ae+8090+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/9] PCI/P2PDMA: Export pci_p2pdma_map_type() function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SK77L3CMPVQWMKPSAEENVBO72XEZF5GC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Nacked-by: Christoph Hellwig <hch@lst.de>

As explained to you multiple times, pci_p2pdma_map_type is a low-level
helper that absolutely MUST be wrapper in proper accessors.  It is
dangerous when used incorrectly and requires too much boiler plate.
There is no way this can be directly exported, and you really need to
stop resending this.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
