Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B97AD17FC
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jun 2025 06:35:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3318545524
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jun 2025 04:35:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id E042C443CA
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Jun 2025 04:35:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=rHP7I9UU;
	spf=none (lists.linaro.org: domain of BATV+8c169eee6154a7585371+7960+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+8c169eee6154a7585371+7960+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=oeT73a0Hi9cOPyGYRSLUMdSjrVNXI7sw9Uk+bmyEzn8=; b=rHP7I9UUuAQAw0byw2iIpo1lFJ
	zvbVPtfIVNEnDvZ9E1i3kI/uUWfH3Lg4IFfJamPPveKy03Ptn8AT5+IuiPsJ7Gyj1eLYvV75kkky/
	KwEenybj6HmEa1IyjFVizqFwSAnml8QPm1xdo5gomYU6y2sIPE3yqFTe86Dt5WnAL4OmASNCKIv+1
	NlmPjRydtMGYf+nz6hNKwgJbXio3bde8bWS1ewqdobg5JeCyxqwY3UhWGBuSBlgamJ98mC3IyE4eX
	gvBIUrrc3DfdJkX6pLBCFDhVX3Fftro4JvRfYYVf73aJ8wi9Jo0li4WYB/42oSfqwWDkVP2Xm571M
	rMrSru6w==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOUEG-00000003PoK-2Bfw;
	Mon, 09 Jun 2025 04:35:24 +0000
Date: Sun, 8 Jun 2025 21:35:24 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <aEZkjA1L-dP_Qt3U@infradead.org>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <aD7x_b0hVyvZDUsl@infradead.org>
 <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
 <aD72alIxu718uri4@infradead.org>
 <5d36abace6bf492aadd847f0fabc38be@honor.com>
 <a766fbf4-6cda-43a5-a1c7-61a3838f93f9@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a766fbf4-6cda-43a5-a1c7-61a3838f93f9@amd.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	RCVD_IN_DNSWL_MED(-0.20)[198.137.202.133:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[8c169eee6154a7585371,7960,infradead.org,hch];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[honor.com,infradead.org,linaro.org,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[infradead.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	DWL_DNSWL_BLOCKED(0.00)[infradead.org:dkim];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: E042C443CA
X-Spamd-Bar: ---
Message-ID-Hash: W4Q4T7H23CZUBPVQYMNXZ5YIH7XFA5IV
X-Message-ID-Hash: W4Q4T7H23CZUBPVQYMNXZ5YIH7XFA5IV
X-MailFrom: BATV+8c169eee6154a7585371+7960+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: wangtao <tao.wangtao@honor.com>, Christoph Hellwig <hch@infradead.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "kraxel@redhat.com" <kraxel@redhat.com>, "vivek.kasireddy@intel.com" <vivek.kasireddy@intel.com>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>, "brauner@kernel.org" <brauner@kernel.org>, "hughd@google.com" <hughd@google.com>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "amir73il@gmail.com" <amir73il@gmail.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "jstultz@google.com" <jstultz@google.com>, "tjmercier@google.com" <tjmercier@google.com>, "jack@suse.cz" <jack@suse.cz>, "baolin.wang@linux.alibaba.com" <baolin.wang@linux.alibaba.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <lin
 ux-kernel@vger.kernel.org>, "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W4Q4T7H23CZUBPVQYMNXZ5YIH7XFA5IV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 06, 2025 at 01:20:48PM +0200, Christian K=F6nig wrote:
> > dmabuf acts as a driver and shouldn't be handled by VFS, so I made
> > dmabuf implement copy_file_range callbacks to support direct I/O
> > zero-copy. I'm open to both approaches. What's the preference of
> > VFS experts?
>=20
> That would probably be illegal. Using the sg_table in the DMA-buf
> implementation turned out to be a mistake.

Two thing here that should not be directly conflated.  Using the
sg_table was a huge mistake, and we should try to move dmabuf to
switch that to a pure dma_addr_t/len array now that the new DMA API
supporting that has been merged.  Is there any chance the dma-buf
maintainers could start to kick this off?  I'm of course happy to
assist.

But that notwithstanding, dma-buf is THE buffer sharing mechanism in
the kernel, and we should promote it instead of reinventing it badly.
And there is a use case for having a fully DMA mapped buffer in the
block layer and I/O path, especially on systems with an IOMMU.
So having an iov_iter backed by a dma-buf would be extremely helpful.
That's mostly lib/iov_iter.c code, not VFS, though.

> The question Christoph raised was rather why is your CPU so slow
> that walking the page tables has a significant overhead compared to
> the actual I/O?

Yes, that's really puzzling and should be addressed first.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
