Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F3C70F2F0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:35:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BFEA341404
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:35:48 +0000 (UTC)
Received: from mailbox.box.xen0n.name (mail.xen0n.name [115.28.160.31])
	by lists.linaro.org (Postfix) with ESMTPS id 55D6D3EF21
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 08:19:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=xen0n.name header.s=mail header.b=Gi7Uq2ik;
	spf=pass (lists.linaro.org: domain of kernel@xen0n.name designates 115.28.160.31 as permitted sender) smtp.mailfrom=kernel@xen0n.name;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xen0n.name; s=mail;
	t=1684743580; bh=RZXp5Ck7yfTaCZh0IwtE2GL3yOChPwPMVkjIgiEYfqs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Gi7Uq2ike/7EE9dkmUHbd0oKSZQH8v8rapxy2X8W4bbdBJ5GxWUvUfwHEV7yogYnz
	 m7b38NCttK19pbrc3o/BaBVBn6QU6kVPIiHCsQYhs/Qyvy99rzq8/4lg90OlErPQp2
	 cf6eE8TeW0uimep7ey+Omw9Quc6taN1r1qEDQsKI=
Received: from [100.100.57.122] (unknown [58.34.185.106])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mailbox.box.xen0n.name (Postfix) with ESMTPSA id DE4E1600DA;
	Mon, 22 May 2023 16:19:39 +0800 (CST)
Message-ID: <74b273dd-4310-0106-a24c-c1b15db8ead9@xen0n.name>
Date: Mon, 22 May 2023 16:19:39 +0800
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
 <6957f8b7-5e37-889f-0b48-d2424b891392@189.cn>
From: WANG Xuerui <kernel@xen0n.name>
In-Reply-To: <6957f8b7-5e37-889f-0b48-d2424b891392@189.cn>
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[58.34.185.106:received];
	R_DKIM_ALLOW(-0.20)[xen0n.name:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:115.28.160.31:c];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:37963, ipnet:115.28.128.0/18, country:CN];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[xen0n.name:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DMARC_NA(0.00)[xen0n.name];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 55D6D3EF21
X-Spamd-Bar: -------
X-MailFrom: kernel@xen0n.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ANZLWGBXWI3PUNW3MY63R5DZ75HOYVN2
X-Message-ID-Hash: ANZLWGBXWI3PUNW3MY63R5DZ75HOYVN2
X-Mailman-Approved-At: Wed, 24 May 2023 09:34:58 +0000
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ANZLWGBXWI3PUNW3MY63R5DZ75HOYVN2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMy81LzIyIDE2OjE0LCBTdWkgSmluZ2Zlbmcgd3JvdGU6DQo+IEhpLA0KPiANCj4gT24g
MjAyMy81LzIxIDIwOjIxLCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+PiArDQo+Pj4gK8KgwqDCoMKg
wqAgSWYgaW4gZG91YnQsIHNheSAiTiIuDQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9sb29uZ3Nvbi9NYWtlZmlsZSANCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9sb29uZ3Nvbi9NYWtl
ZmlsZQ0KPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi45
MTU4ODE2ZWNlOGUNCj4+PiAtLS0gL2Rldi9udWxsDQo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2xvb25nc29uL01ha2VmaWxlDQo+Pj4gQEAgLTAsMCArMSwyMCBAQA0KPj4+ICsjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+Pj4gKw0KPj4+ICtsb29uZ3Nvbi15IDo9IFwNCj4+
PiArwqDCoMKgIGxzZGNfYmVuY2htYXJrLm8gXA0KPj4+ICvCoMKgwqAgbHNkY19jcnRjLm8gXA0K
Pj4+ICvCoMKgwqAgbHNkY19kZWJ1Z2ZzLm8gXA0KPj4+ICvCoMKgwqAgbHNkY19kZXZpY2UubyBc
DQo+Pj4gK8KgwqDCoCBsc2RjX2Rydi5vIFwNCj4+PiArwqDCoMKgIGxzZGNfZ2VtLm8gXA0KPj4+
ICvCoMKgwqAgbHNkY19nZnhwbGwubyBcDQo+Pj4gK8KgwqDCoCBsc2RjX2kyYy5vIFwNCj4+PiAr
wqDCoMKgIGxzZGNfaXJxLm8gXA0KPj4+ICvCoMKgwqAgbHNkY19vdXRwdXRfN2ExMDAwLm8gXA0K
Pj4+ICvCoMKgwqAgbHNkY19vdXRwdXRfN2EyMDAwLm8gXA0KPj4+ICvCoMKgwqAgbHNkY19wbGFu
ZS5vIFwNCj4+PiArwqDCoMKgIGxzZGNfcGl4cGxsLm8gXA0KPj4+ICvCoMKgwqAgbHNkY19wcm9i
ZS5vIFwNCj4+PiArwqDCoMKgIGxzZGNfdHRtLm8NCj4+PiArDQo+Pj4gK29iai0kKENPTkZJR19E
Uk1fTE9PTkdTT04pICs9IGxvb25nc29uLm8NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2xvb25nc29uL2xzZGNfYmVuY2htYXJrLmMgDQo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vbG9v
bmdzb24vbHNkY19iZW5jaG1hcmsuYw0KPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+Pj4gaW5k
ZXggMDAwMDAwMDAwMDAwLi44Mjk2MTUzMWQ4NGMNCj4+PiAtLS0gL2Rldi9udWxsDQo+Pj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2xvb25nc29uL2xzZGNfYmVuY2htYXJrLmMNCj4+PiBAQCAtMCww
ICsxLDEzMyBAQA0KPj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsNCj4+
DQo+PiBJcyBpdCBHUEwtMi4wLCBHUEwtMi4wLW9ubHksIG9yIEdQTC0yLjArPyBQbGVhc2UgbWFr
ZSBzdXJlIGFsbCBsaWNlbnNlIA0KPj4gSURzIGFyZSBjb25zaXN0ZW50LiANCj4gDQo+IA0KPiBJ
IHNlZSBkcm0vdmttcyBpcyBhbHNvIHdyaXRpbmcgdGhlIGNvcHlyaWdodHMgc2ltaWxhci4NCj4g
DQo+IHdpdGggIiMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSIgaW4gdGhl
IE1ha2VmaWxlLA0KPiANCj4gd2hpbGUgIi8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wKyIgaW4gdGhlIEMgc291cmNlIGZpbGUuDQo+IA0KPiBTb3JyeSwgSSdtIHN0dXBpZCwgSSBj
YW4ndCBmaWd1cmUgb3V0IHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlbS4NCj4gDQo+IFBlcnNv
bmFsbHksIEkgcmVhbGx5IGRvbid0IGNhcmUgYWJvdXQgdGhpcyBhcyBhbG9uZyBhcyBjaGVja3Bh
dGNoLnBsIA0KPiBkb24ndCBjb21wbGFpbi4NCj4gDQo+IEkgcmVzcGVjdCB0aGUgbWFpbnRhaW5l
cnMgb2YgRFJNLCB0aGV5IGRpZG4ndCB0b2xkIG1lIHRvIGNoYW5nZSBpdC4NCj4gDQo+IEkgYXNz
dW1lIHRoZXJlIGlzIG5vIHByb2JsZW0uDQoNCkl0J3MgeW91ciB3b3JrIGFmdGVyIGFsbCwgc28g
eW91IGdldCB0byBsaWNlbnNlIHRoZSB3b3JrIGhvd2V2ZXIgeW91IA0Kd2FudCAoaW5zaWRlIHRo
ZSBrZXJuZWwgcHJvamVjdCdzIGxpY2Vuc2luZyByZXF1aXJlbWVudHMsIG9mIGNvdXJzZSksIHNv
IA0KbWFpbnRhaW5lcnMgd29uJ3QgaW50ZXJmZXJlIHdpdGggdGhhdC4NCg0KSSdtIHN1Z2dlc3Rp
bmcgdGhlIGxpY2Vuc2UgZG91YmxlLWNoZWNrIGJlY2F1c2UgdGhlIHdob2xlIGRyaXZlciBpcyBv
bmUgDQpwaWVjZSBvZiB3b3JrLCBzbyBpdCdzIGJldHRlciB0byBiZSBleHRyYSBjbGVhciAoeW91
IERPIHdhbnQgdG8gbWFrZSANCnN1cmUgdGhpbmdzIGFyZSBjbGVhciB3aGVuIGl0IGNvbWVzIHRv
IGNvcHlyaWdodCwgY29tcGxpYW5jZSAmIGV0Yy4pIGFuZCANCm1ha2UgaXQgYXMgY29uc2lzdGVu
dCBhcyBwb3NzaWJsZSwgYnV0IHVsdGltYXRlbHkgaXQncyBvZiBjb3Vyc2UgZG93biB0byANCnlv
dS4gSSB0aGluayB5b3UgbWF5IGtlZXAgdGhpbmdzIGFzLWlzIGlmIG90aGVycyBkb24ndCB2b2lj
ZSB0aGVpciANCmNvbmNlcm5zIGluIHRoZSBjb21pbmcgZGF5cy4NCg0KLS0gDQpXQU5HICJ4ZW4w
biIgWHVlcnVpDQoNCkxpbnV4L0xvb25nQXJjaCBtYWlsaW5nIGxpc3Q6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xvb25nYXJjaC8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
