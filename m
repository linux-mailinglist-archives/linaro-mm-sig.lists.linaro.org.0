Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD44C1480A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Oct 2025 13:02:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 276523F7EE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Oct 2025 12:02:26 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 0AF553F772
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Oct 2025 12:02:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=SwZX30kq;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 71695432BF;
	Tue, 28 Oct 2025 12:02:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9F27C4CEE7;
	Tue, 28 Oct 2025 12:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761652933;
	bh=mZf/YKmsAob1fECJczEmiCct9PI3ELB+8/2Zjo1x01o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SwZX30kqTRxKywW3JAgQpZq9YEFkCs4mbYnsls8E10OCO8sCik7skaC6kTTCKlfog
	 IAGPeflZVG4EU9joGw/E4TiGl7RA8FEFNbJr5eZDvYRVR5AqDOAKiVBJ3RW9NglqMt
	 YrKtMpdU8ZM7ej9CU2ASIMTiUtmkgbi/4YlElhPAm8ukENsd2Q5yb9qGC57bQdTv87
	 kSyfTWb41F+rhshf2CL1q0957AOwBmoHWs/npuXlrXKWFgxS/IeSKCP1J/gK/MKvkJ
	 lcPBPR7SnFgSuuCKpUntaxB+uWX3d7haPhR2st8URjXBigR+NbHjYiQJL0WRxmtmiQ
	 /cOOFozsC/eiA==
Date: Tue, 28 Oct 2025 14:02:07 +0200
From: Leon Romanovsky <leon@kernel.org>
To: David Matlack <dmatlack@google.com>
Message-ID: <20251028120207.GQ12554@unreal>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
 <CALzav=cj_g8ndvbWdm=dukW+37cDh04k1n7ssFrDG+dN3D+cbw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALzav=cj_g8ndvbWdm=dukW+37cDh04k1n7ssFrDG+dN3D+cbw@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0AF553F772
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: KFQKDZKVUFHWPCUSP3OB5WB2KWHZATBZ
X-Message-ID-Hash: KFQKDZKVUFHWPCUSP3OB5WB2KWHZATBZ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KFQKDZKVUFHWPCUSP3OB5WB2KWHZATBZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBPY3QgMjcsIDIwMjUgYXQgMDQ6MTM6MDVQTSAtMDcwMCwgRGF2aWQgTWF0bGFjayB3
cm90ZToNCj4gT24gTW9uLCBPY3QgMTMsIDIwMjUgYXQgODo0NOKAr0FNIExlb24gUm9tYW5vdnNr
eSA8bGVvbkBrZXJuZWwub3JnPiB3cm90ZToNCj4gPg0KPiA+IEZyb206IExlb24gUm9tYW5vdnNr
eSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4NCj4gPiBBZGQgc3VwcG9ydCBmb3IgZXhwb3J0aW5n
IFBDSSBkZXZpY2UgTU1JTyByZWdpb25zIHRocm91Z2ggZG1hLWJ1ZiwNCj4gPiBlbmFibGluZyBz
YWZlIHNoYXJpbmcgb2Ygbm9uLXN0cnVjdCBwYWdlIG1lbW9yeSB3aXRoIGNvbnRyb2xsZWQNCj4g
PiBsaWZldGltZSBtYW5hZ2VtZW50LiBUaGlzIGFsbG93cyBSRE1BIGFuZCBvdGhlciBzdWJzeXN0
ZW1zIHRvIGltcG9ydA0KPiA+IGRtYS1idWYgRkRzIGFuZCBidWlsZCB0aGVtIGludG8gbWVtb3J5
IHJlZ2lvbnMgZm9yIFBDSSBQMlAgb3BlcmF0aW9ucy4NCj4gDQo+ID4gKy8qKg0KPiA+ICsgKiBV
cG9uIFZGSU9fREVWSUNFX0ZFQVRVUkVfR0VUIGNyZWF0ZSBhIGRtYV9idWYgZmQgZm9yIHRoZQ0K
PiA+ICsgKiByZWdpb25zIHNlbGVjdGVkLg0KPiA+ICsgKg0KPiA+ICsgKiBvcGVuX2ZsYWdzIGFy
ZSB0aGUgdHlwaWNhbCBmbGFncyBwYXNzZWQgdG8gb3BlbigyKSwgZWcgT19SRFdSLCBPX0NMT0VY
RUMsDQo+ID4gKyAqIGV0Yy4gb2Zmc2V0L2xlbmd0aCBzcGVjaWZ5IGEgc2xpY2Ugb2YgdGhlIHJl
Z2lvbiB0byBjcmVhdGUgdGhlIGRtYWJ1ZiBmcm9tLg0KPiA+ICsgKiBucl9yYW5nZXMgaXMgdGhl
IHRvdGFsIG51bWJlciBvZiAoUDJQIERNQSkgcmFuZ2VzIHRoYXQgY29tcHJpc2UgdGhlIGRtYWJ1
Zi4NCj4gPiArICoNCj4gPiArICogUmV0dXJuOiBUaGUgZmQgbnVtYmVyIG9uIHN1Y2Nlc3MsIC0x
IGFuZCBlcnJubyBpcyBzZXQgb24gZmFpbHVyZS4NCj4gPiArICovDQo+ID4gKyNkZWZpbmUgVkZJ
T19ERVZJQ0VfRkVBVFVSRV9ETUFfQlVGIDExDQo+ID4gKw0KPiA+ICtzdHJ1Y3QgdmZpb19yZWdp
b25fZG1hX3JhbmdlIHsNCj4gPiArICAgICAgIF9fdTY0IG9mZnNldDsNCj4gPiArICAgICAgIF9f
dTY0IGxlbmd0aDsNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0cnVjdCB2ZmlvX2RldmljZV9mZWF0
dXJlX2RtYV9idWYgew0KPiA+ICsgICAgICAgX191MzIgICByZWdpb25faW5kZXg7DQo+ID4gKyAg
ICAgICBfX3UzMiAgIG9wZW5fZmxhZ3M7DQo+ID4gKyAgICAgICBfX3UzMiAgIGZsYWdzOw0KPiA+
ICsgICAgICAgX191MzIgICBucl9yYW5nZXM7DQo+ID4gKyAgICAgICBzdHJ1Y3QgdmZpb19yZWdp
b25fZG1hX3JhbmdlIGRtYV9yYW5nZXNbXTsNCj4gPiArfTsNCj4gDQo+IFRoaXMgdUFQSSB3b3Vs
ZCBiZSBhIGdvb2QgY2FuZGlkYXRlIGZvciBhIFZGSU8gc2VsZnRlc3QuIFlvdSBjYW4gdGVzdA0K
PiB0aGF0IGl0IHJldHVybnMgYW4gZXJyb3Igd2hlbiBpdCdzIHN1cHBvc2VkIHRvLCBhbmQgYSB2
YWxpZCBmZCB3aGVuDQo+IGl0J3Mgc3VwcG9zZWQgdG8uIEFuZCBvbmNlIHRoZSBpb21tdWZkIGlt
cG9ydGVyIHNpZGUgaXMgcmVhZHksIHdlIGNhbg0KPiBleHRlbmQgdGhlIHRlc3QgYW5kIHZlcmlm
eSB0aGF0IHRoZSBmZCBjYW4gYmUgbWFwcGVkIGludG8gaW9tbXVmZC4NCg0KTm8gcHJvYmxlbSwg
SSdsbCBhZGQgc3VjaCB0ZXN0LCBidXQgbGV0J3MgZm9jdXMgb24gbWFraW5nIHN1cmUgdGhhdCB0
aGlzDQpzZXJpZXMgaXMgYWNjZXB0ZWQgZmlyc3QuDQoNClRoYW5rcw0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
