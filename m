Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B69E56DD03A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 05:34:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5830A3F5AD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 03:34:03 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.103])
	by lists.linaro.org (Postfix) with ESMTP id 5BA583E944
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Apr 2023 03:33:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.103 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.41:8615.1212641597
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.41])
	by 189.cn (HERMES) with SMTP id 47F091002B2;
	Tue, 11 Apr 2023 11:33:40 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-ljp89 with ESMTP id eb8c5b28e13a40fbb0aae97340f6b575 for emil.l.velikov@gmail.com;
	Tue, 11 Apr 2023 11:33:43 CST
X-Transaction-ID: eb8c5b28e13a40fbb0aae97340f6b575
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <2833ed06-7f8a-b8c1-404e-b481b2fedb3f@189.cn>
Date: Tue, 11 Apr 2023 11:33:39 +0800
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
X-Rspamd-Queue-Id: 5BA583E944
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.991];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,loongson.cn,vger.kernel.org,lists.freedesktop.org];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[183.61.185.103:query timed out,114.242.206.180:query timed out];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: HED5VW2Y2JNZC2RSM4UELI2TEOKJ4HSD
X-Message-ID-Hash: HED5VW2Y2JNZC2RSM4UELI2TEOKJ4HSD
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HED5VW2Y2JNZC2RSM4UELI2TEOKJ4HSD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNC80IDIyOjEwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6DQo+PiAtLS0gL2Rl
di9udWxsDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbG9vbmdzb24vbHNkY19kZWJ1Z2ZzLmMN
Cj4+ICt2b2lkIGxzZGNfZGVidWdmc19pbml0KHN0cnVjdCBkcm1fbWlub3IgKm1pbm9yKQ0KPj4g
K3sNCj4+ICsjaWZkZWYgQ09ORklHX0RFQlVHX0ZTDQo+PiArICAgICAgIGRybV9kZWJ1Z2ZzX2Ny
ZWF0ZV9maWxlcyhsc2RjX2RlYnVnZnNfbGlzdCwNCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIEFSUkFZX1NJWkUobHNkY19kZWJ1Z2ZzX2xpc3QpLA0KPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgbWlub3ItPmRlYnVnZnNfcm9vdCwNCj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIG1pbm9yKTsNCj4+ICsjZW5kaWYNCj4+ICt9DQo+IFNob3Vs
ZCBwcm9iYWJseSBidWlsZCB0aGUgZmlsZSB3aGVuIGRlYnVnZnMgaXMgZW5hYmxlZCBhbmQgcHJv
dmlkZQ0KPiBuby1vcCBzdHViIGluIHRoZSBoZWFkZXIuIFNlZSBub3V2ZWF1IGZvciBhbiBleGFt
cGxlLg0KPg0KQnV0IGRvaW5nIHRoYXQgd2F5IGludHJvZHVjZSBkdXBsaWNhdGlvbizCoCB5b3Ug
YWN0dWFsbHkgd3JpdGUgdHdvIA0KaW1wbGVtZW50cyBmb3IgdGhlIHNhbWUgZnVuY3Rpb24gcHJv
dG90eXBlLg0KDQpPbmUgZm9yIHRoZSByZWFsLCBhbm90aGVyIG9uZSBmb3IgdGhlIGR1bW15Lg0K
DQpUeXBpY2FsbHkgc2tpbGxlZCBjb3JlIGZyYW1ld29yayBwcm9ncmFtbWVyL3dyaXRlciBsaWtl
IGl0LCBmb3IgbXVsdGlwbGUgDQpiYWNrZW5kIGFuZCBtdWx0aXBsZSBhcmNoIHN1cHBvcnQNCg0K
QmVjYXVzZSB0aGUgZnVuY3Rpb25zIHNldCBuZWVkIHRvIGJlIGltcGxlbWVudGVkIGlzIGxhcmdl
IGZvciB0aG9zZSBjYXNlcy4NCg0KV2hpbGUgd2UgYXJlIGp1c3QgYSBkcml2ZXIgaW1wbGVtZW50
IGJhc2VkIHRoZSBkcm0gY29yZSBhbmQgb25seSBvbmUgDQpzaW5nbGUgZnVuY3Rpb24gaGVyZSwN
Cg0KREVCVUdfRlMgaXMgZW5hYmxlZCBieSBkZWZhdWx0IG9uIG91ciBNaXBzIGFuZCBMb29uZ2Fy
Y2guIEl0IGlzIG5vdCANCnN1ZmZlciBmcm9tIGhpZ2ggZnJlcXVlbmN5IGNoYW5nZXMuDQoNCklu
IHRoaXMgY2FzZSAsIENPTkZJR19ERUJVR19GUyBqdXN0IGJvaWxzIGRvd24gdG8gInRydWUiLCBh
IG5lYXJseSANCmFsd2F5cyBlbmFibGVkIGRlY29yYXRpb24uDQoNCg0KV2UgZG8gaW1wbGVtZW50
IGRlYnVnZnMgc3VwcG9ydCB0aGF0IHdheSBpbiB0aGUgYmVmb3JlWzFdLCBidXQgd2UgcHVyc3Vl
IA0KY29tcGFjdCBpbiB0aGUgYWZ0ZXJ3YXJkcy4NCg0KV2UgY291bGQgcmV2aXNlIG91ciBkcml2
ZXIgaWYgdGhhdCBpcyBzdHJvbmdseSByZWNvbW1lbmRlZC4NCg0KDQpbMV0gaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzQ4MDUyMS8NCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
