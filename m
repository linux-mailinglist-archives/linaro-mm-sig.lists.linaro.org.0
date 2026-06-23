Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PB9jE5StOmocDggAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 18:00:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D047F6B884A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 18:00:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ozlabs.org header.s=201707 header.b=oBIn3DCB;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ozlabs.org (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB7DF3F91D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2026 16:00:18 +0000 (UTC)
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	by lists.linaro.org (Postfix) with ESMTPS id 55BB23F91D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 16:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ozlabs.org;
	s=201707; t=1782230405;
	bh=QyccYdnY6i0pwVZFs1mkkJ0flxezhHTsxJPLPJYO6+8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oBIn3DCBBcIDcErjiM5VxTBeWJBne9g+g02xQbbcOvnY9/Pmc/SSDrA+20e0JnrZy
	 JnfweqAHrHWnF5NBgFSeBOkWhcPEmn+mY1T3GOsr4oybIX5o+KUviHpT0GW+EX64Ru
	 Miq0JU//KwSCapVJBEuKHXF42Rgnd3LVavXGM8GdliaAuRzT3jbj2yhbg1nzbws9Ko
	 ZLLjaRc0XoO5mrmkWX+mpmVVtHBThU89oMkBitI8LVirojvXwjTR6PnahriGUg/RE3
	 Eu29Jm8ARiO2If5qWwb+7TrRa6ohd5HE3HVWq1IAWNDGAlVkvSeeawx53bEINKS1Ca
	 ydEYIlMZPO2Qg==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4gl8sR5r0Wz4w9R;
	Wed, 24 Jun 2026 01:59:55 +1000 (AEST)
Message-ID: <88a9ebaa-8637-4290-b299-acae0e3065f8@ozlabs.org>
Date: Tue, 23 Jun 2026 16:59:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Robin Murphy <robin.murphy@arm.com>, "Tian, Kevin"
 <kevin.tian@intel.com>, Pranjal Shrivastava <praan@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-2-matt@ozlabs.org> <aisAc1HRn2Wa4F9p@google.com>
 <DM6PR11MB36904ED2E1D2C646644F67668C182@DM6PR11MB3690.namprd11.prod.outlook.com>
 <0dfadf98-a904-4e6a-b078-5caf27bc7922@ozlabs.org>
 <81a9d212-996e-42e1-aabf-b120a13e94c3@arm.com>
From: Matt Evans <matt@ozlabs.org>
In-Reply-To: <81a9d212-996e-42e1-aabf-b120a13e94c3@arm.com>
X-Spamd-Bar: ---
Message-ID-Hash: 6T5HK3BTYIYZSM372WBBKVPGR7EJALRU
X-Message-ID-Hash: 6T5HK3BTYIYZSM372WBBKVPGR7EJALRU
X-MailFrom: matt@ozlabs.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6T5HK3BTYIYZSM372WBBKVPGR7EJALRU/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[ozlabs.org : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robin.murphy@arm.com,m:kevin.tian@intel.com,m:praan@google.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@ozlabs.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ozlabs.org:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,ozlabs.org:mid,ozlabs.org:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D047F6B884A

SGV5YSBSb2JpbiwNCg0KT24gMjMvMDYvMjAyNiAxNjo0OCwgUm9iaW4gTXVycGh5IHdyb3RlOg0K
PiBPbiAxMi8wNi8yMDI2IDM6MzEgcG0sIE1hdHQgRXZhbnMgd3JvdGU6DQo+PiBIaSBLZXZpbiwg
UHJhbmphbCwgKCtSb2JpbiwgaGkhKQ0KPiANCj4gT2ggaGV5IHRoZXJlISA6KQ0KPiANCj4+IE9u
IDEyLzA2LzIwMjYgMDQ6MzksIFRpYW4sIEtldmluIHdyb3RlOg0KPj4+PiBGcm9tOiBQcmFuamFs
IFNocml2YXN0YXZhIDxwcmFhbkBnb29nbGUuY29tPg0KPj4+PiBTZW50OiBGcmlkYXksIEp1bmUg
MTIsIDIwMjYgMjozOCBBTQ0KPj4+Pg0KPj4+PiBPbiBXZWQsIEp1biAxMCwgMjAyNiBhdCAwNDo0
MzoxNVBNICswMTAwLCBNYXR0IEV2YW5zIHdyb3RlOg0KPj4+Pj4gLS0tIGEvZHJpdmVycy9wY2kv
S2NvbmZpZw0KPj4+Pj4gKysrIGIvZHJpdmVycy9wY2kvS2NvbmZpZw0KPj4+Pj4gQEAgLTIwNiwx
MSArMjA2LDcgQEAgY29uZmlnIFBDSUVfVFBIDQo+Pj4+PiDCoCBjb25maWcgUENJX1AyUERNQQ0K
Pj4+Pj4gwqDCoMKgwqDCoCBib29sICJQQ0kgcGVlci10by1wZWVyIHRyYW5zZmVyIHN1cHBvcnQi
DQo+Pj4+PiDCoMKgwqDCoMKgIGRlcGVuZHMgb24gWk9ORV9ERVZJQ0UNCj4+Pj4+IC3CoMKgwqAg
Iw0KPj4+Pj4gLcKgwqDCoCAjIFRoZSBuZWVkIGZvciB0aGUgc2NhdHRlcmxpc3QgRE1BIGJ1cyBh
ZGRyZXNzIGZsYWcgbWVhbnMgUENJDQo+Pj4+IFAyUERNQQ0KPj4+Pj4gLcKgwqDCoCAjIHJlcXVp
cmVzIDY0Yml0DQo+Pj4+PiAtwqDCoMKgICMNCj4+Pj4+IC3CoMKgwqAgZGVwZW5kcyBvbiA2NEJJ
VA0KPj4+Pj4gK8KgwqDCoCBzZWxlY3QgUENJX1AyUERNQV9DT1JFDQo+Pj4+PiDCoMKgwqDCoMKg
IHNlbGVjdCBHRU5FUklDX0FMTE9DQVRPUg0KPj4+Pj4gwqDCoMKgwqDCoCBzZWxlY3QgTkVFRF9T
R19ETUFfRkxBR1MNCj4+Pj4+IMKgwqDCoMKgwqAgaGVscA0KPj4+Pg0KPj4+PiBOaXQ6IERpZCB3
ZSBkcm9wIGRlcGVuZHMgb24gNjRCSVQgaW50ZW50aW9uYWxseSBoZXJlPyBJIGd1ZXNzIHRoZSBm
dWxsDQo+Pj4+IFBDSV9QMlBETUEgc3RhY2sgc3RpbGwgc2VsZWN0cyBORUVEX1NHX0RNQV9GTEFH
Uz8gSUlSQywNCj4+Pj4gTkVFRF9TR19ETUFfRkxBR1MgZG9lc24ndCBzZWxlY3QgNjRCSVQ/DQo+
Pj4NCj4+PiBzZWVtcyB0aGF0IGNvbW1lbnQgaXMgc3RhbGUuIEFjY29yZGluZyB0byB0aGUgY29t
bWl0IG1zZzoNCj4+Pg0KPj4+ICIgaXQgd291bGQgbWFrZSB2ZmlvLXBjaSBvbmx5IGF2YWlsYWJs
ZSBpZiBDT05GSUdfWk9ORV9ERVZJQ0UgaXMNCj4+PiBwcmVzZW50IChlLmcuIDY0LWJpdCBzeXN0
ZW1zKSwgIg0KPj4+DQo+Pj4gc28gaXQgc291bmRzIGEgcmVkdW5kYW50IGRlcGVuZGVuY3kgaGVu
Y2UgaXMgcmVtb3ZlZC4NCj4+DQo+PiBUaGlzIHdhcyBpbnRlbnRpb25hbC7CoCBJbiBwcmFjdGlj
ZSB0aGVyZSBpcyBzdGlsbCBhIGRlcGVuZGVuY3kgb24gNjRCSVQNCj4+IGZvciBQQ0lfUDJQRE1B
LCBidXQgaXQgaXMgYmVjYXVzZSBvZiBaT05FX0RFVklDRSAoYW5kIG1lbSBob3RwbHVnKS7CoCBU
aGUNCj4+IGtleSBuZWVkIGlzIFBDSV9QMlBETUFfQ09SRSBpcyBhdmFpbGFibGUgb24gITY0QklU
IGZvciBWRklPLCBidXQgSQ0KPj4gZGlkbid0IHNlZSBhIHJlcXVpcmVtZW50IGZyb20gUENJX1Ay
UERNQSBpdHNlbGYgKGFzIG9wcG9zZWQgdG8gaXRzDQo+PiBkZXBlbmRlbmNpZXMpLsKgIElmIEkn
dmUgbWlzc2VkIG9uZSwgSSBjYW4gcHV0IGl0IGJhY2suLi4NCj4+DQo+PiBCdXQgTkVFRF9TR19E
TUFfRkxBR1MgZG9lc24ndCBzbWVsbCBxdWl0ZSByaWdodDsgSSBzZWUgZnJvbSBjb21tZW50cyBp
bg0KPj4NCj4+IMKgwqAgYWYyODgwZWM0NDAyMSAoInNjYXR0ZXJsaXN0OiBhZGQgZGVkaWNhdGVk
IGNvbmZpZyBmb3IgRE1BIGZsYWdzIikNCj4+DQo+PiB0aGF0IGl0IGFzc3VtZXMgNjRCSVQsIGJ1
dCBpdCBzZWVtcyB0byBiZSBtaXNzaW5nIGEgImRlcGVuZHMgb24gNjRCSVQiLg0KPj4NCj4+IFJv
YmluIC0tIHNob3VsZCB0aGF0IGRlcGVuZCBvbiA2NEJJVD8NCj4gDQo+IEluZGVlZCwgbG9va2lu
ZyBhdCB0aGUgaGlzdG9yeSBpdCBzZWVtcyBsaWtlIHRoYXQgd2FzIG92ZXJsb29rZWQsIGJ1dCBp
dA0KPiB3b3JrZWQgb3V0IGF0IHRoZSB0aW1lIHNpbmNlIHRoZSBvbmx5IHNlbGVjdG9yIG9mIE5F
RURfU0dfRE1BX0ZMQUdTIHdhcw0KPiBQQ0lfUDJQRE1BIGFzIHlvdSBzYXkuIElmIHdlJ3JlIG5v
dyBnZW5lcmFsaXNpbmcgdGhlbiBtb3ZpbmcgdGhlDQo+IGV4cGxpY2l0IDY0QklUIGRlcGVuZGVu
Y3kgdG8gTkVFRF9TR19ETUFfRkxBR1MgaXRzZWxmIHNvdW5kcyBsaWtlIHRoZQ0KPiByaWdodCB0
aGluZyB0byBkby4NCg0KQ2hlZXJzIGZvciBjb25maXJtaW5nLiAgSSdsbCBzZW5kIGEgcGF0Y2gg
c2VwYXJhdGUgdG8gdGhpcyBzZXJpZXMgKHNpbmNlDQp0aGUgZGVwcyB3b3JrIG91dCBPSyBmb3Ig
UENJX1AyUERNQSBmb3IgdGhlIHJlYXNvbnMgbWVudGlvbmVkKS4NCg0KVGEsDQoNCk1hdHQNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
