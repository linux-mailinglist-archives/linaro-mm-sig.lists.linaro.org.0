Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hOCpKqrCO2qFcQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 13:42:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C766BDBCB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 13:42:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=arm.com header.s=foss header.b="Vfw1P4/4";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=arm.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED4D540A6C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 11:42:32 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id C2B43401C2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 11:42:22 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9855215A1;
	Wed, 24 Jun 2026 04:42:17 -0700 (PDT)
Received: from [10.2.212.23] (e121345-lin.cambridge.arm.com [10.2.212.23])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 263A93F632;
	Wed, 24 Jun 2026 04:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1782301342; bh=riMPr912UFIPMnkd77dj4O/2qenW/y+bhggkPiDqP2Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Vfw1P4/4IoI5cqXw4yBJZNOTaVkYRmMS6+C6sbeyrmmGnGWWzzWff8oMzVCkvRHpG
	 /WfA6cZgcjrIZBg4la2twn3GyGmuyUH3yH5HcauiNCm7UhB5ttO+fuGOsQ/50nUI2x
	 XbN64JsbCSXXQ+WSm4c6Fyy4/VKP2cHszV2Zyuew=
Message-ID: <b49a3107-68be-4f7f-8c66-0f78206c7359@arm.com>
Date: Wed, 24 Jun 2026 12:42:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Evans <matt@ozlabs.org>, "Tian, Kevin" <kevin.tian@intel.com>,
 Pranjal Shrivastava <praan@google.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-2-matt@ozlabs.org> <aisAc1HRn2Wa4F9p@google.com>
 <DM6PR11MB36904ED2E1D2C646644F67668C182@DM6PR11MB3690.namprd11.prod.outlook.com>
 <0dfadf98-a904-4e6a-b078-5caf27bc7922@ozlabs.org>
 <81a9d212-996e-42e1-aabf-b120a13e94c3@arm.com>
 <88a9ebaa-8637-4290-b299-acae0e3065f8@ozlabs.org>
 <feaefa41-9f67-4d4f-a3e0-282dca41f3eb@ozlabs.org>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <feaefa41-9f67-4d4f-a3e0-282dca41f3eb@ozlabs.org>
X-Spamd-Bar: ---
Message-ID-Hash: TWEVSLHMPL5RR27QCXM56Y2ZLOYEDIXI
X-Message-ID-Hash: TWEVSLHMPL5RR27QCXM56Y2ZLOYEDIXI
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TWEVSLHMPL5RR27QCXM56Y2ZLOYEDIXI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:kevin.tian@intel.com,m:praan@google.com,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER(0.00)[robin.murphy@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[arm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robin.murphy@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:mid,arm.com:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21C766BDBCB

T24gMjMvMDYvMjAyNiA2OjQ3IHBtLCBNYXR0IEV2YW5zIHdyb3RlOg0KPiBIaSBSb2JpbiwgbWUs
DQo+IA0KPiBPbiAyMy8wNi8yMDI2IDE2OjU5LCBNYXR0IEV2YW5zIHdyb3RlOg0KPj4gSGV5YSBS
b2JpbiwNCj4+DQo+PiBPbiAyMy8wNi8yMDI2IDE2OjQ4LCBSb2JpbiBNdXJwaHkgd3JvdGU6DQo+
Pj4gT24gMTIvMDYvMjAyNiAzOjMxIHBtLCBNYXR0IEV2YW5zIHdyb3RlOg0KPj4+PiBIaSBLZXZp
biwgUHJhbmphbCwgKCtSb2JpbiwgaGkhKQ0KPj4+DQo+Pj4gT2ggaGV5IHRoZXJlISA6KQ0KPj4+
DQo+Pj4+IE9uIDEyLzA2LzIwMjYgMDQ6MzksIFRpYW4sIEtldmluIHdyb3RlOg0KPj4+Pj4+IEZy
b206IFByYW5qYWwgU2hyaXZhc3RhdmEgPHByYWFuQGdvb2dsZS5jb20+DQo+Pj4+Pj4gU2VudDog
RnJpZGF5LCBKdW5lIDEyLCAyMDI2IDI6MzggQU0NCj4+Pj4+Pg0KPj4+Pj4+IE9uIFdlZCwgSnVu
IDEwLCAyMDI2IGF0IDA0OjQzOjE1UE0gKzAxMDAsIE1hdHQgRXZhbnMgd3JvdGU6DQo+Pj4+Pj4+
IC0tLSBhL2RyaXZlcnMvcGNpL0tjb25maWcNCj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9wY2kvS2Nv
bmZpZw0KPj4+Pj4+PiBAQCAtMjA2LDExICsyMDYsNyBAQCBjb25maWcgUENJRV9UUEgNCj4+Pj4+
Pj4gIMKgIGNvbmZpZyBQQ0lfUDJQRE1BDQo+Pj4+Pj4+ICDCoMKgwqDCoMKgIGJvb2wgIlBDSSBw
ZWVyLXRvLXBlZXIgdHJhbnNmZXIgc3VwcG9ydCINCj4+Pj4+Pj4gIMKgwqDCoMKgwqAgZGVwZW5k
cyBvbiBaT05FX0RFVklDRQ0KPj4+Pj4+PiAtwqDCoMKgICMNCj4+Pj4+Pj4gLcKgwqDCoCAjIFRo
ZSBuZWVkIGZvciB0aGUgc2NhdHRlcmxpc3QgRE1BIGJ1cyBhZGRyZXNzIGZsYWcgbWVhbnMgUENJ
DQo+Pj4+Pj4gUDJQRE1BDQo+Pj4+Pj4+IC3CoMKgwqAgIyByZXF1aXJlcyA2NGJpdA0KPj4+Pj4+
PiAtwqDCoMKgICMNCj4+Pj4+Pj4gLcKgwqDCoCBkZXBlbmRzIG9uIDY0QklUDQo+Pj4+Pj4+ICvC
oMKgwqAgc2VsZWN0IFBDSV9QMlBETUFfQ09SRQ0KPj4+Pj4+PiAgwqDCoMKgwqDCoCBzZWxlY3Qg
R0VORVJJQ19BTExPQ0FUT1INCj4+Pj4+Pj4gIMKgwqDCoMKgwqAgc2VsZWN0IE5FRURfU0dfRE1B
X0ZMQUdTDQo+Pj4+Pj4+ICDCoMKgwqDCoMKgIGhlbHANCj4+Pj4+Pg0KPj4+Pj4+IE5pdDogRGlk
IHdlIGRyb3AgZGVwZW5kcyBvbiA2NEJJVCBpbnRlbnRpb25hbGx5IGhlcmU/IEkgZ3Vlc3MgdGhl
IGZ1bGwNCj4+Pj4+PiBQQ0lfUDJQRE1BIHN0YWNrIHN0aWxsIHNlbGVjdHMgTkVFRF9TR19ETUFf
RkxBR1M/IElJUkMsDQo+Pj4+Pj4gTkVFRF9TR19ETUFfRkxBR1MgZG9lc24ndCBzZWxlY3QgNjRC
SVQ/DQo+Pj4+Pg0KPj4+Pj4gc2VlbXMgdGhhdCBjb21tZW50IGlzIHN0YWxlLiBBY2NvcmRpbmcg
dG8gdGhlIGNvbW1pdCBtc2c6DQo+Pj4+Pg0KPj4+Pj4gIiBpdCB3b3VsZCBtYWtlIHZmaW8tcGNp
IG9ubHkgYXZhaWxhYmxlIGlmIENPTkZJR19aT05FX0RFVklDRSBpcw0KPj4+Pj4gcHJlc2VudCAo
ZS5nLiA2NC1iaXQgc3lzdGVtcyksICINCj4+Pj4+DQo+Pj4+PiBzbyBpdCBzb3VuZHMgYSByZWR1
bmRhbnQgZGVwZW5kZW5jeSBoZW5jZSBpcyByZW1vdmVkLg0KPj4+Pg0KPj4+PiBUaGlzIHdhcyBp
bnRlbnRpb25hbC7CoCBJbiBwcmFjdGljZSB0aGVyZSBpcyBzdGlsbCBhIGRlcGVuZGVuY3kgb24g
NjRCSVQNCj4+Pj4gZm9yIFBDSV9QMlBETUEsIGJ1dCBpdCBpcyBiZWNhdXNlIG9mIFpPTkVfREVW
SUNFIChhbmQgbWVtIGhvdHBsdWcpLsKgIFRoZQ0KPj4+PiBrZXkgbmVlZCBpcyBQQ0lfUDJQRE1B
X0NPUkUgaXMgYXZhaWxhYmxlIG9uICE2NEJJVCBmb3IgVkZJTywgYnV0IEkNCj4+Pj4gZGlkbid0
IHNlZSBhIHJlcXVpcmVtZW50IGZyb20gUENJX1AyUERNQSBpdHNlbGYgKGFzIG9wcG9zZWQgdG8g
aXRzDQo+Pj4+IGRlcGVuZGVuY2llcykuwqAgSWYgSSd2ZSBtaXNzZWQgb25lLCBJIGNhbiBwdXQg
aXQgYmFjay4uLg0KPj4+Pg0KPj4+PiBCdXQgTkVFRF9TR19ETUFfRkxBR1MgZG9lc24ndCBzbWVs
bCBxdWl0ZSByaWdodDsgSSBzZWUgZnJvbSBjb21tZW50cyBpbg0KPj4+Pg0KPj4+PiAgwqDCoCBh
ZjI4ODBlYzQ0MDIxICgic2NhdHRlcmxpc3Q6IGFkZCBkZWRpY2F0ZWQgY29uZmlnIGZvciBETUEg
ZmxhZ3MiKQ0KPj4+Pg0KPj4+PiB0aGF0IGl0IGFzc3VtZXMgNjRCSVQsIGJ1dCBpdCBzZWVtcyB0
byBiZSBtaXNzaW5nIGEgImRlcGVuZHMgb24gNjRCSVQiLg0KPj4+Pg0KPj4+PiBSb2JpbiAtLSBz
aG91bGQgdGhhdCBkZXBlbmQgb24gNjRCSVQ/DQo+Pj4NCj4+PiBJbmRlZWQsIGxvb2tpbmcgYXQg
dGhlIGhpc3RvcnkgaXQgc2VlbXMgbGlrZSB0aGF0IHdhcyBvdmVybG9va2VkLCBidXQgaXQNCj4+
PiB3b3JrZWQgb3V0IGF0IHRoZSB0aW1lIHNpbmNlIHRoZSBvbmx5IHNlbGVjdG9yIG9mIE5FRURf
U0dfRE1BX0ZMQUdTIHdhcw0KPj4+IFBDSV9QMlBETUEgYXMgeW91IHNheS4gSWYgd2UncmUgbm93
IGdlbmVyYWxpc2luZyB0aGVuIG1vdmluZyB0aGUNCj4+PiBleHBsaWNpdCA2NEJJVCBkZXBlbmRl
bmN5IHRvIE5FRURfU0dfRE1BX0ZMQUdTIGl0c2VsZiBzb3VuZHMgbGlrZSB0aGUNCj4+PiByaWdo
dCB0aGluZyB0byBkby4NCj4+DQo+PiBDaGVlcnMgZm9yIGNvbmZpcm1pbmcuICBJJ2xsIHNlbmQg
YSBwYXRjaCBzZXBhcmF0ZSB0byB0aGlzIHNlcmllcyAoc2luY2UNCj4+IHRoZSBkZXBzIHdvcmsg
b3V0IE9LIGZvciBQQ0lfUDJQRE1BIGZvciB0aGUgcmVhc29ucyBtZW50aW9uZWQpLg0KPiANCj4g
SSB0aGluayB3ZSB3ZXJlIHdyb25nLCBORUVEX1NHX0RNQV9GTEFHUyBkb2Vzbid0IF9uZWVkXyA2
NEJJVC4NCj4gDQo+IE90aGVyIHRoYW4gUDJQRE1BLCB0aGUgb3RoZXIgY29uc3VtZXIgb2YgTkVF
RF9TR19ETUFfRkxBR1MgaXMgSU9NTVVfRE1BLA0KPiBhbmQgdHVybnMgb3V0IGlmIG9uZSBidWls
ZHMgYW4gaTM4NiBrZXJuZWwgd2l0aCBJTlRFTF9JT01NVSAob3Igc29tZQ0KPiBvdGhlciBjb25m
aWdzLCBsaWtlIFhlbikgdGhlbiBORUVEX1NHX0RNQV9GTEFHUyBpcyBlbmFibGVkIG9uIDMyLWJp
dA0KPiBidWlsZHMgdG9vLg0KPiANCj4gVGhlIHNjYXR0ZXJsaXN0LmggY29tbWVudHMgYWYyODgw
ZWM0NDAyMSB0b3VjaGVkIGFyZSBqdXN0IHNheWluZyB0aGF0DQo+IF9zaW5jZV8gUDJQRE1BIGRl
cGVuZHMgb24gNjRCSVQsIHRoZXJlIF9pc18gY2lyY3Vtc3RhbnRpYWwgcGFkZGluZyBzbw0KPiBs
ZXQncyB1c2UgaXQgZm9yIGZsYWdzLiAgSXQgZG9lc24ndCByZXF1aXJlIDY0QklULg0KPiANCj4g
Rm9yIGV4YW1wbGUgc3RydWN0IHNjYXR0ZXJsaXN0IGlzbid0IHB1c2hlZCBvdmVyIHNvbWUgc3Bl
Y2lhbCAoZS5nLg0KPiBwb3dlci1vZi10d28pIHNpemUgd2hlbiBORUVEX1NHX0RNQV9GTEFHUyBp
cyBlbmFibGVkIG9uIDMyLWJpdDsgSSBjYW4ndA0KPiBmaW5kIGEgcmVhc29uIGl0IHNob3VsZCBi
ZSBwcmV2ZW50ZWQgb24gMzItYml0IGJ1aWxkcyAoYW5kIGZvdW5kIGNhc2VzDQo+IGFib3ZlIGlu
IHdoaWNoIGl0IGlzIGFscmVhZHkgZW5hYmxlZCBpbiB0aGVtKS4NCj4gDQo+IFNvIEkgd29uJ3Qg
Y2hhbmdlIHRoZSBORUVEX1NHX0RNQV9GTEFHUyBkZXBlbmRlbmNpZXMgYWZ0ZXIgYWxsLiAgU29y
cnkNCj4gZm9yIHRoZSBub2lzZSAtLSBhcyBldmVyIGlmIEkndmUgbWlzc2VkIHNvbWV0aGluZyBk
byBwbGVhc2UgZXhwbGFpbi4NCg0KQWgsIEkgd2FzIGFsc28gdGFraW5nIHRoZSBjb21tZW50cyBh
dCBmYWNlIHZhbHVlLCBwbHVzIGNvbmZsYXRpbmcgdGhlIA0KbWVtb3J5IG9mIHRoZSBvcmlnaW5h
bCBzZXJpZXMgd2hpY2ggZGlkIHN0YXNoIHRoZSBQMlAgZmxhZyBpbiBiaXQgMiBvZiANCnRoZSBw
YWdlX2xpbmsgcG9pbnRlciAtIGluIG15IGRlZmVuY2UsIGl0J3MgZmFyIHRvbyBob3QgZm9yIG15
IGJyYWluIHRvIA0Kd29yayBwcm9wZXJseSA6KQ0KDQpEb2luZyBhIGJpdCBtb3JlIGFyY2hhZW9s
b2d5LCB0aGUgc2VwYXJhdGUgZG1hX2ZsYWdzIGZpZWxkIHdhcyBhIGxhdGUgDQpzdWdnZXN0aW9u
IGp1c3QgYmVmb3JlIHRoZSBzZXJpZXMgd2FzIG1lcmdlZCwgc28gSSBndWVzcyBpdCdzIGFjdHVh
bGx5IA0KanVzdCB0aGF0IHRoZSBjb21tZW50cyBuZXZlciBnb3QgdXBkYXRlZCBhY2NvcmRpbmds
eS4gU29ycnkgZm9yIA0KcGVycGV0dWF0aW5nIHRoZSBjb25mdXNpb24hDQoNCkNoZWVycywNClJv
YmluLg0KDQo+IChJJ2xsIGNvbnRpbnVlIHdpdGggcmVtb3ZpbmcgdGhlIFAyUERNQSBkZXBlbmRl
bmN5IG9uIDY0QklUIGJlY2F1c2UgaXQNCj4gc2VlbXMgUDJQRE1BJ3MgZGVwZW5kZW5jaWVzIHJl
bHkgb24gNjRCSVQsIHRob3VnaCBQMlBETUEgaXRzZWxmIGRvZXNuJ3QuKQ0KPiANCj4gVGhhbmtz
LA0KPiANCj4gDQo+IE1hdHQNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
