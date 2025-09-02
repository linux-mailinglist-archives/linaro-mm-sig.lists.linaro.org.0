Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CA547B3FD50
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 13:07:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4686E44668
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Sep 2025 11:07:06 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 300B43F5B4
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Sep 2025 11:06:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=luXQtemq;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B389260206;
	Tue,  2 Sep 2025 11:06:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D67BC4CEED;
	Tue,  2 Sep 2025 11:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756811217;
	bh=hCa1C3d5MBR18h+mVpk4RAM474rjo1/g4TQSzEy0Gzo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=luXQtemqwauDCW1OGofW7KOn0Ed3TXz+7wSyh4Rq/4C4pBNfrCav73O7nhlQqKsu9
	 pJwS6fgD10XM5MWzc2V32cauwX2xcs5uKtg2Bn+xWgyC8SmOfVZ8jKdythn+ZO4vAa
	 0h7EOGiI+UMeKypfX8GCyk9wrCAP4tCX2z8kMskVDMEaLSOSdX6db0uWHaJchKjybu
	 MaLbWwVqK1itWBWz4FOiOlTEHChtIjiBEjBS0WHuFG4wArCchdxmDkRdChfk7RgGoF
	 PbQcn5XJw0e6Ezn8C5XZTAc61l/+qt/LvKdGUrn6ovVC7JKrzqR3GHSc85H+bG5dhG
	 nrqyYFGPfwuJg==
Date: Tue, 2 Sep 2025 14:06:51 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20250902110651.GF10073@unreal>
References: <cover.1754311439.git.leon@kernel.org>
 <c9b6237964b9606418af400bb6bec5178fcffff2.1754311439.git.leon@kernel.org>
 <20250806145825.2654ee59.alex.williamson@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250806145825.2654ee59.alex.williamson@redhat.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 300B43F5B4
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: VAMAWXNMTNKOPBBNMXIJUYPODDGJ2YHM
X-Message-ID-Hash: VAMAWXNMTNKOPBBNMXIJUYPODDGJ2YHM
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 01/10] PCI/P2PDMA: Remove redundant bus_offset from map state
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VAMAWXNMTNKOPBBNMXIJUYPODDGJ2YHM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBdWcgMDYsIDIwMjUgYXQgMDI6NTg6MjVQTSAtMDYwMCwgQWxleCBXaWxsaWFtc29u
IHdyb3RlOg0KPiBPbiBNb24sICA0IEF1ZyAyMDI1IDE2OjAwOjM2ICswMzAwDQo+IExlb24gUm9t
YW5vdnNreSA8bGVvbkBrZXJuZWwub3JnPiB3cm90ZToNCj4gDQo+ID4gRnJvbTogTGVvbiBSb21h
bm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gPiANCj4gPiBSZW1vdmUgdGhlIGJ1c19vZmYg
ZmllbGQgZnJvbSBwY2lfcDJwZG1hX21hcF9zdGF0ZSBzaW5jZSBpdCBkdXBsaWNhdGVzDQo+ID4g
aW5mb3JtYXRpb24gYWxyZWFkeSBhdmFpbGFibGUgaW4gdGhlIHBnbWFwIHN0cnVjdHVyZS4gVGhl
IGJ1c19vZmZzZXQNCj4gPiBpcyBvbmx5IHVzZWQgaW4gb25lIGxvY2F0aW9uIChwY2lfcDJwZG1h
X2J1c19hZGRyX21hcCkgYW5kIGlzIGFsd2F5cw0KPiA+IGlkZW50aWNhbCB0byBwZ21hcC0+YnVz
X29mZnNldC4NCj4gPiANCj4gPiBSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBs
c3QuZGU+DQo+ID4gU2lnbmVkLW9mZi1ieTogSmFzb24gR3VudGhvcnBlIDxqZ2dAbnZpZGlhLmNv
bT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29t
Pg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL3BjaS9wMnBkbWEuYyAgICAgICB8IDEgLQ0KPiA+ICBp
bmNsdWRlL2xpbnV4L3BjaS1wMnBkbWEuaCB8IDMgKy0tDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGNpL3AycGRtYS5jIGIvZHJpdmVycy9wY2kvcDJwZG1hLmMNCj4gPiBpbmRleCBkYTU2
NTdhMDIwMDc0Li4yNzRiYjdiY2MwYmM1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvcGNpL3Ay
cGRtYS5jDQo+ID4gKysrIGIvZHJpdmVycy9wY2kvcDJwZG1hLmMNCj4gPiBAQCAtMTAwOSw3ICsx
MDA5LDYgQEAgdm9pZCBfX3BjaV9wMnBkbWFfdXBkYXRlX3N0YXRlKHN0cnVjdCBwY2lfcDJwZG1h
X21hcF9zdGF0ZSAqc3RhdGUsDQo+ID4gIHsNCj4gPiAgCXN0YXRlLT5wZ21hcCA9IHBhZ2VfcGdt
YXAocGFnZSk7DQo+ID4gIAlzdGF0ZS0+bWFwID0gcGNpX3AycGRtYV9tYXBfdHlwZShzdGF0ZS0+
cGdtYXAsIGRldik7DQo+ID4gLQlzdGF0ZS0+YnVzX29mZiA9IHRvX3AycF9wZ21hcChzdGF0ZS0+
cGdtYXApLT5idXNfb2Zmc2V0Ow0KPiA+ICB9DQo+ID4gIA0KPiA+ICAvKioNCj4gPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9saW51eC9wY2ktcDJwZG1hLmggYi9pbmNsdWRlL2xpbnV4L3BjaS1wMnBk
bWEuaA0KPiA+IGluZGV4IDA3NWMyMGIxNjFkOTguLmI1MDJmYzhiNDliZjkgMTAwNjQ0DQo+ID4g
LS0tIGEvaW5jbHVkZS9saW51eC9wY2ktcDJwZG1hLmgNCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4
L3BjaS1wMnBkbWEuaA0KPiA+IEBAIC0xNDYsNyArMTQ2LDYgQEAgZW51bSBwY2lfcDJwZG1hX21h
cF90eXBlIHsNCj4gPiAgc3RydWN0IHBjaV9wMnBkbWFfbWFwX3N0YXRlIHsNCj4gPiAgCXN0cnVj
dCBkZXZfcGFnZW1hcCAqcGdtYXA7DQo+ID4gIAllbnVtIHBjaV9wMnBkbWFfbWFwX3R5cGUgbWFw
Ow0KPiA+IC0JdTY0IGJ1c19vZmY7DQo+ID4gIH07DQo+ID4gIA0KPiA+ICAvKiBoZWxwZXIgZm9y
IHBjaV9wMnBkbWFfc3RhdGUoKSwgZG8gbm90IHVzZSBkaXJlY3RseSAqLw0KPiA+IEBAIC0xODYs
NyArMTg1LDcgQEAgc3RhdGljIGlubGluZSBkbWFfYWRkcl90DQo+ID4gIHBjaV9wMnBkbWFfYnVz
X2FkZHJfbWFwKHN0cnVjdCBwY2lfcDJwZG1hX21hcF9zdGF0ZSAqc3RhdGUsIHBoeXNfYWRkcl90
IHBhZGRyKQ0KPiA+ICB7DQo+ID4gIAlXQVJOX09OX09OQ0Uoc3RhdGUtPm1hcCAhPSBQQ0lfUDJQ
RE1BX01BUF9CVVNfQUREUik7DQo+ID4gLQlyZXR1cm4gcGFkZHIgKyBzdGF0ZS0+YnVzX29mZjsN
Cj4gPiArCXJldHVybiBwYWRkciArIHRvX3AycF9wZ21hcChzdGF0ZS0+cGdtYXApLT5idXNfb2Zm
c2V0ZjsNCj4gPiAgfQ0KPiA+ICANCj4gPiAgI2VuZGlmIC8qIF9MSU5VWF9QQ0lfUDJQX0ggKi8N
Cg0KU29ycnkgZm9yIGxvbmcgdGltZSB0byByZXBseSwgSSB3YWl0ZWQgdG8gc2VlIHdoYXQgaXMg
Z29pbmcgb24gd2l0aCBETUENCnBoeXNfdmVjIGJhc2ljIHNlcmllcyBhbmQgdG9nZXRoZXIgd2l0
aCBteSBzdW1tZXIgdmFjYXRpb24sIGl0IHRvb2sgYQ0Kd2hpbGUuDQoNCj4gDQo+IExvb2tzIGxp
a2UgeW91J3JlIHJlbHlpbmcgb24gdGhpcyBib2d1cyBjb2RlIGdldHRpbmcgcmVzb2x2ZWQgaW4g
dGhlDQo+IG5leHQgcGF0Y2guLi4NCj4gDQo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSBrZXJuZWwv
ZG1hL2RpcmVjdC5jOjE2Og0KPiAuL2luY2x1ZGUvbGludXgvcGNpLXAycGRtYS5oOiBJbiBmdW5j
dGlvbiDigJhwY2lfcDJwZG1hX2J1c19hZGRyX21hcOKAmToNCj4gLi9pbmNsdWRlL2xpbnV4L3Bj
aS1wMnBkbWEuaDoxODg6MjQ6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlv
biDigJh0b19wMnBfcGdtYXDigJkgWy1XaW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dDQo+
ICAgMTg4IHwgICAgICAgICByZXR1cm4gcGFkZHIgKyB0b19wMnBfcGdtYXAoc3RhdGUtPnBnbWFw
KS0+YnVzX29mZnNldGY7DQo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+
fn5+fn4NCj4gLi9pbmNsdWRlL2xpbnV4L3BjaS1wMnBkbWEuaDoxODg6NTA6IGVycm9yOiBpbnZh
bGlkIHR5cGUgYXJndW1lbnQgb2Yg4oCYLT7igJkgKGhhdmUg4oCYaW504oCZKQ0KPiAgIDE4OCB8
ICAgICAgICAgcmV0dXJuIHBhZGRyICsgdG9fcDJwX3BnbWFwKHN0YXRlLT5wZ21hcCktPmJ1c19v
ZmZzZXRmOw0KPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBefg0KPiAuL2luY2x1ZGUvbGludXgvcGNpLXAycGRtYS5oOjE4OToxOiBlcnJv
cjogY29udHJvbCByZWFjaGVzIGVuZCBvZiBub24tdm9pZCBmdW5jdGlvbiBbLVdlcnJvcj1yZXR1
cm4tdHlwZV0NCj4gICAxODkgfCB9DQo+ICAgICAgIHwgXg0KPiANCj4gdG9fcDJwX3BnbWFwKCkg
aXMgYSBzdGF0aWMgZnVuY3Rpb24gYW5kIHN0cnVjdCBwY2lfcDJwZG1hX3BhZ2VtYXANCj4gZG9l
c24ndCBoYXZlIGEgYnVzX29mZnNldGYgbWVtYmVyLiAgVGhhbmtzLA0KDQpZb3UgYXJlIHJpZ2h0
LCBwcm9iYWJseSB0aGUgYmVzdCB3YXkgdG8gZml4IHRoZSBlcnJvciBpcyBzaW1wbHkgc3F1YXNo
DQp0aGlzIGNoYW5nZSBpbnRvIHRoZSBuZXh0IHBhdGNoLg0KDQpUaGFua3MNCg0KDQoNCj4gDQo+
IEFsZXgNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
