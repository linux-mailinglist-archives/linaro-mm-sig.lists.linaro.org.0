Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8646DBFA791
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Oct 2025 09:10:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B453C3F683
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Oct 2025 07:10:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 030733F683
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Oct 2025 07:10:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=LA0EsnIv;
	dmarc=none;
	spf=none (lists.linaro.org: domain of BATV+21c3bf232c3b55be12f8+8095+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+21c3bf232c3b55be12f8+8095+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=XKoyGCto+Kn0HeCK5i87kYlf6+Be8yWE+pzHWLeDEO0=; b=LA0EsnIvPmdhyAlKnWiGNmOL5l
	dPh0nZUevEw5pwm6HBBuRxpL+2yfoJmbOBQlWDuYglG8QtuSjZzDWUqtSadQ1OFRPkGGDZwk02eQl
	Bu+qOaq4hhb9Bd5VhP+RGw6wG8tKjt+oR0eO64ab5IIneyp3/JhLSsBpmjpjM5a/ycj97uOgmYi+/
	Y1cRAulWoHfCg1kdfl5Alide/1gYw2Rn+VvkITIlqp8loD9nJTP6eJ8kMFPCR/UpvZDtjb6axkHGz
	ZZPEPI9OgbKn0k/f8YRe21WllooKBtsnBOVhBULD9Jfr3RGKlOgLor3ceNm20eilmCX59TC4cQ8TU
	Mj/Wx7eQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSzT-00000001oYi-2Iys;
	Wed, 22 Oct 2025 07:10:35 +0000
Date: Wed, 22 Oct 2025 00:10:35 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <aPiDa-QruoHC3alk@infradead.org>
References: <cover.1760368250.git.leon@kernel.org>
 <1044f7aa09836d63de964d4eb6e646b3071c1fdb.1760368250.git.leon@kernel.org>
 <aPHibioUFZV8Wnd1@infradead.org>
 <20251017115320.GF3901471@nvidia.com>
 <aPYqliGwJTcZznSX@infradead.org>
 <20251020125854.GL316284@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251020125854.GL316284@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 030733F683
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.80 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[infradead.org];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[198.137.202.133:from];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[21c3bf232c3b55be12f8,8095,infradead.org,hch];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: QLBLVMOKYR5NTYAZBTAPAA43DZ6KR7NO
X-Message-ID-Hash: QLBLVMOKYR5NTYAZBTAPAA43DZ6KR7NO
X-MailFrom: BATV+21c3bf232c3b55be12f8+8095+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, Leon Romanovsky <leon@kernel.org>, Alex Williamson <alex.williamson@redhat.com>, Leon Romanovsky <leonro@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/9] PCI/P2PDMA: Separate the mmap() support from the core logic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QLBLVMOKYR5NTYAZBTAPAA43DZ6KR7NO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBPY3QgMjAsIDIwMjUgYXQgMDk6NTg6NTRBTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOg0KPiBJIGV4cGxhaW5lZCBpdCBpbiBkZXRhaWwgaW4gdGhlIG1lc3NhZ2UgeW91IGFy
ZSByZXBsaW5nIHRvLiBJZg0KPiBzb21ldGhpbmcgaXMgbm90IGNsZWFyIGNhbiB5b3UgcGxlYXNl
IGJlIG1vcmUgc3BlY2lmaWM/Pw0KPiANCj4gSXMgaXQgdGhlIG1tYXAgaW4gVkZJTyBwZXJoYXBz
IHRoYXQgaXMgY2F1c2luZyB0aGVzZSBxdWVzdGlvbnM/DQo+IA0KPiBWRklPIHVzZXMgYSBQRk5N
QVAgVk1BLCBzbyB5b3UgY2FuJ3QgcGluX3VzZXJfcGFnZSgpIGl0LiBJdCB1c2VzDQo+IHVubWFw
X21hcHBpbmdfcmFuZ2UoKSBkdXJpbmcgaXRzIHJlbW92ZSgpIHBhdGggdG8gZ2V0IHJpZCBvZiB0
aGUgVk1BDQo+IFBURXMuDQoNClRoaXMgYWxsIG5lZWRzIHRvIGfigKIgaW50byB0aGUgZXhwbGFu
YXRpb24uDQoNCj4gSW5zdGVhZCB0aGUgRE1BQlVGIEZEIGlzIHVzZWQgdG8gcGFzcyB0aGUgTU1J
TyBwYWdlcyBiZXR3ZWVuIFZGSU8gYW5kDQo+IGFub3RoZXIgZHJpdmVyLiBETUFCVUYgaGFzIGEg
YnVpbHQgaW4gaW52YWxpZGF0aW9uIG1lY2hhbmlzbSB0aGF0IFZGSU8NCj4gdHJpZ2dlcnMgYmVm
b3JlIHJlbW92ZSgpLiBUaGUgaW52YWxpZGF0aW9uIHJlbW92ZXMgYWNjZXNzIGZyb20gdGhlDQo+
IG90aGVyIGRyaXZlci4NCj4gDQo+IFRoaXMgaXMgZGlmZmVyZW50IHRoYW4gTlZNZSB3aGljaCBo
YXMgbm8gaW52YWxpZGF0aW9uLiBOVk1lIGRvZXMNCj4gdW5tYXBfbWFwcGluZ19yYW5nZSgpIG9u
IHRoZSBWTUEgYW5kIHdhaXRzIGZvciBhbGwgdGhlIHNob3J0IGxpdmVkDQo+IHBnbWFwIHJlZmVy
ZW5jZXMgdG8gY2xlYXIuIFdlIGRvbid0IG5lZWQgYW55dGhpbmcgbGlrZSB0aGF0IGJlY2F1c2UN
Cj4gRE1BQlVGIGludmFsaWRhdGlvbiBpcyBzeW5jaHJvbm91cy4NCg0KUGxlYXNlIGFkZCBkb2N1
bWVudGF0aW9uIGZvciB0aGlzIG1vZGVsIHRvIHRoZSBzb3VyY2UgdHJlZS4NCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
