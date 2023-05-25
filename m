Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 610B47103DD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 May 2023 06:09:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03C2943C5B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 May 2023 04:09:33 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.102])
	by lists.linaro.org (Postfix) with ESMTP id A95273E945
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 May 2023 04:09:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.102 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.31:40046.373704923
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.31])
	by 189.cn (HERMES) with SMTP id 39E3D100249;
	Thu, 25 May 2023 12:09:21 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-xp9j7 with ESMTP id c566e9566e63438fbeb66c42cff385ec for kernel@xen0n.name;
	Thu, 25 May 2023 12:09:25 CST
X-Transaction-ID: c566e9566e63438fbeb66c42cff385ec
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <04ede1b1-9757-5181-eec7-658c1df0480e@189.cn>
Date: Thu, 25 May 2023 12:09:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: WANG Xuerui <kernel@xen0n.name>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
References: <20230520105718.325819-1-15330273260@189.cn>
 <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
 <e7f911cc-6588-bc0f-8e1e-759260f5187a@189.cn>
 <ed795dc0-823a-f3d8-9e70-1cf33c0de7f0@xen0n.name>
 <ac2fde55-c770-fbb5-844d-50fb38dd90be@189.cn>
 <331e7baa-a83b-b0c9-37f7-0e8e39187df4@xen0n.name>
 <5ae49b7a-b8d2-a822-65bc-6a894d2b1b4e@189.cn>
 <0e5e4a4b-1426-ffae-e958-cf8f9aece166@xen0n.name>
 <69edaf49-359a-229c-c8b4-8aa3af622008@189.cn>
 <ece7821e-c4bb-f2b7-3b1d-dacc04729530@xen0n.name>
Content-Language: en-US
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <ece7821e-c4bb-f2b7-3b1d-dacc04729530@xen0n.name>
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[xen0n.name,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	NEURAL_HAM(-0.00)[-0.433];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	FREEMAIL_FROM(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A95273E945
X-Spamd-Bar: -----
Message-ID-Hash: 7IF3LQ4QUDCKVNLOHF2WAMNKX7J45ZSP
X-Message-ID-Hash: 7IF3LQ4QUDCKVNLOHF2WAMNKX7J45ZSP
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7IF3LQ4QUDCKVNLOHF2WAMNKX7J45ZSP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNS8yMyAwMDo0MCwgV0FORyBYdWVydWkgd3JvdGU6DQo+IE9uIDUvMjIv
MjMgMjE6MTMsIFN1aSBKaW5nZmVuZyB3cm90ZToNCj4+IEhpLA0KPj4NCj4+IE9uIDIwMjMvNS8y
MiAxODoyNSwgV0FORyBYdWVydWkgd3JvdGU6DQo+Pj4gT24gMjAyMy81LzIyIDE4OjE3LCBTdWkg
SmluZ2Zlbmcgd3JvdGU6DQo+Pj4+IEhpLA0KPj4+Pg0KPj4+PiBPbiAyMDIzLzUvMjIgMTg6MDUs
IFdBTkcgWHVlcnVpIHdyb3RlOg0KPj4+Pj4gT24gMjAyMy81LzIyIDE3OjQ5LCBTdWkgSmluZ2Zl
bmcgd3JvdGU6DQo+Pj4+Pj4gSGksDQo+Pj4+Pj4NCj4+Pj4+PiBPbiAyMDIzLzUvMjIgMTc6Mjgs
IFdBTkcgWHVlcnVpIHdyb3RlOg0KPj4+Pj4+PiBPbiAyMDIzLzUvMjIgMTc6MjUsIFN1aSBKaW5n
ZmVuZyB3cm90ZToNCj4+Pj4+Pj4+IEhpLA0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+IE9uIDIwMjMvNS8y
MSAyMDoyMSwgV0FORyBYdWVydWkgd3JvdGU6DQo+Pj4+Pj4+Pj4+ICsgKiBMUzNBNDAwMC9MUzNB
NTAwMC9MUzNBNjAwMCBDUFUsIHRoZXkgYXJlIGVxdWlwcGVkIHdpdGggDQo+Pj4+Pj4+Pj4+IG9u
LWJvYXJkIHZpZGVvIFJBTQ0KPj4+Pj4+Pj4+PiArICogdHlwaWNhbGx5LiBXaGlsZSBMUzJLMDUw
MC9MUzJLMTAwMC9MUzJLMjAwMCBhcmUgbG93IGNvc3QgDQo+Pj4+Pj4+Pj4+IFNvQ3Mgd2hpY2gg
c2hhcmUNCj4+Pj4+Pj4+Pj4gKyAqIHRoZSBzeXN0ZW0gUkFNIGFzIHZpZGVvIFJBTSwgdGhleSBk
b24ndCBoYXMgYSBkZWRpYWNhdGVkIA0KPj4+Pj4+Pj4+PiBWUkFNLg0KPj4+Pj4+Pj4+DQo+Pj4+
Pj4+Pj4gQ1BVIG1vZGVscyBhcmUgbm90IHR5cGljYWxseSBwcmVmaXhlZCB3aXRoICJMUyIsIHNv
ICJMb29uZ3NvbiANCj4+Pj4+Pj4+PiAzQTQwMDAvM0E1MDAwLzNBNjAwMCIuDQo+Pj4+Pj4+Pj4N
Cj4+Pj4+Pj4+IEhlcmUgaXMgYmVjYXVzZSB3aGVuIHlvdSBkbyBwcm9ncmFtbWluZywgdmFyaWFi
bGUgbmFtZSBzaG91bGQgDQo+Pj4+Pj4+PiBwcmVmaXggd2l0aCBsZXR0ZXJzLg0KPj4+Pj4+Pg0K
Pj4+Pj4+PiBDb21taXQgbWVzc2FnZXMsIGNvbW1lbnRzLCBhbmQgbG9nIG1lc3NhZ2VzIGV0Yy4g
YXJlIG5hdHVyYWwgDQo+Pj4+Pj4+IGxhbmd1YWdlLCBzbyBpdCdzIGJldHRlciB0byB0cmVhdCB0
aGVtIGRpZmZlcmVudGx5LiBObyBwcm9ibGVtIA0KPj4+Pj4+PiB0byBrZWVwIGNvZGUgYXMtaXMg
SU1PLg0KPj4+Pj4+Pg0KPj4+Pj4+IFRoZW4geW91IGdldCB0d28gbmFtZSBmb3IgYSBzaW5nbGUg
Y2hpcCzCoCB0YWtlwqAgTFM3QTEwMDAgYXMgYW4gDQo+Pj4+Pj4gZXhhbXBsZS4NCj4+Pj4+Pg0K
Pj4+Pj4+IFlvdSBuYW1lIGl0IGFzIExvb25nc29uIDdBMTAwMCBpbiBjb21taXQgbWVzc2FnZSzC
oCBhbmQgdGhlbiB5b3UgDQo+Pj4+Pj4gaGF2ZSB0byBkZWZpbmUgYW5vdGhlciBuYW1lIGluIHRo
ZSBjb2RlLMKgIHNheSBMUzdBMTAwMC4NCj4+Pj4+Pg0KPj4+Pj4+ICJMb29uZ3NvbiA3QTEwMDAi
IGlzIHRvbyBsb25nLMKgIG5vdCBhcyBjb21wYWN0IGFzIExTN0ExMDAwLg0KPj4+Pj4+DQo+Pj4+
Pj4gVGhpcyBhbHNvIGF2b2lkIGJpbmQgdGhlIGNvbXBhbnkgbmFtZSB0byBhIHNwZWNpZmljIHBy
b2R1Y3QsIA0KPj4+Pj4+IGJlY2F1c2UgYSBjb21wYW55IGNhbiBwcm9kdWNlIG1hbnkgcHJvZHVj
dC4NCj4+Pj4+DQo+Pj4+PiBOYWgsIHRoZSBleGlzdGluZyBjb252ZW50aW9uIGlzICJMUzdYeHh4
eCIgZm9yIGJyaWRnZXMgYW5kIA0KPj4+Pj4gIkxvb25nc29uIDNBeHh4eCIgZm9yIENQVXMgKFNv
Q3MgbGlrZSAySyBmYWxsIHVuZGVyIHRoaXMgY2F0ZWdvcnkgDQo+Pj4+PiB0b28pLiBJdCdzIGJl
dHRlciB0byBzdGljayB3aXRoIGV4aXN0aW5nIHByYWN0aWNlIHNvIGl0IHdvdWxkIGJlIA0KPj4+
Pj4gZmFtaWxpYXIgdG8gbG9uZy10aW1lIExvb25nc29uL0xvb25nQXJjaCBkZXZlbG9wZXJzLCBi
dXQgSSANCj4+Pj4+IHBlcnNvbmFsbHkgZG9uJ3QgdGhpbmsgaXQgd2lsbCBoYW1wZXIgdW5kZXJz
dGFuZGluZyBpZiB5b3UgZmVlbCANCj4+Pj4+IGxpa2UgZG9pbmcgb3RoZXJ3aXNlLg0KPj4+Pj4N
Cj4+Pj4gQ2FuIHlvdSBleHBsYWluIHdoeSBpdCBpcyBiZXR0ZXI/DQo+Pj4+DQo+Pj4+IGlzIGl0
IHRoYXQgdGhlIGFscmVhZHkgZXhpc3RpbmcgaXMgYmV0dGVyID8NCj4+Pg0KPj4+IEl0J3Mgbm90
IGFib3V0IHN1YmplY3RpdmUgcGVyY2VwdGlvbiBvZiAiYmV0dGVyIiBvciAid29yc2UiLCBidXQg
DQo+Pj4gYWJvdXQgdHJlZS13aWRlIGNvbnNpc3RlbmN5LCBhbmQgYWJvdXQgcmVkdWNpbmcgYW55
IHBvdGVudGlhbCANCj4+PiBjb25mdXNpb24gZnJvbSBuZXdjb21lcnMuIEkgcmVtZW1iZXIgSHVh
Y2FpIG9uY2UgcG9pbnRpbmcgb3V0IHRoYXQgDQo+Pj4gb3V0c2lkZXJzIHVzdWFsbHkgaGF2ZSBh
IGhhcmQgdGltZSByZW1lbWJlcmluZyAiMSwgMiwgYW5kIDMgYXJlIA0KPj4+IENQVXMsIHNvbWUg
MiBhcmUgU29DcywgNyBhcmUgYnJpZGdlIGNoaXBzIiwgYW5kIGNvbnNpc3RlbnRseSANCj4+PiBy
ZWZlcnJpbmcgdG8gdGhlIGJyaWRnZSBjaGlwcyB0aHJvdWdob3V0IHRoZSB0cmVlIGFzICJMUzdB
IiBoZWxwZWQuDQo+Pj4NCj4+PiBJbiBhbnkgY2FzZSwgZm9yIHRoZSBzYWtlIG9mIGNvbnNpc3Rl
bmN5LCB5b3UgY2FuIGRlZmluaXRlbHkgcmVmZXIgDQo+Pj4gdG8gdGhlIENQVSBtb2RlbHMgaW4g
bmF0dXJhbCBsYW5ndWFnZSBsaWtlICJMUzNBeHh4eCI7IGp1c3QgbWFrZSANCj4+PiBzdXJlIHRv
IHJlZmFjdG9yIGZvciBleGFtcGxlIGV2ZXJ5IG9jY3VycmVuY2UgaW4gYXJjaC9sb29uZ2FyY2gg
YW5kIA0KPj4+IG90aGVyIHBhcnRzIG9mIGRyaXZlcnMvLiBUaGF0J3MgYSBsb3Qgb2YgY2h1cm4s
IHRob3VnaCwgc28gSSBkb24ndCANCj4+PiBleHBlY3Qgc3VjaCBjaGFuZ2VzIHRvIGdldCBhY2Nl
cHRlZCwgYW5kIHRoYXQncyB3aHkgdGhlIHRyZWUtd2lkZSANCj4+PiBjb25zaXN0ZW5jeSBzaG91
bGQgYmUgZmF2b3JlZCBvdmVyIHRoZSBsb2NhbCBvbmUuDQo+Pj4NCj4+IFRoZXJlIGFyZSBkb2N1
bWVudFsxXSB3aGljaCBuYW1lZCBMUzdBMTAwMCBicmlkZ2UgY2hpcCBhcyBMb29uZ3NvbiANCj4+
IDdBMTAwMCBCcmlkZ2UsDQo+Pg0KPj4gd2hpY2ggaXMgb3Bwb3NlZCB0byB3aGF0IHlvdSBoYXZl
IHNhaWQgInRoZSBleGlzdGluZyBjb252ZW50aW9uIGlzIA0KPj4gTFM3WHh4eHggZm9yIGJyaWRn
ZXMiLg0KPj4NCj4+DQo+PiB0aGVyZSBhcmUgYWxzbyBwbGVudHkgcHJvamVjdHNbMl0gd2hpY2gg
ZW5jb2RlIGxzMmsxMDAwIGFzIHByb2plY3QgDQo+PiBuYW1lLCB3aGljaCBzaW1wbHkNCj4+DQo+
PiBkb24ndCBmYWxsIGludG8gdGhlIGNhdGVnb3J5IGFzIHlvdSBoYXZlIG1lbnRpb25lZCgiTG9v
bmdzb24gM0F4eHh4IikuDQo+Pg0KPj4NCj4+IFNlZSBbMV1bMl0gZm9yIHJlZmVyZW5jZSwgaG93
IHRvIGV4cGxhaW4gdGhpcyBwaGVub21lbm9uIHRoZW4/DQo+DQo+IFR1cm4gZG93biB0aGUgZmxh
bWVzIGEgbGl0dGxlIGJpdCwgb2theT8gOy0pDQo+DQo+DQpUaGVyZSBpcyBubyBmbGFtZXMsIGl0
cyBqdXN0IHRoYXQgaXQgbmVlZCBzdWZmaWNpZW50IGRpc2N1c3Npb24gd2hlbiANCnN0YXJ0ZWQg
dG8gY29udHJpYnV0ZSB0byBjb21tdW5pdHkuDQoNCldlIHdhbnQgbW9yZSByaWdvcm91cyB0b3dh
cmQgdG8gb3VyIHBhdGNoLg0KDQoNCldlIGNhbid0IGFkb3B0IGlycmVzcG9uc2libGUgaWRlYXMs
IGVzcGVjaWFsbHkgZnJvbSBzb21lb25lIHdobyBpcyANCnJlbHVjdGFudCB0byBnaXZlIGENCg0K
cmVhc29uYWJsZSByYXRpb25hbGUgYW5kIHJlZnVzZWQgdG8gZGlzY3Vzc2lvbi4NCg0KDQpTdWNo
IGNoYW5nZXMgY291bGQgcHJvYmFibHkgbWFkZSBhIGRhbWFnZSB0byBMb29uZ3NvbiBjb21wYW55
Lg0KDQpBcyBpdCB0ZW5kIHRvIGludHJvZHVjZSBzZWxmLWNvbnRyYWRpY3RvcnkgYmV0d2VlbiB0
aGUgY29kZSBhbmQgY29tbWVudC4NCg0KRXNwZWNpYWxseSB3aGVuIHdlIGludHJvZHVjZSBEVCBz
dXBwb3J0LCB0aGVyZSBpcyBubyB3cml0ZSBzcGFjZSBpbiB0aGUgDQptaWRkbGUgdGhlIHN0cmlu
ZyBpcyBhbGxvd2VkLg0KDQphbmQgZW5jb2RlIG1vZGVsIGluZm9ybWF0aW9uIHRvIHRoZSBjb21w
YXRpYmxlIHN0cmluZyBpcyBhbiBjb21tb24gcHJhY3RpY2UuDQoNCg0KV2hpbGUgYXQgaXQsIEkg
d2lsbCB0YWtlIGl0IGludG8gYW5vdGhlciBjb25zaWRlcmF0aW9uIGlmIHRoZXJlIGFyZSBtb3Jl
IA0KcHJvZmVzc2lvbmFsIHBlcnNvbiB3aG8NCg0KaXMgc3VwcG9ydGluZyB5b3VyIGlkZWFzIGFu
ZCBjb3VsZCB0YWtlIHRoZSByZXNwb25zaWJpbGl0eSBmb3IgaXQuDQoNCkJlc2lkZSB0aGlzLCBv
dGhlciByZXZpZXdzIGFyZSBzdGlsbCBhY2NlcHRhYmxlLCB0aGFua3MgZm9yIHRoZSANCnJlYXNv
bmFibGUgcGFydC4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
