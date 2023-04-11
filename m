Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF0C6DD501
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 10:18:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 984BB3E975
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 08:18:52 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.103])
	by lists.linaro.org (Postfix) with ESMTP id B4DDE3E975
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Apr 2023 08:18:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.103 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.41:42666.1367120225
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.41])
	by 189.cn (HERMES) with SMTP id DCF741002F3;
	Tue, 11 Apr 2023 16:18:34 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-bkw2h with ESMTP id 586403049fb9408e95ab8dae31b91955 for emil.l.velikov@gmail.com;
	Tue, 11 Apr 2023 16:18:36 CST
X-Transaction-ID: 586403049fb9408e95ab8dae31b91955
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <8c115006-3c06-c063-1381-d82d744871b4@189.cn>
Date: Tue, 11 Apr 2023 16:18:34 +0800
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
X-Rspamd-Queue-Id: B4DDE3E975
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	NEURAL_HAM(-0.00)[-0.956];
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
Message-ID-Hash: 74NHYIEJY4ZM7ZIGTU7XNHJX5XYFCVHM
X-Message-ID-Hash: 74NHYIEJY4ZM7ZIGTU7XNHJX5XYFCVHM
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/74NHYIEJY4ZM7ZIGTU7XNHJX5XYFCVHM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNC80IDIyOjEwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6DQo+PiArICAgICAg
IHZhbCA9IGxzZGNfY3J0Y19ycmVnMzIobGRldiwgTFNEQ19DUlRDMF9DRkdfUkVHLCBpbmRleCk7
DQo+PiArICAgICAgIC8qIGNsZWFyIG9sZCBkbWEgc3RlcCBzZXR0aW5ncyAqLw0KPj4gKyAgICAg
ICB2YWwgJj0gfkNGR19ETUFfU1RFUF9NQVNLOw0KPj4gKw0KPj4gKyAgICAgICBpZiAoZGVzY3At
PmNoaXAgPT0gQ0hJUF9MUzdBMjAwMCkgew0KPj4gKyAgICAgICAgICAgICAgIC8qDQo+PiArICAg
ICAgICAgICAgICAgICogVXNpbmcgbGFyZ2UgZG1hIHN0ZXAgYXMgbXVjaCBhcyBwb3NzaWJsZSwN
Cj4+ICsgICAgICAgICAgICAgICAgKiBmb3IgaW1wcm92ZSBoYXJkd2FyZSBETUEgZWZmaWNpZW5j
eS4NCj4+ICsgICAgICAgICAgICAgICAgKi8NCj4+ICsgICAgICAgICAgICAgICBpZiAod2lkdGhf
aW5fYnl0ZXMgJSAyNTYgPT0gMCkNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHZhbCB8PSBM
U0RDX0RNQV9TVEVQXzI1Nl9CWVRFUzsNCj4+ICsgICAgICAgICAgICAgICBlbHNlIGlmICh3aWR0
aF9pbl9ieXRlcyAlIDEyOCA9PSAwKQ0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgdmFsIHw9
IExTRENfRE1BX1NURVBfMTI4X0JZVEVTOw0KPj4gKyAgICAgICAgICAgICAgIGVsc2UgaWYgKHdp
ZHRoX2luX2J5dGVzICUgNjQgPT0gMCkNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHZhbCB8
PSBMU0RDX0RNQV9TVEVQXzY0X0JZVEVTOw0KPj4gKyAgICAgICAgICAgICAgIGVsc2UgIC8qIHdp
ZHRoX2luX2J5dGVzICUgMzIgPT0gMCAqLw0KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgdmFs
IHw9IExTRENfRE1BX1NURVBfMzJfQllURVM7DQo+PiArICAgICAgIH0NCj4+ICsNCj4+ICsgICAg
ICAgY2xrX2Z1bmMtPnVwZGF0ZShwaXhwbGwsICZwcml2X3N0YXRlLT5wcGFybXMpOw0KPj4gKw0K
PiBXaXRob3V0IGtub3dpbmcgdGhlIGhhcmR3YXJlLCB0aGUgY2xrX2Z1bmMgYWJzdHJhY3Rpb24g
c2VlbXMgcXVpdGUNCj4gYXJiaXRyYXJ5IGFuZCB1bm5lY2Vzc2FyeS4gSXQgc2hvdWxkIGJlIGlu
dHJvZHVjZWQgd2hlbiB0aGVyZSBpcyBhDQo+IHVzZS1jYXNlIGZvciBpdC4NCj4NCj4NClRoZSBj
bGtfZnVuYyBpcyBuZWNlc3NhcnkswqAgY2xrX2Z1bmMtPnVwZGF0ZSgpIHdpbGwgZXZlbnR1YWxs
eSBjYWxsIA0KbHM3YTEwMDBfcGl4cGxsX3BhcmFtX3VwZGF0ZSgpDQoNCnRvIGdlbmVyYXRlIHBp
eGVsIGNsb2NrIGZyZXF1ZW5jeSByZXF1aXJlZCBieSB0aGUgZGlzcGxheSBkZXZpY2UuwqAgVGhl
cmUgDQppcyBhIGFic3RyYWN0IGJlY2F1c2UgZGlmZmVyZW50DQoNCmJyaWRnZXMgY2hpcC9Tb0Mg
dmFyaWFudHMgaGFzIHRoZSBkaWZmZXJlbnQgcmVnaXN0ZXIgdG8gb3BlcmF0ZSwgZWl0aGVyIA0K
YmVjYXVzZSB0aGUgcmVnaXN0ZXIgb2Zmc2V0IGNoYW5nZWQNCg0Kb3IgdGhlIGFycmFuZ2VtZW50
wqAgb2Ygc3BlY2lmaWMgYml0cyBmaWVsZCBjaGFuZ2VkLg0KDQoNCkZvciB0aGUgcG9pbnQgdmll
dyBvZiB0aGUgaGFyZHdhcmUsIHRoZSBQTEwgaGFyZHdhcmUgYmVsb25nIHRvIHRoZSANCmJyaWRn
ZSBjaGlwLg0KDQpUaGVyZSBpcyBhIGNsb2NrIHRyZWUgd2hpY2ggd3JhbmdsZXIgYWxsIG9mIHRo
ZSBQTEwgaGFyZHdhcmUsIHN1Yi1kZXZpY2UgDQptYXkgcGFydGlhbGx5IHNoYXJlIHRoZSBoYXJk
d2FyZSBQTEwuDQoNCg0KVGhlIGFic3RyYWN0aW9uIGlzIHVzZWQgdG8gc3VwcHJlc3MgaGFyZHdh
cmUgdmFyaWFudHMgd2hpY2ggbWF5IGNoYW5nZSBvdmVyIHRpbWUuDQoNCkZvciBsczdhMTAwMCwg
dGhlcmUgaXMgdXNlciBtYW51YWwgZG9jdW1lbnQgYWJvdXQgdGhlIGNsb2NrIHRyZWUgYW5kIFBM
TCwgc2VlWzFdWzJdWzNdDQoNCg0KWzFdIGh0dHBzOi8vbG9vbmdzb24uZ2l0aHViLmlvL0xvb25n
QXJjaC1Eb2N1bWVudGF0aW9uL0xvb25nc29uLTdBMTAwMC11c2VybWFudWFsLUVOI2Rlc2NyaXB0
aW9uLW9mLWNsb2NrLWZ1bmN0aW9uDQpbMl0gaHR0cHM6Ly9sb29uZ3Nvbi5naXRodWIuaW8vTG9v
bmdBcmNoLURvY3VtZW50YXRpb24vTG9vbmdzb24tN0ExMDAwLXVzZXJtYW51YWwtRU4jc2VjdGlv
bi1wbGwtcGl4LTAtY29uZmlndXJhdGlvbi1yZWdpc3Rlcg0KWzNdIGh0dHBzOi8vbG9vbmdzb24u
Z2l0aHViLmlvL0xvb25nQXJjaC1Eb2N1bWVudGF0aW9uL0xvb25nc29uLTdBMTAwMC11c2VybWFu
dWFsLUVOI2NvbmZpZ3VyYXRpb24tbWV0aG9kLW9mLXBsbA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
