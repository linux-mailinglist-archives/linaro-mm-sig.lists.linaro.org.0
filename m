Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D72E0ACC918
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 16:28:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7B9544010
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 14:28:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id BCA1344010
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Jun 2025 14:28:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=CafIKnhM;
	spf=none (lists.linaro.org: domain of BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=NWF/m+whQ9NAjVENjezimZjEsDuS6u9BY+WJdI7HJ7o=; b=CafIKnhMe1WPVgL4WKM41su/Ak
	E7StKkX2E1DEcMgLjvKFH/jd78ALjQwMvnEcq2P20jUG97qs78yniKMQ/v65O78Dbtsj3E/JIbAwD
	qBvI+1Xo5mol3tHN8hJPdDkjYQ+NcVqva+GiyMYfbsWSSdvQITjgXQ+NONKG9yyyDskWO1zV6WYaW
	3CK8l67Bw+lyoryEGXw6MBrV6UHzwr5BYek6FMPiOMWUHY9velz2syJfrB59U3Sg8aSi45YYFtCit
	8SMyRKwdhXhKYejhw9B7shM+qiUa65uktVt+/kqQ0+IPf426MgY99owDskiPpJKRu1CeRXvxodpuD
	Sjytdo/Q==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMSct-0000000BAHP-1w1p;
	Tue, 03 Jun 2025 14:28:27 +0000
Date: Tue, 3 Jun 2025 07:28:27 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <aD8Gi9ShWDEYqWjB@infradead.org>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <aD7x_b0hVyvZDUsl@infradead.org>
 <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
 <aD72alIxu718uri4@infradead.org>
 <924ac01f-b86b-4a03-b563-878fa7736712@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <924ac01f-b86b-4a03-b563-878fa7736712@amd.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-6.79 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.97%];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[198.137.202.133:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[infradead.org,honor.com,linaro.org,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	MISSING_XM_UA(0.00)[];
	TAGGED_FROM(0.00)[175a1930472064472083,7954,infradead.org,hch];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Queue-Id: BCA1344010
X-Spamd-Bar: ------
Message-ID-Hash: 2PWHCLSNIPRKESO4VCD5W2Y36TXJFJK4
X-Message-ID-Hash: 2PWHCLSNIPRKESO4VCD5W2Y36TXJFJK4
X-MailFrom: BATV+175a1930472064472083+7954+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, wangtao <tao.wangtao@honor.com>, sumit.semwal@linaro.org, kraxel@redhat.com, vivek.kasireddy@intel.com, viro@zeniv.linux.org.uk, brauner@kernel.org, hughd@google.com, akpm@linux-foundation.org, amir73il@gmail.com, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, jack@suse.cz, baolin.wang@linux.alibaba.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, bintian.wang@honor.com, yipengxiang@honor.com, liulu.liu@honor.com, feng.han@honor.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2PWHCLSNIPRKESO4VCD5W2Y36TXJFJK4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 03, 2025 at 04:18:22PM +0200, Christian K=F6nig wrote:
> > Does it matter compared to the I/O in this case?
>=20
> It unfortunately does, see the numbers on patch 3 and 4.

That's kinda weird.  Why does the page table lookup tage so much
time compared to normal I/O?

> My question is rather if it's ok to call f_op->write_iter() and=20
> f_op->read_iter() with pages allocated by alloc_pages(), e.g.
> where drivers potentially ignore the page count and just re-use pages
> as they like?

read_iter and write_iter with ITER_BVEC just use the pages as source
and destination of the I/O.  They must not touch the refcounts or
do anything fancy with them.  Various places in the kernel rely on
that.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
