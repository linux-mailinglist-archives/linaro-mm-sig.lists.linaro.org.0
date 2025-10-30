Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD35C1E9E8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Oct 2025 07:48:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BEC0A3F7E5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Oct 2025 06:48:38 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B195F3F79F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 06:48:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Jvaq5XNT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1340543ADE;
	Thu, 30 Oct 2025 06:48:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26554C4CEF1;
	Thu, 30 Oct 2025 06:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761806903;
	bh=Hh7skkg065ylczpCr0Iv292nYGj50H++UlcoJlqnTFg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jvaq5XNTepDILhgg1JjU/RUVDN3aAiAJIkCA81z5TSuHPckkaF3X0SyKZTH4NiHLo
	 x+finAT9AqYTJiYKAczU3VWRnf+rm3VE20OrKWYI/Xxc5hFGsCXFzXGxlRgl84S3cn
	 1erdjEeAotdXzH15cDoYeVH+bTlS6vCEewWmlIP12FHqqmKW1wIhJVbVTWmVOPGJrX
	 RJ5aoNnkrAbFiXF+dpmpZF6tfJYJwn+YpHGgTwxQxqrtPlhVJhYtSdcxvt/ny5ubyp
	 08qX3boYwst6Z/pSklUkGal7BAeNf8rJyf2PuG4I88FPZtBaphc13e3GPPIzUbz0sz
	 yNDwwG6BUC0cA==
Date: Thu, 30 Oct 2025 08:48:18 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Samiullah Khawaja <skhawaja@google.com>
Message-ID: <20251030064818.GA60090@unreal>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
 <CAAywjhRb6Nwmzy+QWFPH9Zkn-xvtvOktNjAZ8HMpM2wmVw2rjw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAywjhRb6Nwmzy+QWFPH9Zkn-xvtvOktNjAZ8HMpM2wmVw2rjw@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B195F3F79F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:email];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 6J3AVVLKE4GCC7GRJP4NU6J7C54P4APW
X-Message-ID-Hash: 6J3AVVLKE4GCC7GRJP4NU6J7C54P4APW
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex.williamson@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6J3AVVLKE4GCC7GRJP4NU6J7C54P4APW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBPY3QgMjksIDIwMjUgYXQgMDU6MjU6MDNQTSAtMDcwMCwgU2FtaXVsbGFoIEtoYXdh
amEgd3JvdGU6DQo+IE9uIE1vbiwgT2N0IDEzLCAyMDI1IGF0IDg6MjfigK9BTSBMZW9uIFJvbWFu
b3Zza3kgPGxlb25Aa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4NCj4gPiBGcm9tOiBMZW9uIFJvbWFu
b3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiA+DQo+ID4gQWRkIHN1cHBvcnQgZm9yIGV4cG9y
dGluZyBQQ0kgZGV2aWNlIE1NSU8gcmVnaW9ucyB0aHJvdWdoIGRtYS1idWYsDQo+ID4gZW5hYmxp
bmcgc2FmZSBzaGFyaW5nIG9mIG5vbi1zdHJ1Y3QgcGFnZSBtZW1vcnkgd2l0aCBjb250cm9sbGVk
DQo+ID4gbGlmZXRpbWUgbWFuYWdlbWVudC4gVGhpcyBhbGxvd3MgUkRNQSBhbmQgb3RoZXIgc3Vi
c3lzdGVtcyB0byBpbXBvcnQNCj4gPiBkbWEtYnVmIEZEcyBhbmQgYnVpbGQgdGhlbSBpbnRvIG1l
bW9yeSByZWdpb25zIGZvciBQQ0kgUDJQIG9wZXJhdGlvbnMuDQo+ID4NCj4gPiBUaGUgaW1wbGVt
ZW50YXRpb24gcHJvdmlkZXMgYSByZXZvY2FibGUgYXR0YWNobWVudCBtZWNoYW5pc20gdXNpbmcN
Cj4gPiBkbWEtYnVmIG1vdmUgb3BlcmF0aW9ucy4gTU1JTyByZWdpb25zIGFyZSBub3JtYWxseSBw
aW5uZWQgYXMgQkFScw0KPiA+IGRvbid0IGNoYW5nZSBwaHlzaWNhbCBhZGRyZXNzZXMsIGJ1dCBh
Y2Nlc3MgaXMgcmV2b2tlZCB3aGVuIHRoZSBWRklPDQo+ID4gZGV2aWNlIGlzIGNsb3NlZCBvciBh
IFBDSSByZXNldCBpcyBpc3N1ZWQuIFRoaXMgZW5zdXJlcyBrZXJuZWwNCj4gPiBzZWxmLWRlZmVu
c2UgYWdhaW5zdCBwb3RlbnRpYWxseSBob3N0aWxlIHVzZXJzcGFjZS4NCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEphc29uIEd1bnRob3JwZSA8amdnQG52aWRpYS5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0KPiA+IFNp
Z25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+ID4gLS0t
DQo+ID4gIGRyaXZlcnMvdmZpby9wY2kvS2NvbmZpZyAgICAgICAgICAgfCAgIDMgKw0KPiA+ICBk
cml2ZXJzL3ZmaW8vcGNpL01ha2VmaWxlICAgICAgICAgIHwgICAyICsNCj4gPiAgZHJpdmVycy92
ZmlvL3BjaS92ZmlvX3BjaV9jb25maWcuYyB8ICAyMiArLQ0KPiA+ICBkcml2ZXJzL3ZmaW8vcGNp
L3ZmaW9fcGNpX2NvcmUuYyAgIHwgIDI4ICsrDQo+ID4gIGRyaXZlcnMvdmZpby9wY2kvdmZpb19w
Y2lfZG1hYnVmLmMgfCA0NDYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiAgZHJp
dmVycy92ZmlvL3BjaS92ZmlvX3BjaV9wcml2LmggICB8ICAyMyArKw0KPiA+ICBpbmNsdWRlL2xp
bnV4L3ZmaW9fcGNpX2NvcmUuaCAgICAgIHwgICAxICsNCj4gPiAgaW5jbHVkZS91YXBpL2xpbnV4
L3ZmaW8uaCAgICAgICAgICB8ICAyNSArKw0KPiA+ICA4IGZpbGVzIGNoYW5nZWQsIDU0NiBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KDQo8Li4uPg0KDQo+ID4gK3ZvaWQgdmZpb19w
Y2lfZG1hX2J1Zl9tb3ZlKHN0cnVjdCB2ZmlvX3BjaV9jb3JlX2RldmljZSAqdmRldiwgYm9vbCBy
ZXZva2VkKQ0KPiA+ICt7DQo+ID4gKyAgICAgICBzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1ZiAqcHJp
djsNCj4gPiArICAgICAgIHN0cnVjdCB2ZmlvX3BjaV9kbWFfYnVmICp0bXA7DQo+ID4gKw0KPiA+
ICsgICAgICAgbG9ja2RlcF9hc3NlcnRfaGVsZF93cml0ZSgmdmRldi0+bWVtb3J5X2xvY2spOw0K
PiA+ICsNCj4gPiArICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShwcml2LCB0bXAsICZ2
ZGV2LT5kbWFidWZzLCBkbWFidWZzX2VsbSkgew0KPiA+ICsgICAgICAgICAgICAgICBpZiAoIWdl
dF9maWxlX2FjdGl2ZSgmcHJpdi0+ZG1hYnVmLT5maWxlKSkNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICBjb250aW51ZTsNCj4gPiArDQo+ID4gKyAgICAgICAgICAgICAgIGlmIChwcml2LT5y
ZXZva2VkICE9IHJldm9rZWQpIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBkbWFfcmVz
dl9sb2NrKHByaXYtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7DQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgcHJpdi0+cmV2b2tlZCA9IHJldm9rZWQ7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgZG1hX2J1Zl9tb3ZlX25vdGlmeShwcml2LT5kbWFidWYpOw0KPiANCj4gSSB0aGluayB0aGlz
IHNob3VsZCBvbmx5IGJlIGNhbGxlZCB3aGVuIHJldm9rZWQgaXMgdHJ1ZSwgb3RoZXJ3aXNlDQo+
IHRoaXMgd2lsbCBiZSBjYWxsaW5nIG1vdmVfbm90aWZ5IG9uIHRoZSBhbHJlYWR5IHJldm9rZWQg
ZG1hYnVmDQo+IGF0dGFjaG1lbnRzLg0KDQpUaGlzIGNhc2UgaXMgcHJvdGVjdGVkIGJ5ICJpZiAo
cHJpdi0+cmV2b2tlZCkiIGNoZWNrIGJvdGggaW4gdmZpb19wY2lfZG1hX2J1Zl9tYXANCmFuZCB2
ZmlvX3BjaV9kbWFfYnVmX2F0dGFjaC4gVGhleSB3aWxsIHByZXZlbnQgRE1BQlVGIHJlY3JlYXRp
b24gaWYgcmV2b2tlZCBpcyBmYWxzZS4NCg0KVlRXLCBwbGVhc2UgdHJpbSB5b3VyIHJlcGxpZXMs
IGl0IGlzIHRpbWUgY29uc3VtaW5nIHRvIGZpbmQgeW91ciByZXBseQ0KYW1vbmcgNjAwIGxpbmVz
IG9mIHVucmVsYXRlZCB0ZXh0Lg0KDQpUaGFua3MNCg0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGRtYV9yZXN2X3VubG9jayhwcml2LT5kbWFidWYtPnJlc3YpOw0KPiA+ICsgICAgICAgICAg
ICAgICB9DQo+ID4gKyAgICAgICAgICAgICAgIGRtYV9idWZfcHV0KHByaXYtPmRtYWJ1Zik7DQo+
ID4gKyAgICAgICB9DQo+ID4gK30NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
