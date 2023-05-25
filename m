Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 892767103EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 May 2023 06:14:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92C1743C57
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 May 2023 04:14:32 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.102])
	by lists.linaro.org (Postfix) with ESMTP id 15E8F3E89F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 May 2023 04:14:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.102 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.31:37610.1839801626
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.31])
	by 189.cn (HERMES) with SMTP id C626B10019D;
	Thu, 25 May 2023 12:14:18 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-xp9j7 with ESMTP id b8960a41a24a401fb7eef09e4362d536 for kernel@xen0n.name;
	Thu, 25 May 2023 12:14:20 CST
X-Transaction-ID: b8960a41a24a401fb7eef09e4362d536
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <5f70f46b-8c53-c55b-761a-6bb50c01b2b1@189.cn>
Date: Thu, 25 May 2023 12:14:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Sui Jingfeng <15330273260@189.cn>
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
 <04ede1b1-9757-5181-eec7-658c1df0480e@189.cn>
Content-Language: en-US
In-Reply-To: <04ede1b1-9757-5181-eec7-658c1df0480e@189.cn>
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24:c];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[xen0n.name,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	NEURAL_HAM(-0.00)[-0.435];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	FREEMAIL_FROM(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 15E8F3E89F
X-Spamd-Bar: -
Message-ID-Hash: ZGAT2G5QN4BPQKJ6S4CRETYT2TU2LSIP
X-Message-ID-Hash: ZGAT2G5QN4BPQKJ6S4CRETYT2TU2LSIP
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZGAT2G5QN4BPQKJ6S4CRETYT2TU2LSIP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAyMDIzLzUvMjUgMTI6MDksIFN1aSBKaW5nZmVuZyB3cm90ZToNCj4gSGksDQo+DQo+IE9u
IDIwMjMvNS8yMyAwMDo0MCwgV0FORyBYdWVydWkgd3JvdGU6DQo+PiBPbiA1LzIyLzIzIDIxOjEz
LCBTdWkgSmluZ2Zlbmcgd3JvdGU6DQo+Pj4gSGksDQo+Pj4NCj4+PiBPbiAyMDIzLzUvMjIgMTg6
MjUsIFdBTkcgWHVlcnVpIHdyb3RlOg0KPj4+PiBPbiAyMDIzLzUvMjIgMTg6MTcsIFN1aSBKaW5n
ZmVuZyB3cm90ZToNCj4+Pj4+IEhpLA0KPj4+Pj4NCj4+Pj4+IE9uIDIwMjMvNS8yMiAxODowNSwg
V0FORyBYdWVydWkgd3JvdGU6DQo+Pj4+Pj4gT24gMjAyMy81LzIyIDE3OjQ5LCBTdWkgSmluZ2Zl
bmcgd3JvdGU6DQo+Pj4+Pj4+IEhpLA0KPj4+Pj4+Pg0KPj4+Pj4+PiBPbiAyMDIzLzUvMjIgMTc6
MjgsIFdBTkcgWHVlcnVpIHdyb3RlOg0KPj4+Pj4+Pj4gT24gMjAyMy81LzIyIDE3OjI1LCBTdWkg
SmluZ2Zlbmcgd3JvdGU6DQo+Pj4+Pj4+Pj4gSGksDQo+Pj4+Pj4+Pj4NCj4+Pj4+Pj4+PiBPbiAy
MDIzLzUvMjEgMjA6MjEsIFdBTkcgWHVlcnVpIHdyb3RlOg0KPj4+Pj4+Pj4+Pj4gKyAqIExTM0E0
MDAwL0xTM0E1MDAwL0xTM0E2MDAwIENQVSwgdGhleSBhcmUgZXF1aXBwZWQgd2l0aCANCj4+Pj4+
Pj4+Pj4+IG9uLWJvYXJkIHZpZGVvIFJBTQ0KPj4+Pj4+Pj4+Pj4gKyAqIHR5cGljYWxseS4gV2hp
bGUgTFMySzA1MDAvTFMySzEwMDAvTFMySzIwMDAgYXJlIGxvdyBjb3N0IA0KPj4+Pj4+Pj4+Pj4g
U29DcyB3aGljaCBzaGFyZQ0KPj4+Pj4+Pj4+Pj4gKyAqIHRoZSBzeXN0ZW0gUkFNIGFzIHZpZGVv
IFJBTSwgdGhleSBkb24ndCBoYXMgYSBkZWRpYWNhdGVkIA0KPj4+Pj4+Pj4+Pj4gVlJBTS4NCj4+
Pj4+Pj4+Pj4NCj4+Pj4+Pj4+Pj4gQ1BVIG1vZGVscyBhcmUgbm90IHR5cGljYWxseSBwcmVmaXhl
ZCB3aXRoICJMUyIsIHNvICJMb29uZ3NvbiANCj4+Pj4+Pj4+Pj4gM0E0MDAwLzNBNTAwMC8zQTYw
MDAiLg0KPj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+IEhlcmUgaXMgYmVjYXVzZSB3aGVuIHlvdSBkbyBw
cm9ncmFtbWluZywgdmFyaWFibGUgbmFtZSBzaG91bGQgDQo+Pj4+Pj4+Pj4gcHJlZml4IHdpdGgg
bGV0dGVycy4NCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiBDb21taXQgbWVzc2FnZXMsIGNvbW1lbnRzLCBh
bmQgbG9nIG1lc3NhZ2VzIGV0Yy4gYXJlIG5hdHVyYWwgDQo+Pj4+Pj4+PiBsYW5ndWFnZSwgc28g
aXQncyBiZXR0ZXIgdG8gdHJlYXQgdGhlbSBkaWZmZXJlbnRseS4gTm8gcHJvYmxlbSANCj4+Pj4+
Pj4+IHRvIGtlZXAgY29kZSBhcy1pcyBJTU8uDQo+Pj4+Pj4+Pg0KPj4+Pj4+PiBUaGVuIHlvdSBn
ZXQgdHdvIG5hbWUgZm9yIGEgc2luZ2xlIGNoaXAswqAgdGFrZSBMUzdBMTAwMCBhcyBhbiANCj4+
Pj4+Pj4gZXhhbXBsZS4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gWW91IG5hbWUgaXQgYXMgTG9vbmdzb24g
N0ExMDAwIGluIGNvbW1pdCBtZXNzYWdlLMKgIGFuZCB0aGVuIHlvdSANCj4+Pj4+Pj4gaGF2ZSB0
byBkZWZpbmUgYW5vdGhlciBuYW1lIGluIHRoZSBjb2RlLMKgIHNheSBMUzdBMTAwMC4NCj4+Pj4+
Pj4NCj4+Pj4+Pj4gIkxvb25nc29uIDdBMTAwMCIgaXMgdG9vIGxvbmcswqAgbm90IGFzIGNvbXBh
Y3QgYXMgTFM3QTEwMDAuDQo+Pj4+Pj4+DQo+Pj4+Pj4+IFRoaXMgYWxzbyBhdm9pZCBiaW5kIHRo
ZSBjb21wYW55IG5hbWUgdG8gYSBzcGVjaWZpYyBwcm9kdWN0LCANCj4+Pj4+Pj4gYmVjYXVzZSBh
IGNvbXBhbnkgY2FuIHByb2R1Y2UgbWFueSBwcm9kdWN0Lg0KPj4+Pj4+DQo+Pj4+Pj4gTmFoLCB0
aGUgZXhpc3RpbmcgY29udmVudGlvbiBpcyAiTFM3WHh4eHgiIGZvciBicmlkZ2VzIGFuZCANCj4+
Pj4+PiAiTG9vbmdzb24gM0F4eHh4IiBmb3IgQ1BVcyAoU29DcyBsaWtlIDJLIGZhbGwgdW5kZXIg
dGhpcyBjYXRlZ29yeSANCj4+Pj4+PiB0b28pLiBJdCdzIGJldHRlciB0byBzdGljayB3aXRoIGV4
aXN0aW5nIHByYWN0aWNlIHNvIGl0IHdvdWxkIGJlIA0KPj4+Pj4+IGZhbWlsaWFyIHRvIGxvbmct
dGltZSBMb29uZ3Nvbi9Mb29uZ0FyY2ggZGV2ZWxvcGVycywgYnV0IEkgDQo+Pj4+Pj4gcGVyc29u
YWxseSBkb24ndCB0aGluayBpdCB3aWxsIGhhbXBlciB1bmRlcnN0YW5kaW5nIGlmIHlvdSBmZWVs
IA0KPj4+Pj4+IGxpa2UgZG9pbmcgb3RoZXJ3aXNlLg0KPj4+Pj4+DQo+Pj4+PiBDYW4geW91IGV4
cGxhaW4gd2h5IGl0IGlzIGJldHRlcj8NCj4+Pj4+DQo+Pj4+PiBpcyBpdCB0aGF0IHRoZSBhbHJl
YWR5IGV4aXN0aW5nIGlzIGJldHRlciA/DQo+Pj4+DQo+Pj4+IEl0J3Mgbm90IGFib3V0IHN1Ympl
Y3RpdmUgcGVyY2VwdGlvbiBvZiAiYmV0dGVyIiBvciAid29yc2UiLCBidXQgDQo+Pj4+IGFib3V0
IHRyZWUtd2lkZSBjb25zaXN0ZW5jeSwgYW5kIGFib3V0IHJlZHVjaW5nIGFueSBwb3RlbnRpYWwg
DQo+Pj4+IGNvbmZ1c2lvbiBmcm9tIG5ld2NvbWVycy4gSSByZW1lbWJlciBIdWFjYWkgb25jZSBw
b2ludGluZyBvdXQgdGhhdCANCj4+Pj4gb3V0c2lkZXJzIHVzdWFsbHkgaGF2ZSBhIGhhcmQgdGlt
ZSByZW1lbWJlcmluZyAiMSwgMiwgYW5kIDMgYXJlIA0KPj4+PiBDUFVzLCBzb21lIDIgYXJlIFNv
Q3MsIDcgYXJlIGJyaWRnZSBjaGlwcyIsIGFuZCBjb25zaXN0ZW50bHkgDQo+Pj4+IHJlZmVycmlu
ZyB0byB0aGUgYnJpZGdlIGNoaXBzIHRocm91Z2hvdXQgdGhlIHRyZWUgYXMgIkxTN0EiIGhlbHBl
ZC4NCj4+Pj4NCj4+Pj4gSW4gYW55IGNhc2UsIGZvciB0aGUgc2FrZSBvZiBjb25zaXN0ZW5jeSwg
eW91IGNhbiBkZWZpbml0ZWx5IHJlZmVyIA0KPj4+PiB0byB0aGUgQ1BVIG1vZGVscyBpbiBuYXR1
cmFsIGxhbmd1YWdlIGxpa2UgIkxTM0F4eHh4IjsganVzdCBtYWtlIA0KPj4+PiBzdXJlIHRvIHJl
ZmFjdG9yIGZvciBleGFtcGxlIGV2ZXJ5IG9jY3VycmVuY2UgaW4gYXJjaC9sb29uZ2FyY2ggYW5k
IA0KPj4+PiBvdGhlciBwYXJ0cyBvZiBkcml2ZXJzLy4gVGhhdCdzIGEgbG90IG9mIGNodXJuLCB0
aG91Z2gsIHNvIEkgZG9uJ3QgDQo+Pj4+IGV4cGVjdCBzdWNoIGNoYW5nZXMgdG8gZ2V0IGFjY2Vw
dGVkLCBhbmQgdGhhdCdzIHdoeSB0aGUgdHJlZS13aWRlIA0KPj4+PiBjb25zaXN0ZW5jeSBzaG91
bGQgYmUgZmF2b3JlZCBvdmVyIHRoZSBsb2NhbCBvbmUuDQo+Pj4+DQo+Pj4gVGhlcmUgYXJlIGRv
Y3VtZW50WzFdIHdoaWNoIG5hbWVkIExTN0ExMDAwIGJyaWRnZSBjaGlwIGFzIExvb25nc29uIA0K
Pj4+IDdBMTAwMCBCcmlkZ2UsDQo+Pj4NCj4+PiB3aGljaCBpcyBvcHBvc2VkIHRvIHdoYXQgeW91
IGhhdmUgc2FpZCAidGhlIGV4aXN0aW5nIGNvbnZlbnRpb24gaXMgDQo+Pj4gTFM3WHh4eHggZm9y
IGJyaWRnZXMiLg0KPj4+DQo+Pj4NCj4+PiB0aGVyZSBhcmUgYWxzbyBwbGVudHkgcHJvamVjdHNb
Ml0gd2hpY2ggZW5jb2RlIGxzMmsxMDAwIGFzIHByb2plY3QgDQo+Pj4gbmFtZSwgd2hpY2ggc2lt
cGx5DQo+Pj4NCj4+PiBkb24ndCBmYWxsIGludG8gdGhlIGNhdGVnb3J5IGFzIHlvdSBoYXZlIG1l
bnRpb25lZCgiTG9vbmdzb24gM0F4eHh4IikuDQo+Pj4NCj4+Pg0KPj4+IFNlZSBbMV1bMl0gZm9y
IHJlZmVyZW5jZSwgaG93IHRvIGV4cGxhaW4gdGhpcyBwaGVub21lbm9uIHRoZW4/DQo+Pg0KPj4g
VHVybiBkb3duIHRoZSBmbGFtZXMgYSBsaXR0bGUgYml0LCBva2F5PyA7LSkNCj4+DQo+Pg0KPiBU
aGVyZSBpcyBubyBmbGFtZXMsIGl0cyBqdXN0IHRoYXQgaXQgbmVlZCBzdWZmaWNpZW50IGRpc2N1
c3Npb24gd2hlbiANCj4gc3RhcnRlZCB0byBjb250cmlidXRlIHRvIGNvbW11bml0eS4NCj4NCj4g
V2Ugd2FudCBtb3JlIHJpZ29yb3VzIHRvd2FyZCB0byBvdXIgcGF0Y2guDQo+DQo+DQo+IFdlIGNh
bid0IGFkb3B0IGlycmVzcG9uc2libGUgaWRlYXMsIGVzcGVjaWFsbHkgZnJvbSBzb21lb25lIHdo
byBpcyANCj4gcmVsdWN0YW50IHRvIGdpdmUgYQ0KPg0KPiByZWFzb25hYmxlIHJhdGlvbmFsZSBh
bmQgcmVmdXNlZCB0byBkaXNjdXNzaW9uLg0KPg0KPg0KPiBTdWNoIGNoYW5nZXMgY291bGQgcHJv
YmFibHkgbWFkZSBhIGRhbWFnZSB0byBMb29uZ3NvbiBjb21wYW55Lg0KPg0KPiBBcyBpdCB0ZW5k
IHRvIGludHJvZHVjZSBzZWxmLWNvbnRyYWRpY3RvcnkgYmV0d2VlbiB0aGUgY29kZSBhbmQgY29t
bWVudC4NCj4NCj4gRXNwZWNpYWxseSB3aGVuIHdlIGludHJvZHVjZSBEVCBzdXBwb3J0LCB0aGVy
ZSBpcyBubyB3cml0ZSBzcGFjZSBpbiANCj4gdGhlIG1pZGRsZSB0aGUgc3RyaW5nIGlzIGFsbG93
ZWQuDQo+DQoNCid3cml0ZScgLT4gJ3doaXRlJw0KDQoNCj4gYW5kIGVuY29kZSBtb2RlbCBpbmZv
cm1hdGlvbiB0byB0aGUgY29tcGF0aWJsZSBzdHJpbmcgaXMgYW4gY29tbW9uIA0KPiBwcmFjdGlj
ZS4NCj4NCj4NCj4gV2hpbGUgYXQgaXQsIEkgd2lsbCB0YWtlIGl0IGludG8gYW5vdGhlciBjb25z
aWRlcmF0aW9uIGlmIHRoZXJlIGFyZSANCj4gbW9yZSBwcm9mZXNzaW9uYWwgcGVyc29uIHdobw0K
Pg0KPiBpcyBzdXBwb3J0aW5nIHlvdXIgaWRlYXMgYW5kIGNvdWxkIHRha2UgdGhlIHJlc3BvbnNp
YmlsaXR5IGZvciBpdC4NCj4NCj4gQmVzaWRlIHRoaXMsIG90aGVyIHJldmlld3MgYXJlIHN0aWxs
IGFjY2VwdGFibGUsIHRoYW5rcyBmb3IgdGhlIA0KPiByZWFzb25hYmxlIHBhcnQuDQo+DQo+DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
