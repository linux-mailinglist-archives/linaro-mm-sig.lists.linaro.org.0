Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8962F70F31A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:38:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8770F4141F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:38:48 +0000 (UTC)
Received: from mailbox.box.xen0n.name (mail.xen0n.name [115.28.160.31])
	by lists.linaro.org (Postfix) with ESMTPS id 893553F0B3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 16:40:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=xen0n.name header.s=mail header.b=ByO6tXGD;
	spf=pass (lists.linaro.org: domain of kernel@xen0n.name designates 115.28.160.31 as permitted sender) smtp.mailfrom=kernel@xen0n.name;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xen0n.name; s=mail;
	t=1684773636; bh=A1hv5dYBingqEFthCPsCseNbX30f00AobtL7UQqoAhw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ByO6tXGD+zH7oxF9QSuPqV291kN0lgYYjc1XqAiTxlstxptwNTGBtmChIDn35LsNS
	 8MIt1CXkJitjYFFaZcxY2UpuS7leVr0/ANkcXC/IcfvOViY7z9D6dIo3ISR85OMdvt
	 ++YwiPSc8zUlzZMs6NFpmcy80lgyzokgv9AOyivg=
Received: from [192.168.9.172] (unknown [101.228.138.124])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mailbox.box.xen0n.name (Postfix) with ESMTPSA id 62372600DA;
	Tue, 23 May 2023 00:40:36 +0800 (CST)
Message-ID: <ece7821e-c4bb-f2b7-3b1d-dacc04729530@xen0n.name>
Date: Tue, 23 May 2023 00:40:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Sui Jingfeng <15330273260@189.cn>,
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
Content-Language: en-US
From: WANG Xuerui <kernel@xen0n.name>
In-Reply-To: <69edaf49-359a-229c-c8b4-8aa3af622008@189.cn>
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:115.28.160.31];
	R_DKIM_ALLOW(-0.20)[xen0n.name:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:37963, ipnet:115.28.128.0/18, country:CN];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	DKIM_TRACE(0.00)[xen0n.name:+];
	DMARC_NA(0.00)[xen0n.name];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 893553F0B3
X-Spamd-Bar: ------
X-MailFrom: kernel@xen0n.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AQ4FYDGDDJECU2MYOTQLXUA5G4ZFUZB3
X-Message-ID-Hash: AQ4FYDGDDJECU2MYOTQLXUA5G4ZFUZB3
X-Mailman-Approved-At: Wed, 24 May 2023 09:35:55 +0000
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AQ4FYDGDDJECU2MYOTQLXUA5G4ZFUZB3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gNS8yMi8yMyAyMToxMywgU3VpIEppbmdmZW5nIHdyb3RlOg0KPiBIaSwNCj4NCj4gT24gMjAy
My81LzIyIDE4OjI1LCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+IE9uIDIwMjMvNS8yMiAxODoxNywg
U3VpIEppbmdmZW5nIHdyb3RlOg0KPj4+IEhpLA0KPj4+DQo+Pj4gT24gMjAyMy81LzIyIDE4OjA1
LCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+Pj4gT24gMjAyMy81LzIyIDE3OjQ5LCBTdWkgSmluZ2Zl
bmcgd3JvdGU6DQo+Pj4+PiBIaSwNCj4+Pj4+DQo+Pj4+PiBPbiAyMDIzLzUvMjIgMTc6MjgsIFdB
TkcgWHVlcnVpIHdyb3RlOg0KPj4+Pj4+IE9uIDIwMjMvNS8yMiAxNzoyNSwgU3VpIEppbmdmZW5n
IHdyb3RlOg0KPj4+Pj4+PiBIaSwNCj4+Pj4+Pj4NCj4+Pj4+Pj4gT24gMjAyMy81LzIxIDIwOjIx
LCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+Pj4+Pj4+PiArICogTFMzQTQwMDAvTFMzQTUwMDAvTFMz
QTYwMDAgQ1BVLCB0aGV5IGFyZSBlcXVpcHBlZCB3aXRoIA0KPj4+Pj4+Pj4+IG9uLWJvYXJkIHZp
ZGVvIFJBTQ0KPj4+Pj4+Pj4+ICsgKiB0eXBpY2FsbHkuIFdoaWxlIExTMkswNTAwL0xTMksxMDAw
L0xTMksyMDAwIGFyZSBsb3cgY29zdCANCj4+Pj4+Pj4+PiBTb0NzIHdoaWNoIHNoYXJlDQo+Pj4+
Pj4+Pj4gKyAqIHRoZSBzeXN0ZW0gUkFNIGFzIHZpZGVvIFJBTSwgdGhleSBkb24ndCBoYXMgYSBk
ZWRpYWNhdGVkIA0KPj4+Pj4+Pj4+IFZSQU0uDQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gQ1BVIG1vZGVs
cyBhcmUgbm90IHR5cGljYWxseSBwcmVmaXhlZCB3aXRoICJMUyIsIHNvICJMb29uZ3NvbiANCj4+
Pj4+Pj4+IDNBNDAwMC8zQTUwMDAvM0E2MDAwIi4NCj4+Pj4+Pj4+DQo+Pj4+Pj4+IEhlcmUgaXMg
YmVjYXVzZSB3aGVuIHlvdSBkbyBwcm9ncmFtbWluZywgdmFyaWFibGUgbmFtZSBzaG91bGQgDQo+
Pj4+Pj4+IHByZWZpeCB3aXRoIGxldHRlcnMuDQo+Pj4+Pj4NCj4+Pj4+PiBDb21taXQgbWVzc2Fn
ZXMsIGNvbW1lbnRzLCBhbmQgbG9nIG1lc3NhZ2VzIGV0Yy4gYXJlIG5hdHVyYWwgDQo+Pj4+Pj4g
bGFuZ3VhZ2UsIHNvIGl0J3MgYmV0dGVyIHRvIHRyZWF0IHRoZW0gZGlmZmVyZW50bHkuIE5vIHBy
b2JsZW0gdG8gDQo+Pj4+Pj4ga2VlcCBjb2RlIGFzLWlzIElNTy4NCj4+Pj4+Pg0KPj4+Pj4gVGhl
biB5b3UgZ2V0IHR3byBuYW1lIGZvciBhIHNpbmdsZSBjaGlwLMKgIHRha2XCoCBMUzdBMTAwMCBh
cyBhbiANCj4+Pj4+IGV4YW1wbGUuDQo+Pj4+Pg0KPj4+Pj4gWW91IG5hbWUgaXQgYXMgTG9vbmdz
b24gN0ExMDAwIGluIGNvbW1pdCBtZXNzYWdlLMKgIGFuZCB0aGVuIHlvdSANCj4+Pj4+IGhhdmUg
dG8gZGVmaW5lIGFub3RoZXIgbmFtZSBpbiB0aGUgY29kZSzCoCBzYXkgTFM3QTEwMDAuDQo+Pj4+
Pg0KPj4+Pj4gIkxvb25nc29uIDdBMTAwMCIgaXMgdG9vIGxvbmcswqAgbm90IGFzIGNvbXBhY3Qg
YXMgTFM3QTEwMDAuDQo+Pj4+Pg0KPj4+Pj4gVGhpcyBhbHNvIGF2b2lkIGJpbmQgdGhlIGNvbXBh
bnkgbmFtZSB0byBhIHNwZWNpZmljIHByb2R1Y3QsIA0KPj4+Pj4gYmVjYXVzZSBhIGNvbXBhbnkg
Y2FuIHByb2R1Y2UgbWFueSBwcm9kdWN0Lg0KPj4+Pg0KPj4+PiBOYWgsIHRoZSBleGlzdGluZyBj
b252ZW50aW9uIGlzICJMUzdYeHh4eCIgZm9yIGJyaWRnZXMgYW5kIA0KPj4+PiAiTG9vbmdzb24g
M0F4eHh4IiBmb3IgQ1BVcyAoU29DcyBsaWtlIDJLIGZhbGwgdW5kZXIgdGhpcyBjYXRlZ29yeSAN
Cj4+Pj4gdG9vKS4gSXQncyBiZXR0ZXIgdG8gc3RpY2sgd2l0aCBleGlzdGluZyBwcmFjdGljZSBz
byBpdCB3b3VsZCBiZSANCj4+Pj4gZmFtaWxpYXIgdG8gbG9uZy10aW1lIExvb25nc29uL0xvb25n
QXJjaCBkZXZlbG9wZXJzLCBidXQgSSANCj4+Pj4gcGVyc29uYWxseSBkb24ndCB0aGluayBpdCB3
aWxsIGhhbXBlciB1bmRlcnN0YW5kaW5nIGlmIHlvdSBmZWVsIA0KPj4+PiBsaWtlIGRvaW5nIG90
aGVyd2lzZS4NCj4+Pj4NCj4+PiBDYW4geW91IGV4cGxhaW4gd2h5IGl0IGlzIGJldHRlcj8NCj4+
Pg0KPj4+IGlzIGl0IHRoYXQgdGhlIGFscmVhZHkgZXhpc3RpbmcgaXMgYmV0dGVyID8NCj4+DQo+
PiBJdCdzIG5vdCBhYm91dCBzdWJqZWN0aXZlIHBlcmNlcHRpb24gb2YgImJldHRlciIgb3IgIndv
cnNlIiwgYnV0IA0KPj4gYWJvdXQgdHJlZS13aWRlIGNvbnNpc3RlbmN5LCBhbmQgYWJvdXQgcmVk
dWNpbmcgYW55IHBvdGVudGlhbCANCj4+IGNvbmZ1c2lvbiBmcm9tIG5ld2NvbWVycy4gSSByZW1l
bWJlciBIdWFjYWkgb25jZSBwb2ludGluZyBvdXQgdGhhdCANCj4+IG91dHNpZGVycyB1c3VhbGx5
IGhhdmUgYSBoYXJkIHRpbWUgcmVtZW1iZXJpbmcgIjEsIDIsIGFuZCAzIGFyZSBDUFVzLCANCj4+
IHNvbWUgMiBhcmUgU29DcywgNyBhcmUgYnJpZGdlIGNoaXBzIiwgYW5kIGNvbnNpc3RlbnRseSBy
ZWZlcnJpbmcgdG8gDQo+PiB0aGUgYnJpZGdlIGNoaXBzIHRocm91Z2hvdXQgdGhlIHRyZWUgYXMg
IkxTN0EiIGhlbHBlZC4NCj4+DQo+PiBJbiBhbnkgY2FzZSwgZm9yIHRoZSBzYWtlIG9mIGNvbnNp
c3RlbmN5LCB5b3UgY2FuIGRlZmluaXRlbHkgcmVmZXIgdG8gDQo+PiB0aGUgQ1BVIG1vZGVscyBp
biBuYXR1cmFsIGxhbmd1YWdlIGxpa2UgIkxTM0F4eHh4IjsganVzdCBtYWtlIHN1cmUgdG8gDQo+
PiByZWZhY3RvciBmb3IgZXhhbXBsZSBldmVyeSBvY2N1cnJlbmNlIGluIGFyY2gvbG9vbmdhcmNo
IGFuZCBvdGhlciANCj4+IHBhcnRzIG9mIGRyaXZlcnMvLiBUaGF0J3MgYSBsb3Qgb2YgY2h1cm4s
IHRob3VnaCwgc28gSSBkb24ndCBleHBlY3QgDQo+PiBzdWNoIGNoYW5nZXMgdG8gZ2V0IGFjY2Vw
dGVkLCBhbmQgdGhhdCdzIHdoeSB0aGUgdHJlZS13aWRlIA0KPj4gY29uc2lzdGVuY3kgc2hvdWxk
IGJlIGZhdm9yZWQgb3ZlciB0aGUgbG9jYWwgb25lLg0KPj4NCj4gVGhlcmUgYXJlIGRvY3VtZW50
WzFdIHdoaWNoIG5hbWVkIExTN0ExMDAwIGJyaWRnZSBjaGlwIGFzIExvb25nc29uIA0KPiA3QTEw
MDAgQnJpZGdlLA0KPg0KPiB3aGljaCBpcyBvcHBvc2VkIHRvIHdoYXQgeW91IGhhdmUgc2FpZCAi
dGhlIGV4aXN0aW5nIGNvbnZlbnRpb24gaXMgDQo+IExTN1h4eHh4IGZvciBicmlkZ2VzIi4NCj4N
Cj4NCj4gdGhlcmUgYXJlIGFsc28gcGxlbnR5IHByb2plY3RzWzJdIHdoaWNoIGVuY29kZSBsczJr
MTAwMCBhcyBwcm9qZWN0IA0KPiBuYW1lLCB3aGljaCBzaW1wbHkNCj4NCj4gZG9uJ3QgZmFsbCBp
bnRvIHRoZSBjYXRlZ29yeSBhcyB5b3UgaGF2ZSBtZW50aW9uZWQoIkxvb25nc29uIDNBeHh4eCIp
Lg0KPg0KPg0KPiBTZWUgWzFdWzJdIGZvciByZWZlcmVuY2UsIGhvdyB0byBleHBsYWluIHRoaXMg
cGhlbm9tZW5vbiB0aGVuPw0KDQpUdXJuIGRvd24gdGhlIGZsYW1lcyBhIGxpdHRsZSBiaXQsIG9r
YXk/IDstKQ0KDQpXaGF0IEknbSBkZXNjcmliaW5nIGlzIHNpbXBseSB0aGUga2VybmVsIGNvbnZl
bnRpb24uIFRyeSBncmVwcGluZyB0aGUgDQpjb21taXQgbG9nIG9mIGxpbnV4OiB5b3UgY2FuIHNl
ZSBhbG1vc3QgYWxsIG1lbnRpb25zIG9mICJMb29uZ3NvbiA3QSIgaXMgDQpqdXN0IHJlZmVycmlu
ZyB0byB0aGUgbWFudWFsIHdoaWNoIGlzIG5hbWVkIGxpa2UgdGhhdDsgdGhhdCAiTFMzQSIgb25s
eSANCmV2ZXIgYXBwZWFyIGFzIHBhcnQgb2Ygc29tZSBib2FyZCBuYW1lOyBhbmQgdGhhdCAiTFMy
SyIgb25seSBicmllZmx5IA0KYXBwZWFyaW5nIHdoZW4gbWVudGlvbmVkIHRvZ2V0aGVyIHdpdGgg
TFM3QSwgbWF5YmUgdGhhdCdzIGVtcGhhc2lzIG9uIA0KdGhlIFNvQydzIGJyaWRnZSBwYXJ0LiAi
TG9vbmdzb24gWzEyM10iIGFuZCAiTFM3QSIgYXJlIGNsZWFybHkgdGhlIA0KbWFqb3JpdHkgdGhl
cmUuDQoNCkJ1dCwgYXMgdGhlIGNvbnZlbnRpb24gd2FzIGVzdGFibGlzaGVkIGJ5IEh1YWNhaSBh
bmQgSSdtIG9ubHkgDQpyZWl0ZXJhdGluZyBoaXMgcnVsZXMsIHlvdSBtYXkgaW5zdGVhZCBqdXN0
IGNoZWNrIHdpdGggaGltIGFuZCBub3QgDQpjb250aW51ZSB0aGUgYm9yaW5nIGRlYmF0ZSB3aXRo
IG1lLiBNZWFud2hpbGUgbWF5YmUga2VlcGluZyBhbGwgIkxTM0EiIA0KYW5kL29yICJMUzJLIiBp
cyBraW5kIG9mIGFjY2VwdGFibGUsIGdpdmVuIHN1Y2ggbmFtaW5nIGlzIGV0Y2hlZCByaWdodCAN
Cm9uIHRoZSBjaGlwJ3MgcGFja2FnaW5nOyBJJ2QgZm9sbG93IHdoYXRldmVyIEh1YWNhaSBtYW5k
YXRlcy4NCg0KLS0gDQpXQU5HICJ4ZW4wbiIgWHVlcnVpDQoNCkxpbnV4L0xvb25nQXJjaCBtYWls
aW5nIGxpc3Q6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xvb25nYXJjaC8NCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
