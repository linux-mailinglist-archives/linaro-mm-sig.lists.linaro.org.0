Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E85DE6DD7C9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 12:21:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B02DF3E975
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 10:21:54 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.101])
	by lists.linaro.org (Postfix) with ESMTP id 237D63E975
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Apr 2023 10:21:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.101 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:55572.1747296415
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id F1B78100208;
	Tue, 11 Apr 2023 18:21:37 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-tj646 with ESMTP id 8ce6a0aaf01b4ef78285af8e79f77ddf for emil.l.velikov@gmail.com;
	Tue, 11 Apr 2023 18:21:39 CST
X-Transaction-ID: 8ce6a0aaf01b4ef78285af8e79f77ddf
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <860cb3b3-5247-c6ad-c13a-619cde221208@189.cn>
Date: Tue, 11 Apr 2023 18:21:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Emil Velikov <emil.l.velikov@gmail.com>
References: <20230403171304.2157326-1-suijingfeng@loongson.cn>
 <20230403171304.2157326-3-suijingfeng@loongson.cn>
 <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 237D63E975
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,loongson.cn,vger.kernel.org,lists.freedesktop.org,lists.loongnix.cn];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	NEURAL_HAM(-0.00)[-0.903];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: FRXUAK5AFFWLPDEEKPV22WA64YLHZWPN
X-Message-ID-Hash: FRXUAK5AFFWLPDEEKPV22WA64YLHZWPN
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FRXUAK5AFFWLPDEEKPV22WA64YLHZWPN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNC80IDIyOjEwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6DQo+PiArc3RhdGlj
IGVudW0gZHJtX21vZGVfc3RhdHVzDQo+PiArbHNkY19tb2RlX2NvbmZpZ19tb2RlX3ZhbGlkKHN0
cnVjdCBkcm1fZGV2aWNlICpkZGV2LA0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIGNv
bnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQ0KPj4gK3sNCj4+ICsgICAgICAgc3Ry
dWN0IGxzZGNfZGV2aWNlICpsZGV2ID0gdG9fbHNkYyhkZGV2KTsNCj4+ICsgICAgICAgY29uc3Qg
c3RydWN0IGRybV9mb3JtYXRfaW5mbyAqaW5mbyA9IGRybV9mb3JtYXRfaW5mbyhEUk1fRk9STUFU
X1hSR0I4ODg4KTsNCj4gU2hvcnQtdGVybSBoYXJkIGNvZGluZyBhIGZvcm1hdCBpcyBmaW5lLCBi
dXQgdGhlcmUgc2hvdWxkIGJlIGEgY29tbWVudA0KPiBkZXNjcmliaW5nIHdoeS4NCkJlY2F1c2Ug
b3VyIGRyaXZlciBvbmx5IHN1cHBvcnQgRFJNX0ZPUk1BVF9YUkdCODg4OCBmcmFtZSBidWZmZXIg
Y3VycmVudGx5Lg0KDQpBZnRlciBjYXJyeSBvdXQgdGhlIElHVCB0ZXN0LCBJIGZvdW5kIHRoaXMg
ZnVuY3Rpb24gbWF5IG5vdCBzdWZmaWNpZW50wqAgDQphbnltb3JlLg0KDQo+PiArICAgICAgIHU2
NCBtaW5fcGl0Y2ggPSBkcm1fZm9ybWF0X2luZm9fbWluX3BpdGNoKGluZm8sIDAsIG1vZGUtPmhk
aXNwbGF5KTsNCj4+ICsgICAgICAgdTY0IGZiX3NpemUgPSBtaW5fcGl0Y2ggKiBtb2RlLT52ZGlz
cGxheTsNCj4+ICsNCj4+ICsgICAgICAgaWYgKGZiX3NpemUgKiAzID4gbGRldi0+dnJhbV9zaXpl
KSB7DQo+IFdoeSBhcmUgd2UgdXNpbmcgMyBoZXJlPyBQbGVhc2UgYWRkIGFuIGlubGluZSBjb21t
ZW50Lg0KPg0KT3JpZ2luYWxseSBsc2RjX21vZGVfY29uZmlnX21vZGVfdmFsaWQoKSBpcyBjb3B5
IGZyb20gZHJtX2dlbV92cmFtX2hlbHBlci5jDQoNCndpdGggdGhlIG9ic2VydmF0aW9uIHRoYXQg
dGhlcmUgbm8gbmVlZCBmb3IgdGhlIGNvbXB1dGUgb2YgdGhlIG51bWJlciBvZiANCnBhZ2VzIGlu
DQoNCnRoZSB0ZXJtcyBvZiBQQUdFX1NJWkUuDQoNCg0KVGhlICczJyBoZXJlIGlzwqAgYSBleHBl
cmllbmNlIG51bWJlciwgaXQgaW50ZW5kIHRvIHJlc3RyaWN0IHNpbmdsZSANCmFsbG9jYXRpb24g
b3ZlcmxhcmdlLg0KDQpJbiBteSBvcGluaW9uLCBpdCBzdGFuZCBmb3Igb25lIGZyYW1lIGJ1ZmZl
ciBwbHVzIGFub3RoZXIgdHdvIGR1bWIgDQpidWZmZXIgYWxsb2NhdGlvbg0KDQp3aGVuIHJ1bm5p
bmfCoCB0aGUgcnVubmluZyBwYWdlZmxpcCB0ZXN0KGZyb20gdGhlIGxpYmRybSBtb2RldGVzdCku
DQoNCg0KVGhlcmVmb3JlLCB0aGUga2VybmVsIHNwYWNlIGRybSBkcml2ZXIgc2hvdWxkIGd1YXJh
bnRlZSBhdCBsZWFzdCAzIHRpbWVzIA0KZnJhbWUgYnVmZmVyDQoNCmFsbG9jYXRpb24gdG8gdGhl
IHVzZXItc3BhY2UuIE90aGVyd2lzZSwgdGhlIHBhZ2VmbGlwIHRlc3QgY2FuIG5vdCBldmVuIA0K
YmVpbmcgYWJsZSB0byBydW4uDQoNCg0KV2hpbGUgd2hlbiB0ZXN0aW5nIHRoaXMgZHJpdmVyIHdp
dGggSUdULCBJIGZvdW5kIHRoZcKgIGR1bWJfYnVmZmVyIHRlc3QgDQpvZiBJR1Qgd2lsbCB0cnkg
dG8NCg0KY3JlYXRlIGEgdmVyeSBsYXJnZSBkdW1iIGJ1ZmZlcizCoCBhcyBsYXJnZSBhcyAyNTZN
QiBpbiBteSBjYXNlLg0KDQpDdXJyZW50bHkgb3VyIGRyaXZlciBjb3VsZCBub3Qgc2F0aXNmeSBz
dWNoIGEgbGFyZ2UgYWxsb2NhdGlvbiwNCg0KSSB0ZXN0IGl0IHdpdGggZHJtL3JhZGVvbiBkcml2
ZXIgb24gTG9vbmdBcmNoIGFuZCBYODYtNjQsIHJlZGVvbiBjYW4gbm90IA0KZXZlbiBwYXNzaW5n
IGl0Lg0KDQoNClRoZSByZXN0cmljdGlvbiBwdXQgaW4gaGVyZSBpcyBub3QgZWZmZWN0aXZlIGFu
eW1vcmUsIGJlY2F1c2UgaXQgaXMgdG9vIA0KbGF0ZS4NCg0KSSdtIHRoaW5rIHdlIHNob3VsZCBw
dXQgdGhlIHJlc3RyaWN0aW9uIGluIHRoZSBsc2RjX2R1bWJfY3JlYXRlKCkgZnVuY3Rpb24uDQoN
CldlIHdpbGwgcmV2aXNlIG91ciBkcml2ZXIgYXQgbmV4dCB2ZXJzaW9uLg0KDQoNCkdyZWF0IHRo
YW5rcyBmb3IgeW91ciB2YWx1YWJsZSByZXZpZXdzLg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
