Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HqtGBb/GOmp9GggAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 19:47:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 842636B9382
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 19:47:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=Kki45cJZ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96EDC4010F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 17:47:41 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id 085D83F796
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 17:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1782236848;
	bh=YnpLj85EVGFLS082aT9C1I8KDlkyXpsPGbTho/uxSLo=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=Kki45cJZWsx9YAZgIjFlNXBh4gxmehNd4vPdhDGqbXNckYAUWcNK5NrOjxPnNhA0I
	 QtvyyFV0Eoh8ZNWJ7aIXyTto6helylau76gRUqZWbHqMWu67oqEojo8vwKq+EsHq6N
	 qCqcCGyNAYXq6mJLW+VOFY+Z41U9sdcsKlCkoZYyHf6ZwhMlYFnVbTEvkDeIp8eWCU
	 l96EoKWxeFlRbsj1l3UQV2fwAJuTACjiUyG5IG6lkYNHFMY9/TH/nv4V27mR0Ii/oD
	 g4Jpo55fotZNFVbkMuFlvwAb3414y7QDk/0X40yG4cgrli+myDrMBQmXrhUoGuIT0C
	 y7iLzj3Cuv5fA==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4glCFN67bcz4wB7;
	Wed, 24 Jun 2026 03:47:20 +1000 (AEST)
Message-ID: <feaefa41-9f67-4d4f-a3e0-282dca41f3eb@ozlabs.org>
Date: Tue, 23 Jun 2026 18:47:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
From: Matt Evans <matt@ozlabs.org>
To: Robin Murphy <robin.murphy@arm.com>, "Tian, Kevin"
 <kevin.tian@intel.com>, Pranjal Shrivastava <praan@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-2-matt@ozlabs.org> <aisAc1HRn2Wa4F9p@google.com>
 <DM6PR11MB36904ED2E1D2C646644F67668C182@DM6PR11MB3690.namprd11.prod.outlook.com>
 <0dfadf98-a904-4e6a-b078-5caf27bc7922@ozlabs.org>
 <81a9d212-996e-42e1-aabf-b120a13e94c3@arm.com>
 <88a9ebaa-8637-4290-b299-acae0e3065f8@ozlabs.org>
In-Reply-To: <88a9ebaa-8637-4290-b299-acae0e3065f8@ozlabs.org>
X-Spamd-Bar: ---
Message-ID-Hash: 7R7VCXIN46K2TX6H5PNZ5CSGQYVQECN7
X-Message-ID-Hash: 7R7VCXIN46K2TX6H5PNZ5CSGQYVQECN7
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7R7VCXIN46K2TX6H5PNZ5CSGQYVQECN7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[ozlabs.org:s=201707];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:robin.murphy@arm.com,m:kevin.tian@intel.com,m:praan@google.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:mid,ozlabs.org:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 842636B9382

SGkgUm9iaW4sIG1lLA0KDQpPbiAyMy8wNi8yMDI2IDE2OjU5LCBNYXR0IEV2YW5zIHdyb3RlOg0K
PiBIZXlhIFJvYmluLA0KPiANCj4gT24gMjMvMDYvMjAyNiAxNjo0OCwgUm9iaW4gTXVycGh5IHdy
b3RlOg0KPj4gT24gMTIvMDYvMjAyNiAzOjMxIHBtLCBNYXR0IEV2YW5zIHdyb3RlOg0KPj4+IEhp
IEtldmluLCBQcmFuamFsLCAoK1JvYmluLCBoaSEpDQo+Pg0KPj4gT2ggaGV5IHRoZXJlISA6KQ0K
Pj4NCj4+PiBPbiAxMi8wNi8yMDI2IDA0OjM5LCBUaWFuLCBLZXZpbiB3cm90ZToNCj4+Pj4+IEZy
b206IFByYW5qYWwgU2hyaXZhc3RhdmEgPHByYWFuQGdvb2dsZS5jb20+DQo+Pj4+PiBTZW50OiBG
cmlkYXksIEp1bmUgMTIsIDIwMjYgMjozOCBBTQ0KPj4+Pj4NCj4+Pj4+IE9uIFdlZCwgSnVuIDEw
LCAyMDI2IGF0IDA0OjQzOjE1UE0gKzAxMDAsIE1hdHQgRXZhbnMgd3JvdGU6DQo+Pj4+Pj4gLS0t
IGEvZHJpdmVycy9wY2kvS2NvbmZpZw0KPj4+Pj4+ICsrKyBiL2RyaXZlcnMvcGNpL0tjb25maWcN
Cj4+Pj4+PiBAQCAtMjA2LDExICsyMDYsNyBAQCBjb25maWcgUENJRV9UUEgNCj4+Pj4+PiDCoCBj
b25maWcgUENJX1AyUERNQQ0KPj4+Pj4+IMKgwqDCoMKgwqAgYm9vbCAiUENJIHBlZXItdG8tcGVl
ciB0cmFuc2ZlciBzdXBwb3J0Ig0KPj4+Pj4+IMKgwqDCoMKgwqAgZGVwZW5kcyBvbiBaT05FX0RF
VklDRQ0KPj4+Pj4+IC3CoMKgwqAgIw0KPj4+Pj4+IC3CoMKgwqAgIyBUaGUgbmVlZCBmb3IgdGhl
IHNjYXR0ZXJsaXN0IERNQSBidXMgYWRkcmVzcyBmbGFnIG1lYW5zIFBDSQ0KPj4+Pj4gUDJQRE1B
DQo+Pj4+Pj4gLcKgwqDCoCAjIHJlcXVpcmVzIDY0Yml0DQo+Pj4+Pj4gLcKgwqDCoCAjDQo+Pj4+
Pj4gLcKgwqDCoCBkZXBlbmRzIG9uIDY0QklUDQo+Pj4+Pj4gK8KgwqDCoCBzZWxlY3QgUENJX1Ay
UERNQV9DT1JFDQo+Pj4+Pj4gwqDCoMKgwqDCoCBzZWxlY3QgR0VORVJJQ19BTExPQ0FUT1INCj4+
Pj4+PiDCoMKgwqDCoMKgIHNlbGVjdCBORUVEX1NHX0RNQV9GTEFHUw0KPj4+Pj4+IMKgwqDCoMKg
wqAgaGVscA0KPj4+Pj4NCj4+Pj4+IE5pdDogRGlkIHdlIGRyb3AgZGVwZW5kcyBvbiA2NEJJVCBp
bnRlbnRpb25hbGx5IGhlcmU/IEkgZ3Vlc3MgdGhlIGZ1bGwNCj4+Pj4+IFBDSV9QMlBETUEgc3Rh
Y2sgc3RpbGwgc2VsZWN0cyBORUVEX1NHX0RNQV9GTEFHUz8gSUlSQywNCj4+Pj4+IE5FRURfU0df
RE1BX0ZMQUdTIGRvZXNuJ3Qgc2VsZWN0IDY0QklUPw0KPj4+Pg0KPj4+PiBzZWVtcyB0aGF0IGNv
bW1lbnQgaXMgc3RhbGUuIEFjY29yZGluZyB0byB0aGUgY29tbWl0IG1zZzoNCj4+Pj4NCj4+Pj4g
IiBpdCB3b3VsZCBtYWtlIHZmaW8tcGNpIG9ubHkgYXZhaWxhYmxlIGlmIENPTkZJR19aT05FX0RF
VklDRSBpcw0KPj4+PiBwcmVzZW50IChlLmcuIDY0LWJpdCBzeXN0ZW1zKSwgIg0KPj4+Pg0KPj4+
PiBzbyBpdCBzb3VuZHMgYSByZWR1bmRhbnQgZGVwZW5kZW5jeSBoZW5jZSBpcyByZW1vdmVkLg0K
Pj4+DQo+Pj4gVGhpcyB3YXMgaW50ZW50aW9uYWwuwqAgSW4gcHJhY3RpY2UgdGhlcmUgaXMgc3Rp
bGwgYSBkZXBlbmRlbmN5IG9uIDY0QklUDQo+Pj4gZm9yIFBDSV9QMlBETUEsIGJ1dCBpdCBpcyBi
ZWNhdXNlIG9mIFpPTkVfREVWSUNFIChhbmQgbWVtIGhvdHBsdWcpLsKgIFRoZQ0KPj4+IGtleSBu
ZWVkIGlzIFBDSV9QMlBETUFfQ09SRSBpcyBhdmFpbGFibGUgb24gITY0QklUIGZvciBWRklPLCBi
dXQgSQ0KPj4+IGRpZG4ndCBzZWUgYSByZXF1aXJlbWVudCBmcm9tIFBDSV9QMlBETUEgaXRzZWxm
IChhcyBvcHBvc2VkIHRvIGl0cw0KPj4+IGRlcGVuZGVuY2llcykuwqAgSWYgSSd2ZSBtaXNzZWQg
b25lLCBJIGNhbiBwdXQgaXQgYmFjay4uLg0KPj4+DQo+Pj4gQnV0IE5FRURfU0dfRE1BX0ZMQUdT
IGRvZXNuJ3Qgc21lbGwgcXVpdGUgcmlnaHQ7IEkgc2VlIGZyb20gY29tbWVudHMgaW4NCj4+Pg0K
Pj4+IMKgwqAgYWYyODgwZWM0NDAyMSAoInNjYXR0ZXJsaXN0OiBhZGQgZGVkaWNhdGVkIGNvbmZp
ZyBmb3IgRE1BIGZsYWdzIikNCj4+Pg0KPj4+IHRoYXQgaXQgYXNzdW1lcyA2NEJJVCwgYnV0IGl0
IHNlZW1zIHRvIGJlIG1pc3NpbmcgYSAiZGVwZW5kcyBvbiA2NEJJVCIuDQo+Pj4NCj4+PiBSb2Jp
biAtLSBzaG91bGQgdGhhdCBkZXBlbmQgb24gNjRCSVQ/DQo+Pg0KPj4gSW5kZWVkLCBsb29raW5n
IGF0IHRoZSBoaXN0b3J5IGl0IHNlZW1zIGxpa2UgdGhhdCB3YXMgb3Zlcmxvb2tlZCwgYnV0IGl0
DQo+PiB3b3JrZWQgb3V0IGF0IHRoZSB0aW1lIHNpbmNlIHRoZSBvbmx5IHNlbGVjdG9yIG9mIE5F
RURfU0dfRE1BX0ZMQUdTIHdhcw0KPj4gUENJX1AyUERNQSBhcyB5b3Ugc2F5LiBJZiB3ZSdyZSBu
b3cgZ2VuZXJhbGlzaW5nIHRoZW4gbW92aW5nIHRoZQ0KPj4gZXhwbGljaXQgNjRCSVQgZGVwZW5k
ZW5jeSB0byBORUVEX1NHX0RNQV9GTEFHUyBpdHNlbGYgc291bmRzIGxpa2UgdGhlDQo+PiByaWdo
dCB0aGluZyB0byBkby4NCj4gDQo+IENoZWVycyBmb3IgY29uZmlybWluZy4gIEknbGwgc2VuZCBh
IHBhdGNoIHNlcGFyYXRlIHRvIHRoaXMgc2VyaWVzIChzaW5jZQ0KPiB0aGUgZGVwcyB3b3JrIG91
dCBPSyBmb3IgUENJX1AyUERNQSBmb3IgdGhlIHJlYXNvbnMgbWVudGlvbmVkKS4NCg0KSSB0aGlu
ayB3ZSB3ZXJlIHdyb25nLCBORUVEX1NHX0RNQV9GTEFHUyBkb2Vzbid0IF9uZWVkXyA2NEJJVC4N
Cg0KT3RoZXIgdGhhbiBQMlBETUEsIHRoZSBvdGhlciBjb25zdW1lciBvZiBORUVEX1NHX0RNQV9G
TEFHUyBpcyBJT01NVV9ETUEsDQphbmQgdHVybnMgb3V0IGlmIG9uZSBidWlsZHMgYW4gaTM4NiBr
ZXJuZWwgd2l0aCBJTlRFTF9JT01NVSAob3Igc29tZQ0Kb3RoZXIgY29uZmlncywgbGlrZSBYZW4p
IHRoZW4gTkVFRF9TR19ETUFfRkxBR1MgaXMgZW5hYmxlZCBvbiAzMi1iaXQNCmJ1aWxkcyB0b28u
DQoNClRoZSBzY2F0dGVybGlzdC5oIGNvbW1lbnRzIGFmMjg4MGVjNDQwMjEgdG91Y2hlZCBhcmUg
anVzdCBzYXlpbmcgdGhhdA0KX3NpbmNlXyBQMlBETUEgZGVwZW5kcyBvbiA2NEJJVCwgdGhlcmUg
X2lzXyBjaXJjdW1zdGFudGlhbCBwYWRkaW5nIHNvDQpsZXQncyB1c2UgaXQgZm9yIGZsYWdzLiAg
SXQgZG9lc24ndCByZXF1aXJlIDY0QklULg0KDQpGb3IgZXhhbXBsZSBzdHJ1Y3Qgc2NhdHRlcmxp
c3QgaXNuJ3QgcHVzaGVkIG92ZXIgc29tZSBzcGVjaWFsIChlLmcuDQpwb3dlci1vZi10d28pIHNp
emUgd2hlbiBORUVEX1NHX0RNQV9GTEFHUyBpcyBlbmFibGVkIG9uIDMyLWJpdDsgSSBjYW4ndA0K
ZmluZCBhIHJlYXNvbiBpdCBzaG91bGQgYmUgcHJldmVudGVkIG9uIDMyLWJpdCBidWlsZHMgKGFu
ZCBmb3VuZCBjYXNlcw0KYWJvdmUgaW4gd2hpY2ggaXQgaXMgYWxyZWFkeSBlbmFibGVkIGluIHRo
ZW0pLg0KDQpTbyBJIHdvbid0IGNoYW5nZSB0aGUgTkVFRF9TR19ETUFfRkxBR1MgZGVwZW5kZW5j
aWVzIGFmdGVyIGFsbC4gIFNvcnJ5DQpmb3IgdGhlIG5vaXNlIC0tIGFzIGV2ZXIgaWYgSSd2ZSBt
aXNzZWQgc29tZXRoaW5nIGRvIHBsZWFzZSBleHBsYWluLg0KDQooSSdsbCBjb250aW51ZSB3aXRo
IHJlbW92aW5nIHRoZSBQMlBETUEgZGVwZW5kZW5jeSBvbiA2NEJJVCBiZWNhdXNlIGl0DQpzZWVt
cyBQMlBETUEncyBkZXBlbmRlbmNpZXMgcmVseSBvbiA2NEJJVCwgdGhvdWdoIFAyUERNQSBpdHNl
bGYgZG9lc24ndC4pDQoNClRoYW5rcywNCg0KDQpNYXR0DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
