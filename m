Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B973D70B86C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 11:05:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C60D444DF6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 09:05:19 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.103])
	by lists.linaro.org (Postfix) with ESMTP id 935683EF21
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 09:05:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.103 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:51158.600247562
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id 387F01002CF;
	Mon, 22 May 2023 17:05:11 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-7vx9t with ESMTP id 4e1da2ddffb14c7ea87b889e41f0d88c for kernel@xen0n.name;
	Mon, 22 May 2023 17:05:14 CST
X-Transaction-ID: 4e1da2ddffb14c7ea87b889e41f0d88c
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <47bfa5a1-8a60-6faa-1983-d8a29589cdb6@189.cn>
Date: Mon, 22 May 2023 17:05:10 +0800
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
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
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
	NEURAL_HAM(-0.00)[-0.990];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	FREEMAIL_FROM(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 935683EF21
X-Spamd-Bar: -
Message-ID-Hash: UHEE5RF2SIHSQ6FHU7TUQSJEY5ZLJD5E
X-Message-ID-Hash: UHEE5RF2SIHSQ6FHU7TUQSJEY5ZLJD5E
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UHEE5RF2SIHSQ6FHU7TUQSJEY5ZLJD5E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNS8yMSAyMDoyMSwgV0FORyBYdWVydWkgd3JvdGU6DQo+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vbG9vbmdzb24vbHNkY19kZWJ1Z2ZzLmMNCj4+IEBAIC0wLDAgKzEsOTEg
QEANCj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsNCj4+ICsvKg0KPj4g
KyAqIENvcHlyaWdodCAoQykgMjAyMyBMb29uZ3NvbiBUZWNobm9sb2d5IENvcnBvcmF0aW9uIExp
bWl0ZWQNCj4+ICsgKi8NCj4+ICsNCj4+ICsjaW5jbHVkZSA8ZHJtL2RybV9kZWJ1Z2ZzLmg+DQo+
PiArDQo+PiArI2luY2x1ZGUgImxzZGNfYmVuY2htYXJrLmgiDQo+PiArI2luY2x1ZGUgImxzZGNf
ZHJ2LmgiDQo+PiArI2luY2x1ZGUgImxzZGNfZ2VtLmgiDQo+PiArI2luY2x1ZGUgImxzZGNfcHJv
YmUuaCINCj4+ICsjaW5jbHVkZSAibHNkY190dG0uaCINCj4+ICsNCj4+ICsvKiBkZXZpY2UgbGV2
ZWwgZGVidWdmcyAqLw0KPj4gKw0KPj4gK3N0YXRpYyBpbnQgbHNkY19pZGVudGlmeShzdHJ1Y3Qg
c2VxX2ZpbGUgKm0sIHZvaWQgKmFyZykNCj4+ICt7DQo+PiArwqDCoMKgIHN0cnVjdCBkcm1faW5m
b19ub2RlICpub2RlID0gKHN0cnVjdCBkcm1faW5mb19ub2RlICopbS0+cHJpdmF0ZTsNCj4+ICvC
oMKgwqAgc3RydWN0IGxzZGNfZGV2aWNlICpsZGV2ID0gKHN0cnVjdCBsc2RjX2RldmljZSANCj4+
ICopbm9kZS0+aW5mb19lbnQtPmRhdGE7DQo+PiArwqDCoMKgIGNvbnN0IHN0cnVjdCBsb29uZ3Nv
bl9nZnhfZGVzYyAqZ2Z4ID0gdG9fbG9vbmdzb25fZ2Z4KGxkZXYtPmRlc2NwKTsNCj4+ICvCoMKg
wqAgdTggaW1wbCwgcmV2Ow0KPj4gKw0KPj4gK8KgwqDCoCBsb29uZ3Nvbl9jcHVfZ2V0X3ByaWQo
JmltcGwsICZyZXYpOw0KPj4gKw0KPj4gK8KgwqDCoCBzZXFfcHJpbnRmKG0sICJSdW5uaW5nIG9u
IGNwdSAweCV4LCBjcHUgcmV2aXNpb246IDB4JXhcbiIsDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaW1wbCwgcmV2KTsNCj4NCj4gSXMgdGhpcyByZWFsbHkgbmVlZGVkL3JlbGV2YW50IGZvciBM
U0RDIGlkZW50aWZpY2F0aW9uPyBBRkFJQ1MgdGhlIA0KPiBsb29uZ3Nvbl9jcHVfZ2V0X3ByaWQg
aGVscGVyIGhhcyBvbmx5IG9uZSB1c2UgKHRoYXQncyBoZXJlKSwgDQoNClllcywgdGhpcyBpcyBy
ZWFsbHkgbmVlZGVkLCB3aGVuIGRvaW5nIHRoZSByZW1vdGUgZGVidWdnaW5nLCBzb21ldGltZSAN
CnlvdSBvbmx5IGhhdmUgYSBzc2ggbG9naW4gdGhlIHRhcmdldCBtYWNoaW5lLg0KDQpVc2VyIG9m
IHRoZSBkcml2ZXIgY291bGQga25vdyB3aGF0IHRoZSBob3N0IGlzIGluIHRoZSBEUk0gd2F5Lg0K
DQo+IHNvIGlmIGl0J3Mgbm90IGFic29sdXRlbHkgbmVjZXNzYXJ5IHlvdSBjYW4ganVzdCBnZXQg
cmlkIG9mIHRoYXQgDQo+IGZ1bmN0aW9uIGFuZCBsc2RjX3Byb2JlLmggYWx0b2dldGhlci4NClRo
aXMgZnVuY3Rpb24gaXQgd3JpdHRlbiBmb3IgdGhlIGZ1dHVyZSwgSXQgd2lsbCBub3QgYmUgcmVt
b3ZlZC4NCj4NCj4+ICsNCj4+ICvCoMKgwqAgc2VxX3ByaW50ZihtLCAiQ29udGFpbmVkIGluOiAl
c1xuIiwgZ2Z4LT5tb2RlbCk7DQo+DQo+ICJtb2RlbDogIiB3b3VsZCBiZSBtb3JlIGFwcHJvcHJp
YXRlIGZvciBhIHBpZWNlIG9mIGluZm8gbG9va2luZyBsaWtlIGEgDQo+ICJnZngtPm1vZGVsIj8N
Ck5vLCB0aGVzZSBhcmUgbmVhcmx5IGVxdWl2YWxlbnQuDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
