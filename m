Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDFFC6EFD2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:45:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C170D3F840
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 13:45:46 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id A1FFF3F788
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 13:45:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=t75TnyXa;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EACF7439C7;
	Wed, 19 Nov 2025 13:45:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD7BBC16AAE;
	Wed, 19 Nov 2025 13:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763559931;
	bh=P3o8RHvDAEnUuERCe1BMnR1YwR+dMea/ZoAi5ZBXv90=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t75TnyXaIaLVKA8TVdFOIbUfmeHo4/btOI2oLFyTwx1lCjsveSchI1EBPOOc8OfEU
	 7QixraT3KFGSPUvnTVnRthbFaGMDxNTZWUo5Tcxjf6aH53rpaqGFLVSFMNLDizUd3A
	 QwSiZmvD//HgnssiilLrKxRM4vZ6cmc99aE4Coipe6CFlk1vQCZdASthF5vaDcQnkL
	 MZ/cNswguYwRmgNRRMqMXz+l4ErdZVCb5X7Kve7bjXyjaAi9nArERygQ5n0D8BaTA5
	 3+fmL+QNcnPUcs4ADrhIjk+gdWlLU2nzJQQ5TGivxfxYWknTlcOCS90Tp/YEkddNL6
	 Jp9XI6WLvWISQ==
Date: Wed, 19 Nov 2025 15:45:26 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20251119134526.GE18335@unreal>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <BN9PR11MB5276BC3C0BDA85F0259A35058CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251119133000.GB18335@unreal>
 <20251119133708.GM17968@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251119133708.GM17968@ziepe.ca>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[100.75.92.58:server fail,172.234.252.31:server fail];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A1FFF3F788
X-Spamd-Bar: ---
Message-ID-Hash: YM2NT4T7ZBLCKMJLRDZAMRZFA6C6TXAW
X-Message-ID-Hash: YM2NT4T7ZBLCKMJLRDZAMRZFA6C6TXAW
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Tian, Kevin" <kevin.tian@intel.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "lin
 ux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, Alex Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YM2NT4T7ZBLCKMJLRDZAMRZFA6C6TXAW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMTksIDIwMjUgYXQgMDk6Mzc6MDhBTSAtMDQwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOg0KPiBPbiBXZWQsIE5vdiAxOSwgMjAyNSBhdCAwMzozMDowMFBNICswMjAwLCBMZW9u
IFJvbWFub3Zza3kgd3JvdGU6DQo+ID4gT24gV2VkLCBOb3YgMTksIDIwMjUgYXQgMDU6NTQ6NTVB
TSArMDAwMCwgVGlhbiwgS2V2aW4gd3JvdGU6DQo+ID4gPiA+IEZyb206IExlb24gUm9tYW5vdnNr
eSA8bGVvbkBrZXJuZWwub3JnPg0KPiA+ID4gPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAxMSwg
MjAyNSA1OjU4IFBNDQo+ID4gPiA+ICsNCj4gPiA+ID4gKwlpZiAoZG1hLT5zdGF0ZSAmJiBkbWFf
dXNlX2lvdmEoZG1hLT5zdGF0ZSkpIHsNCj4gPiA+ID4gKwkJV0FSTl9PTl9PTkNFKG1hcHBlZF9s
ZW4gIT0gc2l6ZSk7DQo+ID4gPiANCj4gPiA+IHRoZW4gImdvdG8gZXJyX3VubWFwX2RtYSIuDQo+
ID4gDQo+ID4gSXQgbmV2ZXIgc2hvdWxkIGhhcHBlbiwgdGhlcmUgaXMgbm8gbmVlZCB0byBwcm92
aWRlIGVycm9yIHVud2luZCB0bw0KPiA+IHNvbWV0aGluZyB0aGF0IHlvdSB3b24ndCBnZXQuDQo+
IA0KPiBJdCBpcyBleHBlY3RlZCB0aGF0IFdBUk5fT04gaGFzIHJlY292ZXJ5IGNvZGUsIGlmIGl0
IGlzIHBvc3NpYmxlIGFuZA0KPiBub3QgYnVyZGVuc29tZS4NCg0KSXTigJlzIG5vdCBuZWNlc3Nh
cnksIGJ1dCBzaW5jZSBJ4oCZbSBjYWxjdWxhdGluZyBtYXBwZWRfbGVuIGFnYWluLCBpdOKAmXMg
bmF0dXJhbOKAlGFuZCBjb21wbGV0ZWx5DQpoYXJtbGVzc+KAlHRvIGRvdWJsZS1jaGVjayB0aGUg
YXJpdGhtZXRpYy4NCg0KVGhhbmtzDQoNCj4gDQo+IEphc29uDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
