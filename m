Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CF370B759
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 10:14:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D806F43D1D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 08:14:47 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.104])
	by lists.linaro.org (Postfix) with ESMTP id 92C713EF13
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 08:14:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.104 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:44024.345458232
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id C5A9F102946;
	Mon, 22 May 2023 16:14:39 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-7vx9t with ESMTP id 007f8fdc7329415ea6894140ca1e23a5 for kernel@xen0n.name;
	Mon, 22 May 2023 16:14:40 CST
X-Transaction-ID: 007f8fdc7329415ea6894140ca1e23a5
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <6957f8b7-5e37-889f-0b48-d2424b891392@189.cn>
Date: Mon, 22 May 2023 16:14:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: WANG Xuerui <kernel@xen0n.name>,
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
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
X-Spamd-Result: default: False [-2.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[183.61.185.104:from,114.242.206.180:received];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FREEMAIL_TO(0.00)[xen0n.name,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	RCPT_COUNT_TWELVE(0.00)[20];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[189.cn];
	RWL_MAILSPIKE_POSSIBLE(0.00)[183.61.185.104:from];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 92C713EF13
X-Spamd-Bar: --
Message-ID-Hash: JYGRFKNCSW3T22XSOQYKKLTD4DRAGONP
X-Message-ID-Hash: JYGRFKNCSW3T22XSOQYKKLTD4DRAGONP
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JYGRFKNCSW3T22XSOQYKKLTD4DRAGONP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNS8yMSAyMDoyMSwgV0FORyBYdWVydWkgd3JvdGU6DQo+PiArDQo+PiAr
wqDCoMKgwqDCoCBJZiBpbiBkb3VidCwgc2F5ICJOIi4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vbG9vbmdzb24vTWFrZWZpbGUgDQo+PiBiL2RyaXZlcnMvZ3B1L2RybS9sb29uZ3Nv
bi9NYWtlZmlsZQ0KPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IDAwMDAwMDAwMDAw
MC4uOTE1ODgxNmVjZThlDQo+PiAtLS0gL2Rldi9udWxsDQo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vbG9vbmdzb24vTWFrZWZpbGUNCj4+IEBAIC0wLDAgKzEsMjAgQEANCj4+ICsjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+PiArDQo+PiArbG9vbmdzb24teSA6PSBcDQo+PiAr
wqDCoMKgIGxzZGNfYmVuY2htYXJrLm8gXA0KPj4gK8KgwqDCoCBsc2RjX2NydGMubyBcDQo+PiAr
wqDCoMKgIGxzZGNfZGVidWdmcy5vIFwNCj4+ICvCoMKgwqAgbHNkY19kZXZpY2UubyBcDQo+PiAr
wqDCoMKgIGxzZGNfZHJ2Lm8gXA0KPj4gK8KgwqDCoCBsc2RjX2dlbS5vIFwNCj4+ICvCoMKgwqAg
bHNkY19nZnhwbGwubyBcDQo+PiArwqDCoMKgIGxzZGNfaTJjLm8gXA0KPj4gK8KgwqDCoCBsc2Rj
X2lycS5vIFwNCj4+ICvCoMKgwqAgbHNkY19vdXRwdXRfN2ExMDAwLm8gXA0KPj4gK8KgwqDCoCBs
c2RjX291dHB1dF83YTIwMDAubyBcDQo+PiArwqDCoMKgIGxzZGNfcGxhbmUubyBcDQo+PiArwqDC
oMKgIGxzZGNfcGl4cGxsLm8gXA0KPj4gK8KgwqDCoCBsc2RjX3Byb2JlLm8gXA0KPj4gK8KgwqDC
oCBsc2RjX3R0bS5vDQo+PiArDQo+PiArb2JqLSQoQ09ORklHX0RSTV9MT09OR1NPTikgKz0gbG9v
bmdzb24ubw0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9sb29uZ3Nvbi9sc2RjX2Jl
bmNobWFyay5jIA0KPj4gYi9kcml2ZXJzL2dwdS9kcm0vbG9vbmdzb24vbHNkY19iZW5jaG1hcmsu
Yw0KPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uODI5NjE1
MzFkODRjDQo+PiAtLS0gL2Rldi9udWxsDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbG9vbmdz
b24vbHNkY19iZW5jaG1hcmsuYw0KPj4gQEAgLTAsMCArMSwxMzMgQEANCj4+ICsvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsNCj4NCj4gSXMgaXQgR1BMLTIuMCwgR1BMLTIuMC1v
bmx5LCBvciBHUEwtMi4wKz8gUGxlYXNlIG1ha2Ugc3VyZSBhbGwgbGljZW5zZSANCj4gSURzIGFy
ZSBjb25zaXN0ZW50LiANCg0KDQpJIHNlZSBkcm0vdmttcyBpcyBhbHNvIHdyaXRpbmcgdGhlIGNv
cHlyaWdodHMgc2ltaWxhci4NCg0Kd2l0aCAiIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMC1vbmx5IiBpbiB0aGUgTWFrZWZpbGUsDQoNCndoaWxlICIvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMCsiIGluIHRoZSBDIHNvdXJjZSBmaWxlLg0KDQpTb3JyeSwgSSdtIHN0
dXBpZCwgSSBjYW4ndCBmaWd1cmUgb3V0IHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlbS4NCg0K
UGVyc29uYWxseSwgSSByZWFsbHkgZG9uJ3QgY2FyZSBhYm91dCB0aGlzIGFzIGFsb25nIGFzIGNo
ZWNrcGF0Y2gucGwgDQpkb24ndCBjb21wbGFpbi4NCg0KSSByZXNwZWN0IHRoZSBtYWludGFpbmVy
cyBvZiBEUk0sIHRoZXkgZGlkbid0IHRvbGQgbWUgdG8gY2hhbmdlIGl0Lg0KDQpJIGFzc3VtZSB0
aGVyZSBpcyBubyBwcm9ibGVtLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
