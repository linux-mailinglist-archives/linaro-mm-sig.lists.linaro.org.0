Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 384F470BF63
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 15:13:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 208A83ED27
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 13:13:31 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.103])
	by lists.linaro.org (Postfix) with ESMTP id 5A7593ED27
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 13:13:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.103 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.31:37766.365281712
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.31])
	by 189.cn (HERMES) with SMTP id 04C1C1002C5;
	Mon, 22 May 2023 21:13:21 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-xp9j7 with ESMTP id 032c282a12e842aab0e121a2c28c9c82 for kernel@xen0n.name;
	Mon, 22 May 2023 21:13:24 CST
X-Transaction-ID: 032c282a12e842aab0e121a2c28c9c82
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <69edaf49-359a-229c-c8b4-8aa3af622008@189.cn>
Date: Mon, 22 May 2023 21:13:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
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
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <0e5e4a4b-1426-ffae-e958-cf8f9aece166@xen0n.name>
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[xen0n.name,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	NEURAL_HAM(-0.00)[-0.995];
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
X-Rspamd-Queue-Id: 5A7593ED27
X-Spamd-Bar: -
Message-ID-Hash: MNZAMHEPPJKC3KEJ3UYW4XHSP3DXR2FP
X-Message-ID-Hash: MNZAMHEPPJKC3KEJ3UYW4XHSP3DXR2FP
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MNZAMHEPPJKC3KEJ3UYW4XHSP3DXR2FP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNS8yMiAxODoyNSwgV0FORyBYdWVydWkgd3JvdGU6DQo+IE9uIDIwMjMv
NS8yMiAxODoxNywgU3VpIEppbmdmZW5nIHdyb3RlOg0KPj4gSGksDQo+Pg0KPj4gT24gMjAyMy81
LzIyIDE4OjA1LCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+PiBPbiAyMDIzLzUvMjIgMTc6NDksIFN1
aSBKaW5nZmVuZyB3cm90ZToNCj4+Pj4gSGksDQo+Pj4+DQo+Pj4+IE9uIDIwMjMvNS8yMiAxNzoy
OCwgV0FORyBYdWVydWkgd3JvdGU6DQo+Pj4+PiBPbiAyMDIzLzUvMjIgMTc6MjUsIFN1aSBKaW5n
ZmVuZyB3cm90ZToNCj4+Pj4+PiBIaSwNCj4+Pj4+Pg0KPj4+Pj4+IE9uIDIwMjMvNS8yMSAyMDoy
MSwgV0FORyBYdWVydWkgd3JvdGU6DQo+Pj4+Pj4+PiArICogTFMzQTQwMDAvTFMzQTUwMDAvTFMz
QTYwMDAgQ1BVLCB0aGV5IGFyZSBlcXVpcHBlZCB3aXRoIA0KPj4+Pj4+Pj4gb24tYm9hcmQgdmlk
ZW8gUkFNDQo+Pj4+Pj4+PiArICogdHlwaWNhbGx5LiBXaGlsZSBMUzJLMDUwMC9MUzJLMTAwMC9M
UzJLMjAwMCBhcmUgbG93IGNvc3QgDQo+Pj4+Pj4+PiBTb0NzIHdoaWNoIHNoYXJlDQo+Pj4+Pj4+
PiArICogdGhlIHN5c3RlbSBSQU0gYXMgdmlkZW8gUkFNLCB0aGV5IGRvbid0IGhhcyBhIGRlZGlh
Y2F0ZWQgVlJBTS4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gQ1BVIG1vZGVscyBhcmUgbm90IHR5cGljYWxs
eSBwcmVmaXhlZCB3aXRoICJMUyIsIHNvICJMb29uZ3NvbiANCj4+Pj4+Pj4gM0E0MDAwLzNBNTAw
MC8zQTYwMDAiLg0KPj4+Pj4+Pg0KPj4+Pj4+IEhlcmUgaXMgYmVjYXVzZSB3aGVuIHlvdSBkbyBw
cm9ncmFtbWluZywgdmFyaWFibGUgbmFtZSBzaG91bGQgDQo+Pj4+Pj4gcHJlZml4IHdpdGggbGV0
dGVycy4NCj4+Pj4+DQo+Pj4+PiBDb21taXQgbWVzc2FnZXMsIGNvbW1lbnRzLCBhbmQgbG9nIG1l
c3NhZ2VzIGV0Yy4gYXJlIG5hdHVyYWwgDQo+Pj4+PiBsYW5ndWFnZSwgc28gaXQncyBiZXR0ZXIg
dG8gdHJlYXQgdGhlbSBkaWZmZXJlbnRseS4gTm8gcHJvYmxlbSB0byANCj4+Pj4+IGtlZXAgY29k
ZSBhcy1pcyBJTU8uDQo+Pj4+Pg0KPj4+PiBUaGVuIHlvdSBnZXQgdHdvIG5hbWUgZm9yIGEgc2lu
Z2xlIGNoaXAswqAgdGFrZcKgIExTN0ExMDAwIGFzIGFuIA0KPj4+PiBleGFtcGxlLg0KPj4+Pg0K
Pj4+PiBZb3UgbmFtZSBpdCBhcyBMb29uZ3NvbiA3QTEwMDAgaW4gY29tbWl0IG1lc3NhZ2UswqAg
YW5kIHRoZW4geW91IA0KPj4+PiBoYXZlIHRvIGRlZmluZSBhbm90aGVyIG5hbWUgaW4gdGhlIGNv
ZGUswqAgc2F5IExTN0ExMDAwLg0KPj4+Pg0KPj4+PiAiTG9vbmdzb24gN0ExMDAwIiBpcyB0b28g
bG9uZyzCoCBub3QgYXMgY29tcGFjdCBhcyBMUzdBMTAwMC4NCj4+Pj4NCj4+Pj4gVGhpcyBhbHNv
IGF2b2lkIGJpbmQgdGhlIGNvbXBhbnkgbmFtZSB0byBhIHNwZWNpZmljIHByb2R1Y3QsIA0KPj4+
PiBiZWNhdXNlIGEgY29tcGFueSBjYW4gcHJvZHVjZSBtYW55IHByb2R1Y3QuDQo+Pj4NCj4+PiBO
YWgsIHRoZSBleGlzdGluZyBjb252ZW50aW9uIGlzICJMUzdYeHh4eCIgZm9yIGJyaWRnZXMgYW5k
ICJMb29uZ3NvbiANCj4+PiAzQXh4eHgiIGZvciBDUFVzIChTb0NzIGxpa2UgMksgZmFsbCB1bmRl
ciB0aGlzIGNhdGVnb3J5IHRvbykuIEl0J3MgDQo+Pj4gYmV0dGVyIHRvIHN0aWNrIHdpdGggZXhp
c3RpbmcgcHJhY3RpY2Ugc28gaXQgd291bGQgYmUgZmFtaWxpYXIgdG8gDQo+Pj4gbG9uZy10aW1l
IExvb25nc29uL0xvb25nQXJjaCBkZXZlbG9wZXJzLCBidXQgSSBwZXJzb25hbGx5IGRvbid0IA0K
Pj4+IHRoaW5rIGl0IHdpbGwgaGFtcGVyIHVuZGVyc3RhbmRpbmcgaWYgeW91IGZlZWwgbGlrZSBk
b2luZyBvdGhlcndpc2UuDQo+Pj4NCj4+IENhbiB5b3UgZXhwbGFpbiB3aHkgaXQgaXMgYmV0dGVy
Pw0KPj4NCj4+IGlzIGl0IHRoYXQgdGhlIGFscmVhZHkgZXhpc3RpbmcgaXMgYmV0dGVyID8NCj4N
Cj4gSXQncyBub3QgYWJvdXQgc3ViamVjdGl2ZSBwZXJjZXB0aW9uIG9mICJiZXR0ZXIiIG9yICJ3
b3JzZSIsIGJ1dCBhYm91dCANCj4gdHJlZS13aWRlIGNvbnNpc3RlbmN5LCBhbmQgYWJvdXQgcmVk
dWNpbmcgYW55IHBvdGVudGlhbCBjb25mdXNpb24gZnJvbSANCj4gbmV3Y29tZXJzLiBJIHJlbWVt
YmVyIEh1YWNhaSBvbmNlIHBvaW50aW5nIG91dCB0aGF0IG91dHNpZGVycyB1c3VhbGx5IA0KPiBo
YXZlIGEgaGFyZCB0aW1lIHJlbWVtYmVyaW5nICIxLCAyLCBhbmQgMyBhcmUgQ1BVcywgc29tZSAy
IGFyZSBTb0NzLCA3IA0KPiBhcmUgYnJpZGdlIGNoaXBzIiwgYW5kIGNvbnNpc3RlbnRseSByZWZl
cnJpbmcgdG8gdGhlIGJyaWRnZSBjaGlwcyANCj4gdGhyb3VnaG91dCB0aGUgdHJlZSBhcyAiTFM3
QSIgaGVscGVkLg0KPg0KPiBJbiBhbnkgY2FzZSwgZm9yIHRoZSBzYWtlIG9mIGNvbnNpc3RlbmN5
LCB5b3UgY2FuIGRlZmluaXRlbHkgcmVmZXIgdG8gDQo+IHRoZSBDUFUgbW9kZWxzIGluIG5hdHVy
YWwgbGFuZ3VhZ2UgbGlrZSAiTFMzQXh4eHgiOyBqdXN0IG1ha2Ugc3VyZSB0byANCj4gcmVmYWN0
b3IgZm9yIGV4YW1wbGUgZXZlcnkgb2NjdXJyZW5jZSBpbiBhcmNoL2xvb25nYXJjaCBhbmQgb3Ro
ZXIgDQo+IHBhcnRzIG9mIGRyaXZlcnMvLiBUaGF0J3MgYSBsb3Qgb2YgY2h1cm4sIHRob3VnaCwg
c28gSSBkb24ndCBleHBlY3QgDQo+IHN1Y2ggY2hhbmdlcyB0byBnZXQgYWNjZXB0ZWQsIGFuZCB0
aGF0J3Mgd2h5IHRoZSB0cmVlLXdpZGUgY29uc2lzdGVuY3kgDQo+IHNob3VsZCBiZSBmYXZvcmVk
IG92ZXIgdGhlIGxvY2FsIG9uZS4NCj4NClRoZXJlIGFyZSBkb2N1bWVudFsxXSB3aGljaCBuYW1l
ZCBMUzdBMTAwMCBicmlkZ2UgY2hpcCBhcyBMb29uZ3NvbiANCjdBMTAwMCBCcmlkZ2UsDQoNCndo
aWNoIGlzIG9wcG9zZWQgdG8gd2hhdCB5b3UgaGF2ZSBzYWlkICJ0aGUgZXhpc3RpbmcgY29udmVu
dGlvbiBpcyANCkxTN1h4eHh4IGZvciBicmlkZ2VzIi4NCg0KDQp0aGVyZSBhcmUgYWxzbyBwbGVu
dHkgcHJvamVjdHNbMl0gd2hpY2ggZW5jb2RlIGxzMmsxMDAwIGFzIHByb2plY3QgbmFtZSwgDQp3
aGljaCBzaW1wbHkNCg0KZG9uJ3QgZmFsbCBpbnRvIHRoZSBjYXRlZ29yeSBhcyB5b3UgaGF2ZSBt
ZW50aW9uZWQoIkxvb25nc29uIDNBeHh4eCIpLg0KDQoNClNlZSBbMV1bMl0gZm9yIHJlZmVyZW5j
ZSwgaG93IHRvIGV4cGxhaW4gdGhpcyBwaGVub21lbm9uIHRoZW4/DQoNCg0KWzFdIA0KaHR0cHM6
Ly9sb29uZ3Nvbi5naXRodWIuaW8vTG9vbmdBcmNoLURvY3VtZW50YXRpb24vTG9vbmdzb24tN0Ex
MDAwLXVzZXJtYW51YWwtRU4NCg0KWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS96aGFvemhpMDgxMC9w
bW9uLWxzMmsxMDAwLTIwMjINCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
