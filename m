Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F4870F316
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:38:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FE2F4141F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:38:26 +0000 (UTC)
Received: from mailbox.box.xen0n.name (mail.xen0n.name [115.28.160.31])
	by lists.linaro.org (Postfix) with ESMTPS id 602753EF52
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 10:25:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=xen0n.name header.s=mail header.b=xKPMORLB;
	spf=pass (lists.linaro.org: domain of kernel@xen0n.name designates 115.28.160.31 as permitted sender) smtp.mailfrom=kernel@xen0n.name;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xen0n.name; s=mail;
	t=1684751114; bh=ZpVp+PlYNh4Srka41PWFXoYRzevT6MmLkXNeP5O8BhE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=xKPMORLB3jzNYi2hBErRSYw0qWDeVov+peIRV9VQPiZMJdHE3D+sz3nyHFRb0o+zI
	 4Hshv/zA/iW5IhHbbizMfout+BQEVfO/iDxdi6SCnHYLt6h+055iWg8fFzR/hYD3z+
	 JoEKh3Fj3nVcGG9jhdED2/5QtSJNI7eoPsqAPrio=
Received: from [100.100.57.122] (unknown [58.34.185.106])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mailbox.box.xen0n.name (Postfix) with ESMTPSA id EAA84600A6;
	Mon, 22 May 2023 18:25:12 +0800 (CST)
Message-ID: <0e5e4a4b-1426-ffae-e958-cf8f9aece166@xen0n.name>
Date: Mon, 22 May 2023 18:25:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.11.0
Content-Language: en-US
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
From: WANG Xuerui <kernel@xen0n.name>
In-Reply-To: <5ae49b7a-b8d2-a822-65bc-6a894d2b1b4e@189.cn>
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Queue-Id: 602753EF52
X-Spamd-Bar: -----
X-MailFrom: kernel@xen0n.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y3QVGOW6SKYRPPVJYMKHXL4NCQIJEAKM
X-Message-ID-Hash: Y3QVGOW6SKYRPPVJYMKHXL4NCQIJEAKM
X-Mailman-Approved-At: Wed, 24 May 2023 09:35:53 +0000
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y3QVGOW6SKYRPPVJYMKHXL4NCQIJEAKM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMy81LzIyIDE4OjE3LCBTdWkgSmluZ2Zlbmcgd3JvdGU6DQo+IEhpLA0KPiANCj4gT24g
MjAyMy81LzIyIDE4OjA1LCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+IE9uIDIwMjMvNS8yMiAxNzo0
OSwgU3VpIEppbmdmZW5nIHdyb3RlOg0KPj4+IEhpLA0KPj4+DQo+Pj4gT24gMjAyMy81LzIyIDE3
OjI4LCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+Pj4gT24gMjAyMy81LzIyIDE3OjI1LCBTdWkgSmlu
Z2Zlbmcgd3JvdGU6DQo+Pj4+PiBIaSwNCj4+Pj4+DQo+Pj4+PiBPbiAyMDIzLzUvMjEgMjA6MjEs
IFdBTkcgWHVlcnVpIHdyb3RlOg0KPj4+Pj4+PiArICogTFMzQTQwMDAvTFMzQTUwMDAvTFMzQTYw
MDAgQ1BVLCB0aGV5IGFyZSBlcXVpcHBlZCB3aXRoIA0KPj4+Pj4+PiBvbi1ib2FyZCB2aWRlbyBS
QU0NCj4+Pj4+Pj4gKyAqIHR5cGljYWxseS4gV2hpbGUgTFMySzA1MDAvTFMySzEwMDAvTFMySzIw
MDAgYXJlIGxvdyBjb3N0IFNvQ3MgDQo+Pj4+Pj4+IHdoaWNoIHNoYXJlDQo+Pj4+Pj4+ICsgKiB0
aGUgc3lzdGVtIFJBTSBhcyB2aWRlbyBSQU0sIHRoZXkgZG9uJ3QgaGFzIGEgZGVkaWFjYXRlZCBW
UkFNLg0KPj4+Pj4+DQo+Pj4+Pj4gQ1BVIG1vZGVscyBhcmUgbm90IHR5cGljYWxseSBwcmVmaXhl
ZCB3aXRoICJMUyIsIHNvICJMb29uZ3NvbiANCj4+Pj4+PiAzQTQwMDAvM0E1MDAwLzNBNjAwMCIu
DQo+Pj4+Pj4NCj4+Pj4+IEhlcmUgaXMgYmVjYXVzZSB3aGVuIHlvdSBkbyBwcm9ncmFtbWluZywg
dmFyaWFibGUgbmFtZSBzaG91bGQgDQo+Pj4+PiBwcmVmaXggd2l0aCBsZXR0ZXJzLg0KPj4+Pg0K
Pj4+PiBDb21taXQgbWVzc2FnZXMsIGNvbW1lbnRzLCBhbmQgbG9nIG1lc3NhZ2VzIGV0Yy4gYXJl
IG5hdHVyYWwgDQo+Pj4+IGxhbmd1YWdlLCBzbyBpdCdzIGJldHRlciB0byB0cmVhdCB0aGVtIGRp
ZmZlcmVudGx5LiBObyBwcm9ibGVtIHRvIA0KPj4+PiBrZWVwIGNvZGUgYXMtaXMgSU1PLg0KPj4+
Pg0KPj4+IFRoZW4geW91IGdldCB0d28gbmFtZSBmb3IgYSBzaW5nbGUgY2hpcCzCoCB0YWtlwqAg
TFM3QTEwMDAgYXMgYW4gZXhhbXBsZS4NCj4+Pg0KPj4+IFlvdSBuYW1lIGl0IGFzIExvb25nc29u
IDdBMTAwMCBpbiBjb21taXQgbWVzc2FnZSzCoCBhbmQgdGhlbiB5b3UgaGF2ZSANCj4+PiB0byBk
ZWZpbmUgYW5vdGhlciBuYW1lIGluIHRoZSBjb2RlLMKgIHNheSBMUzdBMTAwMC4NCj4+Pg0KPj4+
ICJMb29uZ3NvbiA3QTEwMDAiIGlzIHRvbyBsb25nLMKgIG5vdCBhcyBjb21wYWN0IGFzIExTN0Ex
MDAwLg0KPj4+DQo+Pj4gVGhpcyBhbHNvIGF2b2lkIGJpbmQgdGhlIGNvbXBhbnkgbmFtZSB0byBh
IHNwZWNpZmljIHByb2R1Y3QsIGJlY2F1c2UgDQo+Pj4gYSBjb21wYW55IGNhbiBwcm9kdWNlIG1h
bnkgcHJvZHVjdC4NCj4+DQo+PiBOYWgsIHRoZSBleGlzdGluZyBjb252ZW50aW9uIGlzICJMUzdY
eHh4eCIgZm9yIGJyaWRnZXMgYW5kICJMb29uZ3NvbiANCj4+IDNBeHh4eCIgZm9yIENQVXMgKFNv
Q3MgbGlrZSAySyBmYWxsIHVuZGVyIHRoaXMgY2F0ZWdvcnkgdG9vKS4gSXQncyANCj4+IGJldHRl
ciB0byBzdGljayB3aXRoIGV4aXN0aW5nIHByYWN0aWNlIHNvIGl0IHdvdWxkIGJlIGZhbWlsaWFy
IHRvIA0KPj4gbG9uZy10aW1lIExvb25nc29uL0xvb25nQXJjaCBkZXZlbG9wZXJzLCBidXQgSSBw
ZXJzb25hbGx5IGRvbid0IHRoaW5rIA0KPj4gaXQgd2lsbCBoYW1wZXIgdW5kZXJzdGFuZGluZyBp
ZiB5b3UgZmVlbCBsaWtlIGRvaW5nIG90aGVyd2lzZS4NCj4+DQo+IENhbiB5b3UgZXhwbGFpbiB3
aHkgaXQgaXMgYmV0dGVyPw0KPiANCj4gaXMgaXQgdGhhdCB0aGUgYWxyZWFkeSBleGlzdGluZyBp
cyBiZXR0ZXIgPw0KDQpJdCdzIG5vdCBhYm91dCBzdWJqZWN0aXZlIHBlcmNlcHRpb24gb2YgImJl
dHRlciIgb3IgIndvcnNlIiwgYnV0IGFib3V0IA0KdHJlZS13aWRlIGNvbnNpc3RlbmN5LCBhbmQg
YWJvdXQgcmVkdWNpbmcgYW55IHBvdGVudGlhbCBjb25mdXNpb24gZnJvbSANCm5ld2NvbWVycy4g
SSByZW1lbWJlciBIdWFjYWkgb25jZSBwb2ludGluZyBvdXQgdGhhdCBvdXRzaWRlcnMgdXN1YWxs
eSANCmhhdmUgYSBoYXJkIHRpbWUgcmVtZW1iZXJpbmcgIjEsIDIsIGFuZCAzIGFyZSBDUFVzLCBz
b21lIDIgYXJlIFNvQ3MsIDcgDQphcmUgYnJpZGdlIGNoaXBzIiwgYW5kIGNvbnNpc3RlbnRseSBy
ZWZlcnJpbmcgdG8gdGhlIGJyaWRnZSBjaGlwcyANCnRocm91Z2hvdXQgdGhlIHRyZWUgYXMgIkxT
N0EiIGhlbHBlZC4NCg0KSW4gYW55IGNhc2UsIGZvciB0aGUgc2FrZSBvZiBjb25zaXN0ZW5jeSwg
eW91IGNhbiBkZWZpbml0ZWx5IHJlZmVyIHRvIA0KdGhlIENQVSBtb2RlbHMgaW4gbmF0dXJhbCBs
YW5ndWFnZSBsaWtlICJMUzNBeHh4eCI7IGp1c3QgbWFrZSBzdXJlIHRvIA0KcmVmYWN0b3IgZm9y
IGV4YW1wbGUgZXZlcnkgb2NjdXJyZW5jZSBpbiBhcmNoL2xvb25nYXJjaCBhbmQgb3RoZXIgcGFy
dHMgDQpvZiBkcml2ZXJzLy4gVGhhdCdzIGEgbG90IG9mIGNodXJuLCB0aG91Z2gsIHNvIEkgZG9u
J3QgZXhwZWN0IHN1Y2ggDQpjaGFuZ2VzIHRvIGdldCBhY2NlcHRlZCwgYW5kIHRoYXQncyB3aHkg
dGhlIHRyZWUtd2lkZSBjb25zaXN0ZW5jeSBzaG91bGQgDQpiZSBmYXZvcmVkIG92ZXIgdGhlIGxv
Y2FsIG9uZS4NCg0KLS0gDQpXQU5HICJ4ZW4wbiIgWHVlcnVpDQoNCkxpbnV4L0xvb25nQXJjaCBt
YWlsaW5nIGxpc3Q6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xvb25nYXJjaC8NCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
