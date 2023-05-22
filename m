Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FFC70F2F2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:36:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BE4F4140E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:36:08 +0000 (UTC)
Received: from mailbox.box.xen0n.name (mail.xen0n.name [115.28.160.31])
	by lists.linaro.org (Postfix) with ESMTPS id BCFA93EF21
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 08:42:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=xen0n.name header.s=mail header.b=gHuZb871;
	spf=pass (lists.linaro.org: domain of kernel@xen0n.name designates 115.28.160.31 as permitted sender) smtp.mailfrom=kernel@xen0n.name;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xen0n.name; s=mail;
	t=1684744962; bh=KpoRxSTMXjvQHeAOX030xl1ELhy5opCOdNVTtUGkJz8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gHuZb871pYewey0RthFhrNb0TNW+AwaRzsYWELrrrX5sW4hIvUxU+RutrBtK4JaZc
	 jaq1DKg24eRm7w/Lmxd+VZL9/ZDHRAuUU4pp1CFwKwglnfbQrGom2lDl4se54en8Nb
	 e1VUET/KsQqei8wgwRwItcjUI++Bfpb1FL160rrI=
Received: from [100.100.57.122] (unknown [58.34.185.106])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mailbox.box.xen0n.name (Postfix) with ESMTPSA id B9D32600DA;
	Mon, 22 May 2023 16:42:41 +0800 (CST)
Message-ID: <9075974f-d130-6398-b7df-7f2e67caedb0@xen0n.name>
Date: Mon, 22 May 2023 16:42:41 +0800
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
 <73447e35-f4df-9871-6210-b7bf1a3f04fc@189.cn>
 <97fe7af2-0a93-3f28-db6e-40a9b0798d49@xen0n.name>
 <d8e7a1ee-317c-6b44-27eb-ea637f8813ec@189.cn>
From: WANG Xuerui <kernel@xen0n.name>
In-Reply-To: <d8e7a1ee-317c-6b44-27eb-ea637f8813ec@189.cn>
X-Spamd-Result: default: False [-11.00 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[xen0n.name:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[115.28.160.31:from];
	R_DKIM_ALLOW(-0.20)[xen0n.name:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:115.28.160.31];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[xen0n.name];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.xen0n.name:rdns,mailbox.box.xen0n.name:helo,xen0n.name:dkim];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	TAGGED_RCPT(0.00)[renesas];
	DKIM_TRACE(0.00)[xen0n.name:+];
	ASN(0.00)[asn:37963, ipnet:115.28.128.0/18, country:CN];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BCFA93EF21
X-Spamd-Bar: -----------
X-MailFrom: kernel@xen0n.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: J76LO3LVTH2REOZTDXPMJ7NKU7RYNR65
X-Message-ID-Hash: J76LO3LVTH2REOZTDXPMJ7NKU7RYNR65
X-Mailman-Approved-At: Wed, 24 May 2023 09:34:59 +0000
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J76LO3LVTH2REOZTDXPMJ7NKU7RYNR65/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMy81LzIyIDE2OjI5LCBTdWkgSmluZ2Zlbmcgd3JvdGU6DQo+IA0KPiBPbiAyMDIzLzUv
MjIgMTY6MDksIFdBTkcgWHVlcnVpIHdyb3RlOg0KPj4gT24gMjAyMy81LzIyIDE2OjAyLCBTdWkg
SmluZ2Zlbmcgd3JvdGU6DQo+Pj4gSGksDQo+Pj4NCj4+PiBPbiAyMDIzLzUvMjEgMjA6MjEsIFdB
TkcgWHVlcnVpIHdyb3RlOg0KPj4+Pj4gLS0tIC9kZXYvbnVsbA0KPj4+Pj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2xvb25nc29uL0tjb25maWcNCj4+Pj4+IEBAIC0wLDAgKzEsMTcgQEANCj4+Pj4+
ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+Pj4+PiArDQo+Pj4+PiArY29u
ZmlnIERSTV9MT09OR1NPTg0KPj4+Pj4gK8KgwqDCoCB0cmlzdGF0ZSAiRFJNIHN1cHBvcnQgZm9y
IExvb25nc29uIEdyYXBoaWNzIg0KPj4+Pj4gK8KgwqDCoCBkZXBlbmRzIG9uIERSTSAmJiBQQ0kg
JiYgTU1VDQo+Pj4+PiArwqDCoMKgIHNlbGVjdCBEUk1fS01TX0hFTFBFUg0KPj4+Pj4gK8KgwqDC
oCBzZWxlY3QgRFJNX1RUTQ0KPj4+Pj4gK8KgwqDCoCBzZWxlY3QgSTJDDQo+Pj4+PiArwqDCoMKg
IHNlbGVjdCBJMkNfQUxHT0JJVA0KPj4+Pj4gK8KgwqDCoCBoZWxwDQo+Pj4+PiArwqDCoMKgwqDC
oCBUaGlzIGlzIGEgRFJNIGRyaXZlciBmb3IgTG9vbmdzb24gR3JhcGhpY3MsIGl0IG1heSBpbmNs
dWRpbmcNCj4+Pj4+ICvCoMKgwqDCoMKgIExTN0EyMDAwLCBMUzdBMTAwMCwgTFMySzIwMDAgYW5k
IExTMksxMDAwIGV0Yy4gTG9vbmdzb24gTFM3QQ0KPj4+Pj4gK8KgwqDCoMKgwqAgc2VyaWVzIGFy
ZSBicmlkZ2UgY2hpcHNldCwgd2hpbGUgTG9vbmdzb24gTFMySyBzZXJpZXMgYXJlIFNvQy4NCj4+
Pj4+ICsNCj4+Pj4+ICvCoMKgwqDCoMKgIElmICJNIiBpcyBzZWxlY3RlZCwgdGhlIG1vZHVsZSB3
aWxsIGJlIGNhbGxlZCBsb29uZ3Nvbi4NCj4+Pj4NCj4+Pj4gSnVzdCAibG9vbmdzb24iPyANCj4+
Pg0KPj4+IFllcyzCoCB3aGVuIGNvbXBpbGUgdGhpcyBkcml2ZXIgYXMgbW9kdWxlLMKgIGxvb25n
c29uLmtvIHdpbGwgYmUgDQo+Pj4gZ2VuZXJhdGVkLg0KPj4+DQo+Pj4gwqDCoGRybSByYWRlb24g
aXMgYWxzbyBkb2luZyBzbywgU2VlIGRybS9yYWRlb24vS2NvbmZpZy4NCj4+Pg0KPj4+PiBJIGtu
b3cgaXQncyBsaWtlIHRoaXMgZm9yIGFnZXMgKGF0IGxlYXN0IGRhdGluZyBiYWNrIHRvIHRoZSBN
SVBTIA0KPj4+PiBkYXlzKSBidXQgeW91IHJlYWxseSBkb24ndCB3YW50IHRvIGltcGx5IExvb25n
c29uIGlzIG1haW5seSBhIEdQVSANCj4+Pj4gY29tcGFueS4gU29tZXRoaW5nIGxpa2UgImxvb25n
c29uX2RybSIgb3IgImxzZGMiIG9yICJnc2dwdSIgY291bGQgYmUgDQo+Pj4+IGJldHRlci4gDQo+
Pj4NCj4+PiBObywgdGhlc2UgbmFtZSBtYXkgaGF2ZSBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHBy
b2JsZW1zLg0KPj4+DQo+Pj4gRG93bnN0cmVhbSBkcml2ZXIgYWxyZWFkeSB0YWtlbiB0aG9zZSBu
YW1lLg0KPj4+DQo+Pj4gdXNlcnNwYWNlIGRyaXZlciBuZWVkIHRvIGRpZmZlcmVudGlhdGUgdGhl
bSB3aG8gaXMgd2hvLg0KPj4NCj4+IElNTyB0aGlzIHNob3VsZG4ndCBiZSBhIHByb2JsZW0uIExl
dCBtZSB0cnkgZXhwbGFpbmluZyB0aGlzOiANCj4+IGN1cnJlbnRseSwgdXBzdHJlYW0gLyB0aGUg
Im5ldyB3b3JsZCIgZG9lc24ndCBoYXZlIGFueSBzdXBwb3J0IGZvciANCj4+IHRoaXMgZHJpdmVy
IGF0IGFsbCwgc28gYW55IG5hbWUgd2lsbCB3b3JrOyBqdXN0IHVzZSB3aGF0ZXZlciBpcyANCj4+
IGFwcHJvcHJpYXRlIGZyb20gYW4gdXBzdHJlYW0ncyBwZXJzcGVjdGl2ZSwgdGhlbiBtYWtlIHRo
ZSB1c2Vyc3BhY2UgDQo+PiBiaXRzIHJlY29nbml6ZSBib3RoIHZhcmlhbnRzLCBhbmQgeW91J2xs
IGJlIGZpbmUuIEFuZCB0aGUgImV4aXN0aW5nIiANCj4+IHVzZXJzcGFjZSBkcml2ZXJzIGNhbiBh
bHNvIGNhcnJ5IHRoZSBjaGFuZ2UsIGl0J2xsIGp1c3QgYmUgYSBicmFuY2ggDQo+PiBuZXZlciB0
YWtlbiBpbiB0aGF0IHNldHVwLg0KPj4NCj4+IFNvLCBJJ20gc3RpbGwgaW4gZmF2b3Igb2Yga2Vl
cGluZyB0aGUgdXBzdHJlYW0gImNsZWFuIiB3aXRob3V0IGR1YmlvdXMgDQo+PiBuYW1lcyBsaWtl
IHRoaXMgKGJhcmUgImxvb25nc29uIikuIFdoYXQgZG8geW91IHRoaW5rIGFib3V0IG15IA0KPj4g
c3VnZ2VzdGlvbiBhYm92ZT8NCj4+DQo+IE5vLA0KPiANCj4gdGhlcmUgaXMgYSAnYXJtJyBmb2xk
ZXIgaW4gdGhlIGRyaXZlcnMvZ3B1L2RybS8swqAgSXQgZG9lc24ndCBzYXkgdGhhdCANCj4gYXJt
IGlzIGEgcHVyZSBncHUgY29tcGFueS4NCj4gDQo+IHRoZXJlIGlzIGEgJ2luZ2VuaWMnIGZvbGRl
ciBpbiB0aGUgZHJpdmVycy9ncHUvZHJtLywgaW5nZW5pYyBhbHNvIGhhdmUgDQo+IHRoZWlyIG93
biBjdXN0b20gQ1BVcy4NCj4gDQo+IHRoZXJlIGlzIGEgJ2FtZCcgZm9sZGVyIGluIHRoZSBkcml2
ZXJzL2dwdS9kcm0vLCB0aGVzZSBkb2Vzbid0IGltcGx5IGFtZCANCj4gaXMgbWFpbmx5IGEgR1BV
IGNvbXBhbnkuDQo+IA0KPiB3aGVuIGEgZm9sZGVyIGVtZXJnZWQgaW4gZHJtLywgaXQgc3RhbmQg
Zm9yIHRoZSBHUFUgcmVsYXRlZCBwYXJ0IG9mIHRoaXMgDQo+IGNvbXBhbnkuDQoNCldoYXQgeW91
IHNhaWQgaXMgY29ycmVjdCwgYnV0IEknbSByZWZlcnJpbmcgdG8gdGhlIG1vZHVsZSBuYW1lLCBp
bnN0ZWFkIA0Kb2YgdGhlIGRpcmVjdG9yeSBuYW1lLiBGb3IgZXhhbXBsZSB0aGUgQU1EIEdQVSBk
cml2ZXIgaXMgY2FsbGVkIA0KImFtZGdwdSIsIG5vdCAiYW1kIjsgc2ltaWxhcmx5LCB0aGUgSW5n
ZW5pYyBEUk0gZHJpdmVyIGlzIGNhbGxlZCANCiJpbmdlbmljLWRybSIsIG5vdCAiaW5nZW5pYyIu
DQoNCi0tIA0KV0FORyAieGVuMG4iIFh1ZXJ1aQ0KDQpMaW51eC9Mb29uZ0FyY2ggbWFpbGluZyBs
aXN0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sb29uZ2FyY2gvDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
