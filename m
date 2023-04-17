Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9896E4110
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Apr 2023 09:32:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE5433F98D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Apr 2023 07:32:15 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.103])
	by lists.linaro.org (Postfix) with ESMTP id 2BAD33EC06
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Apr 2023 07:32:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.103 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:33518.461400368
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id 9940B100248;
	Mon, 17 Apr 2023 15:32:04 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-tj646 with ESMTP id 3150ac44627a4b4cb80ece4c13008730 for christian.koenig@amd.com;
	Mon, 17 Apr 2023 15:32:07 CST
X-Transaction-ID: 3150ac44627a4b4cb80ece4c13008730
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <35ebedcb-cec7-54ea-2d60-8a8db19269ea@189.cn>
Date: Mon, 17 Apr 2023 15:32:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, David Airlie <airlied@gmail.com>,
 Li Yi <liyi@loongson.cn>
References: <20230416143849.1142779-1-suijingfeng@loongson.cn>
 <a8ca8691-5507-a80d-357c-43d45a44d799@amd.com>
Content-Language: en-US
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <a8ca8691-5507-a80d-357c-43d45a44d799@amd.com>
X-Spamd-Result: default: False [-7.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[amd.com,linaro.org,gmail.com,loongson.cn];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	FREEMAIL_FROM(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2BAD33EC06
X-Spamd-Bar: -------
Message-ID-Hash: R6XBJVHPLBIKK62H6ZAB7TZQPSCSPOUJ
X-Message-ID-Hash: R6XBJVHPLBIKK62H6ZAB7TZQPSCSPOUJ
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma-resv.c: fix a typo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R6XBJVHPLBIKK62H6ZAB7TZQPSCSPOUJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNC8xNyAxNDo1OCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0g
MTYuMDQuMjMgdW0gMTY6Mzggc2NocmllYiBTdWkgSmluZ2Zlbmc6DQo+PiBUaGUgZG1hX3Jlc3Zf
d2FpdF90aW1lb3V0KCkgZnVuY3Rpb24gcmV0dXJuIGEgdmFsdWUgZ3JlYXRlciB0aGFuIHplcm8N
Cj4+IG9uIHN1Y2Nlc3MuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogU3VpIEppbmdmZW5nIDxzdWlq
aW5nZmVuZ0Bsb29uZ3Nvbi5jbj4NCj4NCj4gUmV2aWV3ZWQgYW5kIHB1c2hlZCB0byBkcm0tbWlz
Yy1uZXh0Lg0KPg0KVGhhbmtzLg0KDQo+IFRoYW5rcywNCj4gQ2hyaXN0aWFuLg0KPg0KPj4gLS0t
DQo+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDIgKy0NCj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPj4NCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
DQo+PiBpbmRleCAyYTU5NGI3NTRhZjEuLmI2ZjcxZWIwMDg2NiAxMDA2NDQNCj4+IC0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJl
c3YuYw0KPj4gQEAgLTY2MCw3ICs2NjAsNyBAQCBFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl9n
ZXRfc2luZ2xldG9uKTsNCj4+IMKgwqAgKiBkbWFfcmVzdl9sb2NrKCkgYWxyZWFkeQ0KPj4gwqDC
oCAqIFJFVFVSTlMNCj4+IMKgwqAgKiBSZXR1cm5zIC1FUkVTVEFSVFNZUyBpZiBpbnRlcnJ1cHRl
ZCwgMCBpZiB0aGUgd2FpdCB0aW1lZCBvdXQsIG9yDQo+PiAtICogZ3JlYXRlciB0aGFuIHplciBv
biBzdWNjZXNzLg0KPj4gKyAqIGdyZWF0ZXIgdGhhbiB6ZXJvIG9uIHN1Y2Nlc3MuDQo+PiDCoMKg
ICovDQo+PiDCoCBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3YgKm9i
aiwgZW51bSANCj4+IGRtYV9yZXN2X3VzYWdlIHVzYWdlLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgYm9vbCBpbnRyLCB1bnNpZ25lZCBsb25nIHRpbWVvdXQpDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
