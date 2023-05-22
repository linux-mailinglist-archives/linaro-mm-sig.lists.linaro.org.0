Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3555D70F2FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:37:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33B794142D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:37:09 +0000 (UTC)
Received: from mailbox.box.xen0n.name (mail.xen0n.name [115.28.160.31])
	by lists.linaro.org (Postfix) with ESMTPS id 493F843D11
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 09:09:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=xen0n.name header.s=mail header.b=uiVi4Alx;
	spf=pass (lists.linaro.org: domain of kernel@xen0n.name designates 115.28.160.31 as permitted sender) smtp.mailfrom=kernel@xen0n.name;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xen0n.name; s=mail;
	t=1684746594; bh=SPYiAMAfwsbGLpbFquS7a6DX49n2vxiuay0rOac3rZk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uiVi4AlxpZ232570ViYBvCQl9V7OUZlNX/DFSnXUFQLQFt+yFf0VH/cV/Y0uOXys+
	 kyLDCPJoyJLly2UEJOmrTEPO83GuvAqKTRS/iPk4BLJy23yGz3snLdfwAwHSEwWRqs
	 OorxcMiBwDRusc28o2+fpZ1fd2NT/RpWTKrIFg0g=
Received: from [100.100.57.122] (unknown [58.34.185.106])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mailbox.box.xen0n.name (Postfix) with ESMTPSA id 07042600DA;
	Mon, 22 May 2023 17:09:52 +0800 (CST)
Message-ID: <8cb8e7e9-7287-f8eb-e1d3-52effde0cceb@xen0n.name>
Date: Mon, 22 May 2023 17:09:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.11.0
Content-Language: en-US
To: Sui Jingfeng <15330273260@189.cn>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sui Jingfeng <suijingfeng@loongson.cn>, Li Yi <liyi@loongson.cn>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
References: <20230520105718.325819-1-15330273260@189.cn>
 <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
 <47bfa5a1-8a60-6faa-1983-d8a29589cdb6@189.cn>
From: WANG Xuerui <kernel@xen0n.name>
In-Reply-To: <47bfa5a1-8a60-6faa-1983-d8a29589cdb6@189.cn>
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:115.28.160.31:c];
	R_DKIM_ALLOW(-0.20)[xen0n.name:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:37963, ipnet:115.28.128.0/18, country:CN];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	DKIM_TRACE(0.00)[xen0n.name:+];
	DMARC_NA(0.00)[xen0n.name];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 493F843D11
X-Spamd-Bar: ------
X-MailFrom: kernel@xen0n.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SX7JP3PMEE2NTK7UZFAPW3HVVOBC4EW3
X-Message-ID-Hash: SX7JP3PMEE2NTK7UZFAPW3HVVOBC4EW3
X-Mailman-Approved-At: Wed, 24 May 2023 09:35:05 +0000
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SX7JP3PMEE2NTK7UZFAPW3HVVOBC4EW3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMy81LzIyIDE3OjA1LCBTdWkgSmluZ2Zlbmcgd3JvdGU6DQo+IEhpLA0KPiANCj4gT24g
MjAyMy81LzIxIDIwOjIxLCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vbG9vbmdzb24vbHNkY19kZWJ1Z2ZzLmMNCj4+PiBAQCAtMCwwICsxLDkxIEBADQo+Pj4g
Ky8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKw0KPj4+ICsvKg0KPj4+ICsgKiBD
b3B5cmlnaHQgKEMpIDIwMjMgTG9vbmdzb24gVGVjaG5vbG9neSBDb3Jwb3JhdGlvbiBMaW1pdGVk
DQo+Pj4gKyAqLw0KPj4+ICsNCj4+PiArI2luY2x1ZGUgPGRybS9kcm1fZGVidWdmcy5oPg0KPj4+
ICsNCj4+PiArI2luY2x1ZGUgImxzZGNfYmVuY2htYXJrLmgiDQo+Pj4gKyNpbmNsdWRlICJsc2Rj
X2Rydi5oIg0KPj4+ICsjaW5jbHVkZSAibHNkY19nZW0uaCINCj4+PiArI2luY2x1ZGUgImxzZGNf
cHJvYmUuaCINCj4+PiArI2luY2x1ZGUgImxzZGNfdHRtLmgiDQo+Pj4gKw0KPj4+ICsvKiBkZXZp
Y2UgbGV2ZWwgZGVidWdmcyAqLw0KPj4+ICsNCj4+PiArc3RhdGljIGludCBsc2RjX2lkZW50aWZ5
KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqYXJnKQ0KPj4+ICt7DQo+Pj4gK8KgwqDCoCBzdHJ1
Y3QgZHJtX2luZm9fbm9kZSAqbm9kZSA9IChzdHJ1Y3QgZHJtX2luZm9fbm9kZSAqKW0tPnByaXZh
dGU7DQo+Pj4gK8KgwqDCoCBzdHJ1Y3QgbHNkY19kZXZpY2UgKmxkZXYgPSAoc3RydWN0IGxzZGNf
ZGV2aWNlIA0KPj4+ICopbm9kZS0+aW5mb19lbnQtPmRhdGE7DQo+Pj4gK8KgwqDCoCBjb25zdCBz
dHJ1Y3QgbG9vbmdzb25fZ2Z4X2Rlc2MgKmdmeCA9IHRvX2xvb25nc29uX2dmeChsZGV2LT5kZXNj
cCk7DQo+Pj4gK8KgwqDCoCB1OCBpbXBsLCByZXY7DQo+Pj4gKw0KPj4+ICvCoMKgwqAgbG9vbmdz
b25fY3B1X2dldF9wcmlkKCZpbXBsLCAmcmV2KTsNCj4+PiArDQo+Pj4gK8KgwqDCoCBzZXFfcHJp
bnRmKG0sICJSdW5uaW5nIG9uIGNwdSAweCV4LCBjcHUgcmV2aXNpb246IDB4JXhcbiIsDQo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgIGltcGwsIHJldik7DQo+Pg0KPj4gSXMgdGhpcyByZWFsbHkg
bmVlZGVkL3JlbGV2YW50IGZvciBMU0RDIGlkZW50aWZpY2F0aW9uPyBBRkFJQ1MgdGhlIA0KPj4g
bG9vbmdzb25fY3B1X2dldF9wcmlkIGhlbHBlciBoYXMgb25seSBvbmUgdXNlICh0aGF0J3MgaGVy
ZSksIA0KPiANCj4gWWVzLCB0aGlzIGlzIHJlYWxseSBuZWVkZWQsIHdoZW4gZG9pbmcgdGhlIHJl
bW90ZSBkZWJ1Z2dpbmcsIHNvbWV0aW1lIA0KPiB5b3Ugb25seSBoYXZlIGEgc3NoIGxvZ2luIHRo
ZSB0YXJnZXQgbWFjaGluZS4NCj4gDQo+IFVzZXIgb2YgdGhlIGRyaXZlciBjb3VsZCBrbm93IHdo
YXQgdGhlIGhvc3QgaXMgaW4gdGhlIERSTSB3YXkuDQoNCk9rYXksIHNvIGl0J3MgdW5hdm9pZGFi
bGUgY291cGxpbmcgb2YgQ1BVIGFuZCBEQyBtb2RlbHMsIGJlY2F1c2UgdGhlIERDIA0KaGFyZHdh
cmUgcmV2aXNpb24gY2Fubm90IGJlIGRldGVybWluZWQgYnkgbG9va2luZyBhdCBpdHMgcmV2aXNp
b24gZmllbGQgDQphbG9uZSAoaS5lLiBtdWx0aXBsZSBhY3R1YWwgSFcgbWFrZXMgYmVoYXZpbmcg
ZGlmZmVyZW50bHksIGJ1dCBzaGFyaW5nIA0Kb25lIERDIHJldmlzaW9uKS4NCg0KSSd2ZSBhbHdh
eXMgaG9wZWQgdGhpbmdzIHdlcmUgZGlmZmVyZW50IGluIHRoZSBMb29uZ0FyY2ggZXJhLCB0dXJu
cyBvdXQgDQpzb21lb25lIGhhcyBmYWlsZWQgbWUgOi0vIFRoZW4gcHJvYmFibHkgeW91IHNob3Vs
ZCBtZW50aW9uIHRoZSBuZWNlc3NpdHkgDQpvZiB0aGUgY291cGxpbmcgc29tZXdoZXJlIHdpdGgg
Y29tbWVudHMuDQoNCj4gDQo+PiBzbyBpZiBpdCdzIG5vdCBhYnNvbHV0ZWx5IG5lY2Vzc2FyeSB5
b3UgY2FuIGp1c3QgZ2V0IHJpZCBvZiB0aGF0IA0KPj4gZnVuY3Rpb24gYW5kIGxzZGNfcHJvYmUu
aCBhbHRvZ2V0aGVyLg0KPiBUaGlzIGZ1bmN0aW9uIGl0IHdyaXR0ZW4gZm9yIHRoZSBmdXR1cmUs
IEl0IHdpbGwgbm90IGJlIHJlbW92ZWQuDQoNClVzdWFsbHkgd2Ugb25seSBpbnRyb2R1Y2UgY29k
ZSB3aGVuIG5lY2Vzc2FyeS4gRm9yIG5vdyBpZiBvdGhlcnMgYXJlIA0KZmluZSB3aXRoIHRoaXMg
dGhlbiBJJ2QgYmUgZmluZSB0b28uDQoNCj4+DQo+Pj4gKw0KPj4+ICvCoMKgwqAgc2VxX3ByaW50
ZihtLCAiQ29udGFpbmVkIGluOiAlc1xuIiwgZ2Z4LT5tb2RlbCk7DQo+Pg0KPj4gIm1vZGVsOiAi
IHdvdWxkIGJlIG1vcmUgYXBwcm9wcmlhdGUgZm9yIGEgcGllY2Ugb2YgaW5mbyBsb29raW5nIGxp
a2UgYSANCj4+ICJnZngtPm1vZGVsIj8NCj4gTm8sIHRoZXNlIGFyZSBuZWFybHkgZXF1aXZhbGVu
dC4NCg0KV2hpbGUgSSBkb24ndCBjb21wbGV0ZWx5IGdldCB3aHksIGl0J3MgbW9zdGx5IGEgc3R5
bGlzdGljIHJlY29tbWVuZGF0aW9uIA0Kc28gbWF5YmUgaXQncyBva2F5IGFueXdheS4gSXQncyBq
dXN0IGRlYnVnIGluZm9ybWF0aW9uIGFmdGVyIGFsbC4NCg0KLS0gDQpXQU5HICJ4ZW4wbiIgWHVl
cnVpDQoNCkxpbnV4L0xvb25nQXJjaCBtYWlsaW5nIGxpc3Q6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xvb25nYXJjaC8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
