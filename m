Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 180126F9097
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  6 May 2023 10:32:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15BEA44372
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  6 May 2023 08:32:37 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.104])
	by lists.linaro.org (Postfix) with ESMTP id 8051D3F09B
	for <linaro-mm-sig@lists.linaro.org>; Sat,  6 May 2023 08:32:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.104 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.31:57024.1397785887
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.31])
	by 189.cn (HERMES) with SMTP id DF90A1002B5;
	Sat,  6 May 2023 16:32:27 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-85667d6c59-6qwzn with ESMTP id 0da97246ee464bcaad97b2a1e31af4c9 for chenhuacai@kernel.org;
	Sat, 06 May 2023 16:32:28 CST
X-Transaction-ID: 0da97246ee464bcaad97b2a1e31af4c9
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <7764c60c-371a-89f7-c9a8-6727551926ae@189.cn>
Date: Sat, 6 May 2023 16:32:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Huacai Chen <chenhuacai@kernel.org>
References: <20230504080406.1213623-1-suijingfeng@loongson.cn>
 <20230504080406.1213623-2-suijingfeng@loongson.cn>
 <CAAhV-H4zKGkd2JUyYTDKBEGFEO5V+oRz8iuzF9w+ivz0t6+CFw@mail.gmail.com>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <CAAhV-H4zKGkd2JUyYTDKBEGFEO5V+oRz8iuzF9w+ivz0t6+CFw@mail.gmail.com>
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	NEURAL_HAM(-0.00)[-0.999];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,lists.loongnix.cn,vger.kernel.org,lists.freedesktop.org];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[loongson.cn:email];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	DMARC_NA(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8051D3F09B
X-Spamd-Bar: -
Message-ID-Hash: HTQA6D47YTS6N3KD36V4YW2LUBRFWRM3
X-Message-ID-Hash: HTQA6D47YTS6N3KD36V4YW2LUBRFWRM3
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Emil Velikov <emil.l.velikov@gmail.com>, linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 1/2] MAINTAINERS: add maintainers for DRM LOONGSON driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HTQA6D47YTS6N3KD36V4YW2LUBRFWRM3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCg0KQWgsIEkgZGlkJ3Qgbm90aWNlIHRoaXMuDQoNClRoZSBkaXNvcmRlciBpcyBiZWNh
dXNlIGR1cmluZyBkZXZlbG9waW5nIHBoYXNlLA0KDQppdCBpcyBtb3JlIGVhc3kgYW1lbmQgbmV3
IGNoYW5nZXMgdG8gdGhlIHRvcCBvZiB0aGUgY29tbWl0cy4NCg0KU28sIEkgcHV0IGFub3RoZXIg
cGF0Y2ggb2YgdGhpcyBzZXJpZXMgb24gdGhlIHRvcCBvZiB0aGlzLg0KDQpXaWxsIGJlIGZpeGVk
IGF0IG5leHQgdmVyc2lvbiwgdGhhbmtzIGZvciB5b3UgcG9pbnQgb3V0IHRoYXQuDQoNCg0KT24g
MjAyMy81LzYgMTE6MDksIEh1YWNhaSBDaGVuIHdyb3RlOg0KPiBIaSwgSmluZ2ZlbmcsDQo+DQo+
IEkgdGhpbmsgeW91IHNob3VsZCBleGNoYW5nZSB0aGUgb3JkZXIgb2YgdGhlc2UgdHdvIHBhdGNo
ZXMuDQo+DQo+DQo+IEh1YWNhaQ0KPg0KPiBPbiBUaHUsIE1heSA0LCAyMDIzIGF0IDQ6MDTigK9Q
TSBTdWkgSmluZ2ZlbmcgPHN1aWppbmdmZW5nQGxvb25nc29uLmNuPiB3cm90ZToNCj4+ICAgVGhp
cyBwYXRjaCBhZGQgbXlzZWxmIGFzIG1haW50YWluZXIgdG8gZHJtIGxvb25nc29uIGRyaXZlcg0K
Pj4NCj4+IFNpZ25lZC1vZmYtYnk6IFN1aSBKaW5nZmVuZyA8c3VpamluZ2ZlbmdAbG9vbmdzb24u
Y24+DQo+PiAtLS0NCj4+ICAgTUFJTlRBSU5FUlMgfCA3ICsrKysrKysNCj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBi
L01BSU5UQUlORVJTDQo+PiBpbmRleCA3M2IzMjk4YjcyMzIuLjFmNWFhODc1NmQ4NyAxMDA2NDQN
Cj4+IC0tLSBhL01BSU5UQUlORVJTDQo+PiArKysgYi9NQUlOVEFJTkVSUw0KPj4gQEAgLTY5MjIs
NiArNjkyMiwxMyBAQCBUOiAgICAgICBnaXQgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcv
ZHJtL2RybS1taXNjDQo+PiAgIEY6ICAgICBkcml2ZXJzL2dwdS9kcm0vbGltYS8NCj4+ICAgRjog
ICAgIGluY2x1ZGUvdWFwaS9kcm0vbGltYV9kcm0uaA0KPj4NCj4+ICtEUk0gRFJJVkVSUyBGT1Ig
TE9PTkdTT04NCj4+ICtNOiAgICAgU3VpIEppbmdmZW5nIDxzdWlqaW5nZmVuZ0Bsb29uZ3Nvbi5j
bj4NCj4+ICtMOiAgICAgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPj4gK1M6ICAg
ICBTdXBwb3J0ZWQNCj4+ICtUOiAgICAgZ2l0IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2RybS9kcm0tbWlzYw0KPj4gK0Y6ICAgICBkcml2ZXJzL2dwdS9kcm0vbG9vbmdzb24vDQo+PiAr
DQo+PiAgIERSTSBEUklWRVJTIEZPUiBNRURJQVRFSw0KPj4gICBNOiAgICAgQ2h1bi1LdWFuZyBI
dSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+DQo+PiAgIE06ICAgICBQaGlsaXBwIFphYmVsIDxw
LnphYmVsQHBlbmd1dHJvbml4LmRlPg0KPj4gLS0NCj4+IDIuMjUuMQ0KPj4NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
