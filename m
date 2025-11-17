Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDYhIqj94GnzoAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C0B4107A5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3829E406B1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:17:59 +0000 (UTC)
Received: from fhigh-a6-smtp.messagingengine.com (fhigh-a6-smtp.messagingengine.com [103.168.172.157])
	by lists.linaro.org (Postfix) with ESMTPS id E1FEF3F689
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Nov 2025 15:36:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=bTgByaG4;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="a 3V3ZZ/";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 103.168.172.157 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.phl.internal (Postfix) with ESMTP id AEDCD14001CD;
	Mon, 17 Nov 2025 10:36:26 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Mon, 17 Nov 2025 10:36:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1763393786;
	 x=1763480186; bh=dumULOFDFktDrAv/FEHp3FtDy5iDmeMi8WaBMWjFFc0=; b=
	bTgByaG40HRwAAQHrZmUb1QxjoIKG692YfpeDBRFe9Iu6ybe//AfCHpW3mIPsM1M
	WYnkzK8lh2vXojzl2+qseUFiMvxqQKr0IYjFET9zskLG20I8YPQxfkYQYgftEyWx
	jeD3gXXQIl0ubwQsOnRCneY9Ee+d3+FyAnOe8/ZEXTNbJBdR9zsD/Uqm6CFnrieJ
	60m+mV6mdpdJNLWAtv0sUtz2nkHnAVCeUhvAsXprKWeJ9SeFuthsuY3OGDw1Tpsw
	ZMjmSiwEFqUDMvWqfBkZB2f2ikmXmb74OaRGArj1p0panyj3vvVWtNAew6f7EjEB
	kku47rytqu0faY0bmEgdRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1763393786; x=
	1763480186; bh=dumULOFDFktDrAv/FEHp3FtDy5iDmeMi8WaBMWjFFc0=; b=a
	3V3ZZ/HrTsgG7BZQp9uEsbe6TdQbscGPUzzV1ucmE75P+RX148fjF6z3+eDtfxE/
	+LIsnQGcry5t2eP9DsugDIxSRuHjQL4Pa48vQlCFL4Aj9/mvHNagLk5oliXqjZiN
	P7d9HhnMs2X2J530B8bl9/HIJt7CTkAoGK83TiPn4Am8w3vpm2woXXyidHxnjDmy
	AoDIYJqVBQO7kNTSKqZlkxYHdKM38pK6DV5BLhEpHopJc14gJ9bdwbzb1CECdFQ4
	29UG0a8x0Qak4XNvR1lJ563e3TxaNlVHCoAPZmYQcpWw6cJWVjhYMw/XcXCtUO7+
	0XyIT5kl1gHE9x0NMHR1g==
X-ME-Sender: <xms:-EAbaWyQ-WAwnluLWHzIZSr0mg8fK4EjRWclwqn4UadFrYR9CFAq3A>
    <xme:-EAbaYnO_OBUD04HGAVXLl5Y0sdGgCgZ0LkU9JWquhPnnfcmXV8ZdkOcf5KlVUEak
    U9OYBBXPjLciDkkfhjTYgSLsu-_gFaVGAR6arDrg1_4BpjJyD5n4g>
X-ME-Received: <xmr:-EAbaeV7CxOi5NsfI_0iHooQtOGJov1ufXfnaa1D97FrNVc9zEAX-2Uc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvudekkeegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfgggtgfesthhqredttddtjeenucfhrhhomheptehlvgigucgh
    ihhllhhirghmshhonhcuoegrlhgvgiesshhhrgiisghothdrohhrgheqnecuggftrfgrth
    htvghrnhepgffggfegffffhffhhefftdeikedtueefkefghfehledtkedvvddtieehveej
    fffgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhgvgiesshhhrgiisghothdrohhrghdp
    nhgspghrtghpthhtohepfeehpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegthh
    hrihhsthhirghnrdhkohgvnhhighesrghmugdrtghomhdprhgtphhtthhopehlvghonhes
    khgvrhhnvghlrdhorhhgpdhrtghpthhtohepsghhvghlghgrrghssehgohhoghhlvgdrtg
    homhdprhgtphhtthhopehlohhgrghnghesuggvlhhtrghtvggvrdgtohhmpdhrtghpthht
    oheprgigsghovgeskhgvrhhnvghlrdgukhdprhgtphhtthhopehrohgsihhnrdhmuhhrph
    hhhiesrghrmhdrtghomhdprhgtphhtthhopehjohhroheskegshihtvghsrdhorhhgpdhr
    tghpthhtohepfihilhhlsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehmrdhsiiihph
    hrohifshhkihesshgrmhhsuhhnghdrtghomh
X-ME-Proxy: <xmx:-EAbaZ0fTJm_ATpV97jWOpcVupVrX5qYHi8qRNGt3G3rqeBOTipOKQ>
    <xmx:-EAbaekY7TK2z-tERLv9vPNj8oV4GTGLaugTF_hEpglIkqI0gqjajw>
    <xmx:-EAbaQEqElQCUqBqS26kmOTvil5W3KYOkdSQUnH2TTqyeLc7k0jBCw>
    <xmx:-EAbabl0qbHJHfqmS6yt46qZ4Q6MuXUoWNyxiao6TOaw-x3l0mdFoA>
    <xmx:-kAbaVsEtsMVur8JcMzBXoqZTmuBVUtCij-s3rV4asHdXPXnRrkBls7n>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 17 Nov 2025 10:36:22 -0500 (EST)
Date: Mon, 17 Nov 2025 08:36:20 -0700
From: Alex Williamson <alex@shazbot.org>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251117083620.4660081a.alex@shazbot.org>
In-Reply-To: <da399efa-ad5b-4bdc-964d-b6cc4a4fc55d@amd.com>
References: <20251106-dmabuf-vfio-v7-0-2503bf390699@nvidia.com>
	<20251110134218.5e399b0f.alex@shazbot.org>
	<da399efa-ad5b-4bdc-964d-b6cc4a4fc55d@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SDZ2AANZINO4CSJNX32YSLZEHIWKF6NU
X-Message-ID-Hash: SDZ2AANZINO4CSJNX32YSLZEHIWKF6NU
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:06 +0000
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Mas
 tro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/11] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SDZ2AANZINO4CSJNX32YSLZEHIWKF6NU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[3599];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.743];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,shazbot.org:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 27C0B4107A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAxMSBOb3YgMjAyNSAwOTo1NDoyMiArMDEwMA0KQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCg0KPiBPbiAxMS8xMC8yNSAyMTo0MiwgQWxl
eCBXaWxsaWFtc29uIHdyb3RlOg0KPiA+IE9uIFRodSwgIDYgTm92IDIwMjUgMTY6MTY6NDUgKzAy
MDANCj4gPiBMZW9uIFJvbWFub3Zza3kgPGxlb25Aa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4gICAN
Cj4gPj4gQ2hhbmdlbG9nOg0KPiA+PiB2NzoNCj4gPj4gICogRHJvcHBlZCByZXN0b3JlX3Jldm9r
ZSBmbGFnIGFuZCBhZGRlZCB2ZmlvX3BjaV9kbWFfYnVmX21vdmUNCj4gPj4gICAgdG8gcmV2ZXJz
ZSBsb29wLg0KPiA+PiAgKiBGaXhlZCBzcGVsbGluZyBlcnJvcnMgaW4gZG9jdW1lbnRhdGlvbiBw
YXRjaC4NCj4gPj4gICogUmViYXNlZCBvbiB0b3Agb2YgdjYuMTgtcmMzLg0KPiA+PiAgKiBBZGRl
ZCBpbmNsdWRlIHRvIHN0ZGRlZi5oIHRvIHZmaW8uaCwgdG8ga2VlcCB1YXBpIGhlYWRlciBmaWxl
IGluZGVwZW5kZW50LiAgDQo+ID4gDQo+ID4gSSB0aGluayB3ZSdyZSB3aW5kaW5nIGRvd24gb24g
cmV2aWV3IGNvbW1lbnRzLiAgSXQnZCBiZSBncmVhdCB0byBnZXQNCj4gPiBwMnBkbWEgYW5kIGRt
YS1idWYgYWNrcyBvbiB0aGlzIHNlcmllcy4gIE90aGVyd2lzZSBpdCdzIGJlZW4gcG9zdGVkDQo+
ID4gZW5vdWdoIHRoYXQgd2UnbGwgYXNzdW1lIG5vIG9iamVjdGlvbnMuICBUaGFua3MsICANCj4g
DQo+IEFscmVhZHkgaGF2ZSBpdCBvbiBteSBUT0RPIGxpc3QgdG8gdGFrZSBhIGNsb3NlciBsb29r
LCBidXQgbm8gaWRlYSB3aGVuIHRoYXQgd2lsbCBiZS4NCj4gDQo+IFRoaXMgcGF0Y2ggc2V0IGlz
IG9uIHBsYWNlIDQgb3IgNSBvbiBhIHJhdGhlciBsb25nIGxpc3Qgb2Ygc3R1ZmYgdG8gcmV2aWV3
L2ZpbmlzaC4NCg0KSGkgQ2hyaXN0aWFuLA0KDQpHZW50bGUgbnVkZ2UuICBMZW9uIHBvc3RlZCB2
OFsxXSBsYXN0IHdlZWssIHdoaWNoIGlzIG5vdCBkcmF3aW5nIGFueQ0KbmV3IGNvbW1lbnRzLiAg
RG8geW91IGZvcmVzZWUgaGF2aW5nIHRpbWUgZm9yIHJldmlldyB0aGF0IEkgc2hvdWxkDQpzdGls
bCBob2xkIG9mZiBtZXJnaW5nIGZvciB2Ni4xOSBhIGJpdCBsb25nZXI/ICBUaGFua3MsDQoNCkFs
ZXgNCg0KDQpbMV1odHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTExMTEtZG1hYnVmLXZm
aW8tdjgtMC1mZDlhYTVkZjQ3OGZAbnZpZGlhLmNvbS8NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
