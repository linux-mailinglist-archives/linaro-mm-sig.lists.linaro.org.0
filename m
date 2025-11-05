Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BFiIOb44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 57816410003
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69B94409C4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:57:41 +0000 (UTC)
Received: from jeth.damsy.net (jeth.damsy.net [51.159.152.102])
	by lists.linaro.org (Postfix) with ESMTPS id D83023F73B
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Nov 2025 10:39:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=damsy.net header.s=202408r header.b=hp8agkev;
	dkim=pass header.d=damsy.net header.s=202408e header.b=h4lfObt8;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of pierre-eric@damsy.net designates 51.159.152.102 as permitted sender) smtp.mailfrom=pierre-eric@damsy.net
DKIM-Signature: v=1; a=rsa-sha256; s=202408r; d=damsy.net; c=relaxed/relaxed;
	h=From:To:Subject:Date:Message-ID; t=1762339165; bh=HynmbuF0tAM8tAN2lSgPkC7
	JF426wpJcLDfO5uTi/hw=; b=hp8agkevPjedr1AzyG9EXs7Pj4KLzVByaNj3R3PtuEItpEKsCD
	1lUxDH1tWGRSNN1dRBkubGhuvktSa7YcSS0lqgq9SfcjSr93KBXdgXkugXiUSE4f9I7URLEKjou
	Rvf810BMrjKZpA0A3IXzmuTwGkTTbeHHz03OdUaU2TfvkPLVix9EaEESb6z57zoSwxBUoiUjo+j
	np+OsypheZS1C14Bx7DPyx0ERm8XTjhqcWy0+1o+GcAv6KcDE26oQjI4oNDoWqFlXE0bOBo+DOz
	OrXWvYB7ySf3hDduNc4Beef/+eeeHHZjVaby+8XvHgc/Pmgf/6Ky2A07rxU2r6APm5Q==;
DKIM-Signature: v=1; a=ed25519-sha256; s=202408e; d=damsy.net; c=relaxed/relaxed;
	h=From:To:Subject:Date:Message-ID; t=1762339165; bh=HynmbuF0tAM8tAN2lSgPkC7
	JF426wpJcLDfO5uTi/hw=; b=h4lfObt87YD+sXiVRU4gpbddW33IRV3aJ5rc5zxRTD2bGFF1dU
	qlI2txGneITbjhiq4+1tBFIRmL+IciImWpAA==;
Message-ID: <7395bf47-68fd-4af6-8720-e51dc75253bc@damsy.net>
Date: Wed, 5 Nov 2025 11:39:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20251104083605.13677-1-pierre-eric.pelloux-prayer@amd.com>
 <20251104083605.13677-12-pierre-eric.pelloux-prayer@amd.com>
 <0f9aa878-46c4-48d6-9ad5-774a0927b291@amd.com>
Content-Language: en-US
From: Pierre-Eric Pelloux-Prayer <pierre-eric@damsy.net>
In-Reply-To: <0f9aa878-46c4-48d6-9ad5-774a0927b291@amd.com>
X-Spamd-Bar: ---
X-MailFrom: pierre-eric@damsy.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: X4WBRS5RF6BDX3RMASMMB6FUPE4KRC5R
X-Message-ID-Hash: X4WBRS5RF6BDX3RMASMMB6FUPE4KRC5R
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:44 +0000
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 11/20] drm/amdgpu: use multiple entities in amdgpu_fill_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X4WBRS5RF6BDX3RMASMMB6FUPE4KRC5R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[3892];
	R_DKIM_REJECT(1.00)[damsy.net:s=202408r,damsy.net:s=202408e];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[damsy.net];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric@damsy.net,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[damsy.net:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,damsy.net:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 57816410003
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCkxlIDA0LzExLzIwMjUgw6AgMTc6NDAsIENocmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXTCoDoN
Cj4gT24gMTEvNC8yNSAwOTozNSwgUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgd3JvdGU6DQo+
PiBUaGUgYmVuZWZpdHMgb2YgdXNpbmcgbXVsdGlwbGUgZW50aXRpZXMgaXMgdGhhdCBtdWx0aXBs
ZSBmaWxsIGpvYnMNCj4+IGNhbiBydW4gaW4gcGFyYWxsZWwuIE90aGVyd2lzZSwgZXZlbiBpZiB0
aGUgZW50aXR5IGhhcyBhY2Nlc3MNCj4+IHRvIG11bHRpcGxlIGVuZ2luZXMsIGEgYnVyc3Qgb2Yg
TiBpbmRlcGVuZGVudCBqb2JzIHdpbGwgYWxsDQo+PiBydW4gb24gdGhlIHNhbWUgZW5naW5lIGJl
Y2F1c2UgYW4gZW50aXR5IGd1YXJhbnRlZXMgdGhlIG9yZGVyaW5nDQo+PiBvZiBleGVjdXRpb24g
bWF0Y2hlcyB0aGUgb3JkZXJpbmcgb2YgdGhlIHN1Ym1pc3Npb24uDQo+Pg0KPj4gQ2FsbGVycyBj
YW4gb3B0LW91dCBvZiB0aGlzIGJlaGF2aW9yIGJ5IHBhc3NpbmcgdGhlIGVudGl0eSB0aGV5DQo+
PiB3YW50IHRvIHVzZSAoc2VlIGFtZGdwdV9tb3ZlX2JsaXQpLg0KPiANCj4gVGhhdCBzdGlsbCBz
b3VuZHMgbGlrZSBhIHJlYWxseSBiYWQgaWRlYSB0byBtZS4NCj4gDQo+IEZpcnN0IG9mIGFsbCB3
ZSBjYW4ndCByZXNlcnZlIHNvIG1hbnkgZmVuY2Ugc2xvdHMgaW4gdGhlIHJlbGVhc2UgaGFuZGxl
ciwgcHJldmlvdXNseSB3ZSBiYXNpY2FsbHkganVzdCByZWxpZWQgb24gdGhlIGZhY3QgdGhhdCB0
aGUgQk8gd2lsbCBtb3N0IGxpa2VseSBiZSBtb3N0bHkgaWRsZS4NCj4gDQo+IEkgdGhpbmsgd2Ug
c2hvdWxkIGp1c3QgdXNlIGEgc2luZ2xlIFNETUEgZW5naW5lIGZvciBlYWNoIGNsZWFyIGFuZCBk
aXN0cmlidXRlIGNsZWFyaW5nIGRpZmZlcmVudCBCT3Mgb3ZlciBtdWx0aXBsZSBlbmdpbmVzLg0K
DQpTbyBOIGNsZWFyIGVudGl0aWVzLCBlYWNoIG9uZSBoYXZpbmcgYWNjZXNzIHRvIGEgc2luZ2xl
IGVuZ2luZS4gQW5kIGFsbCBqb2JzIHRvIA0KY2xlYXIgYSBzaW5nbGUgQk8gZ28gdG8gdGhlIHNh
bWUgZW50aXR5Pw0KDQpJcyB0aGF0IHdoYXQgeW91IG1lYW4/DQoNClBpZXJyZS1FcmljDQoNCj4g
DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogUGll
cnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxvdXgtcHJheWVyQGFtZC5j
b20+DQo+PiAtLS0NCj4+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5j
IHwgODQgKysrKysrKysrKysrKysrKysrLS0tLS0tLQ0KPj4gICBkcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdHRtLmggfCAgMSArDQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgNjQgaW5z
ZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV90dG0uYw0KPj4gaW5kZXggYzM1N2E2ZDk3NjNhLi44MzllYThjN2Y2YmUgMTAw
NjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KPj4gQEAgLTIy
MjQsNiArMjIyNCw3IEBAIHUzMiBhbWRncHVfdHRtX3NldF9idWZmZXJfZnVuY3Nfc3RhdHVzKHN0
cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCBib29sIGVuYWJsZSkNCj4+ICAgCQlhZGV2LT5tbWFu
LmNsZWFyX2VudGl0aWVzID0ga2NhbGxvYyhudW1fY2xlYXJfZW50aXRpZXMsDQo+PiAgIAkJCQkJ
CSAgICBzaXplb2Yoc3RydWN0IGFtZGdwdV90dG1fZW50aXR5KSwNCj4+ICAgCQkJCQkJICAgIEdG
UF9LRVJORUwpOw0KPj4gKwkJYXRvbWljX3NldCgmYWRldi0+bW1hbi5uZXh0X2NsZWFyX2VudGl0
eSwgMCk7DQo+PiAgIAkJaWYgKCFhZGV2LT5tbWFuLmNsZWFyX2VudGl0aWVzKQ0KPj4gICAJCQln
b3RvIGVycm9yX2ZyZWVfZW50aXR5Ow0KPj4gICANCj4+IEBAIC0yNDk4LDEwICsyNDk5LDEyIEBA
IGludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fZW50aXR5ICplbnRpdHks
DQo+PiAgIHsNCj4+ICAgCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9h
ZGV2KGJvLT50Ym8uYmRldik7DQo+PiAgIAlzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcgPSBhZGV2
LT5tbWFuLmJ1ZmZlcl9mdW5jc19yaW5nOw0KPj4gKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZXNb
VFRNX0ZFTkNFU19NQVhfU0xPVF9DT1VOVF0gPSB7fTsNCj4+ICAgCXN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlID0gTlVMTDsNCj4+ICAgCXN0cnVjdCBkbWFfcmVzdiAqcmVzdiA9IE5VTEw7DQo+PiAg
IAlzdHJ1Y3QgYW1kZ3B1X3Jlc19jdXJzb3IgZHN0Ow0KPj4gLQlpbnQgcjsNCj4+ICsJdWludDY0
X3QgY3VyX3NpemUsIHRvOw0KPj4gKwlpbnQgciwgZSwgbl9mZW5jZXM7DQo+PiAgIA0KPj4gICAJ
LyogVGhlIGZlbmNlcyB3aWxsIGJlIGVpdGhlciBhZGRlZCB0byB0aGUgcmVzdiBvYmplY3Qgb3Ig
dGhlIGxhc3QgZmVuY2UNCj4+ICAgCSAqIHdpbGwgYmUgcmV0dXJuZWQgdG8gdGhlIGNhbGxlci4g
SW4gdGhlIGxhdHRlciBjYXNlLCBhbGwgZmlsbCBqb2JzIHdpbGwNCj4+IEBAIC0yNTE1LDUzICsy
NTE4LDkyIEBAIGludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fZW50aXR5
ICplbnRpdHksDQo+PiAgIAl9DQo+PiAgIA0KPj4gICAJaWYgKCFlbnRpdHkpIHsNCj4+IC0JCWVu
dGl0eSA9ICZhZGV2LT5tbWFuLmNsZWFyX2VudGl0aWVzWzBdOw0KPj4gICAJCXJlc3YgPSAmYm8t
PnRiby5iYXNlLl9yZXN2Ow0KPj4gLQkJciA9IGRtYV9yZXN2X3Jlc2VydmVfZmVuY2VzKHJlc3Ys
IDEpOw0KPj4gKw0KPj4gKwkJLyogRGV0ZXJtaW5lIGhvdyBtdWNoIGZlbmNlcyB3ZSdyZSBnb2lu
ZyB0byBhZGQgdG8gdGhlDQo+PiArCQkgKiByZXN2IG9iamVjdC4NCj4+ICsJCSAqLw0KPj4gKwkJ
bl9mZW5jZXMgPSAwOw0KPj4gKwkJYW1kZ3B1X3Jlc19maXJzdChiby0+dGJvLnJlc291cmNlLCAw
LCBhbWRncHVfYm9fc2l6ZShibyksICZkc3QpOw0KPj4gKwkJd2hpbGUgKGRzdC5yZW1haW5pbmcp
IHsNCj4+ICsJCQljdXJfc2l6ZSA9IG1pbihkc3Quc2l6ZSwgMjU2VUxMIDw8IDIwKTsNCj4+ICsN
Cj4+ICsJCQluX2ZlbmNlcyArPSAxOw0KPj4gKwkJCWFtZGdwdV9yZXNfbmV4dCgmZHN0LCBjdXJf
c2l6ZSk7DQo+PiArCQl9DQo+PiArCQlpZiAobl9mZW5jZXMgPT0gMCkNCj4+ICsJCQlyZXR1cm4g
MDsNCj4+ICsNCj4+ICsJCS8qIE9uZSBzbG90IHBlciBlbnRpdHkgYXQgbW9zdC4gKi8NCj4+ICsJ
CW5fZmVuY2VzID0gTUlOKG5fZmVuY2VzLCBhZGV2LT5tbWFuLm51bV9jbGVhcl9lbnRpdGllcyk7
DQo+PiArDQo+PiArCQlyID0gZG1hX3Jlc3ZfcmVzZXJ2ZV9mZW5jZXMocmVzdiwgbl9mZW5jZXMp
Ow0KPj4gICAJCWlmIChyKQ0KPj4gICAJCQlyZXR1cm4gcjsNCj4+ICsJfSBlbHNlIHsNCj4+ICsJ
CW11dGV4X2xvY2soJmVudGl0eS0+Z2FydF93aW5kb3dfbG9jayk7DQo+PiAgIAl9DQo+PiAgIA0K
Pj4gICAJYW1kZ3B1X3Jlc19maXJzdChiby0+dGJvLnJlc291cmNlLCAwLCBhbWRncHVfYm9fc2l6
ZShibyksICZkc3QpOw0KPj4gICANCj4+IC0JbXV0ZXhfbG9jaygmZW50aXR5LT5nYXJ0X3dpbmRv
d19sb2NrKTsNCj4+ICAgCXdoaWxlIChkc3QucmVtYWluaW5nKSB7DQo+PiAtCQlzdHJ1Y3QgZG1h
X2ZlbmNlICpuZXh0Ow0KPj4gLQkJdWludDY0X3QgY3VyX3NpemUsIHRvOw0KPj4gLQ0KPj4gICAJ
CS8qIE5ldmVyIGZpbGwgbW9yZSB0aGFuIDI1Nk1pQiBhdCBvbmNlIHRvIGF2b2lkIHRpbWVvdXRz
ICovDQo+PiAgIAkJY3VyX3NpemUgPSBtaW4oZHN0LnNpemUsIDI1NlVMTCA8PCAyMCk7DQo+PiAg
IA0KPj4gKwkJaWYgKHJlc3YpIHsNCj4+ICsJCQkvKiBQaWNrIGEgbmV3IGVudGl0eSBmb3IgZWFj
aCBwYXJ0aWFsIGNsZWFyIHNvIHRoZXkgY2FuDQo+PiArCQkJICogZXhlY3V0ZSBpbiBwYXJhbGxl
bC4NCj4+ICsJCQkgKi8NCj4+ICsJCQllID0gYXRvbWljX2luY19yZXR1cm4oJmFkZXYtPm1tYW4u
bmV4dF9jbGVhcl9lbnRpdHkpICUNCj4+ICsJCQkJYWRldi0+bW1hbi5udW1fY2xlYXJfZW50aXRp
ZXM7DQo+PiArCQkJZW50aXR5ID0gJmFkZXYtPm1tYW4uY2xlYXJfZW50aXRpZXNbZV07DQo+PiAr
CQkJbXV0ZXhfbG9jaygmZW50aXR5LT5nYXJ0X3dpbmRvd19sb2NrKTsNCj4+ICsJCX0NCj4+ICsN
Cj4+ICAgCQlyID0gYW1kZ3B1X3R0bV9tYXBfYnVmZmVyKCZlbnRpdHktPmJhc2UsDQo+PiAgIAkJ
CQkJICAmYm8tPnRibywgYm8tPnRiby5yZXNvdXJjZSwgJmRzdCwNCj4+ICAgCQkJCQkgIGVudGl0
eS0+Z2FydF93aW5kb3dfaWQxLCByaW5nLCBmYWxzZSwNCj4+ICAgCQkJCQkgICZjdXJfc2l6ZSwg
JnRvLA0KPj4gICAJCQkJCSAgZGVwZW5kZW5jeSwNCj4+ICAgCQkJCQkgIHJlc3YpOw0KPj4gLQkJ
aWYgKHIpDQo+PiArCQlpZiAocikgew0KPj4gKwkJCW11dGV4X3VubG9jaygmZW50aXR5LT5nYXJ0
X3dpbmRvd19sb2NrKTsNCj4+ICAgCQkJZ290byBlcnJvcjsNCj4+ICsJCX0NCj4+ICAgDQo+PiAg
IAkJciA9IGFtZGdwdV90dG1fZmlsbF9tZW0ocmluZywgJmVudGl0eS0+YmFzZSwNCj4+ICAgCQkJ
CQlzcmNfZGF0YSwgdG8sIGN1cl9zaXplLCByZXN2LA0KPj4gLQkJCQkJJm5leHQsIHRydWUsIGtf
am9iX2lkKTsNCj4+IC0JCWlmIChyKQ0KPj4gKwkJCQkJJmZlbmNlLCB0cnVlLCBrX2pvYl9pZCk7
DQo+PiArCQlpZiAocikgew0KPj4gKwkJCW11dGV4X3VubG9jaygmZW50aXR5LT5nYXJ0X3dpbmRv
d19sb2NrKTsNCj4+ICAgCQkJZ290byBlcnJvcjsNCj4+IC0NCj4+IC0JCWlmIChyZXN2KSB7DQo+
PiAtCQkJZG1hX3Jlc3ZfYWRkX2ZlbmNlKHJlc3YsIG5leHQsIERNQV9SRVNWX1VTQUdFX0tFUk5F
TCk7DQo+PiAtCQkJZG1hX2ZlbmNlX3B1dChuZXh0KTsNCj4+IC0JCX0gZWxzZSB7DQo+PiAtCQkJ
ZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+PiAtCQkJZmVuY2UgPSBuZXh0Ow0KPj4gICAJCX0NCj4+
ICAgDQo+PiAgIAkJYW1kZ3B1X3Jlc19uZXh0KCZkc3QsIGN1cl9zaXplKTsNCj4+ICsNCj4+ICsJ
CWlmIChyZXN2KSB7DQo+PiArCQkJLyogRGVsYXkgdGhlIGFkZGl0aW9uIG9mIHRoZSBmZW5jZXMg
dG8gcmVzdiwgb3RoZXJ3aXNlIHRoZSBuZXh0IHBhcnRpYWwNCj4+ICsJCQkgKiBjbGVhcnMgd2ls
bCBkZXBlbmQgb24gdGhpcyBvbmUuDQo+PiArCQkJICovDQo+PiArCQkJZmVuY2VzW2VdID0gZmVu
Y2U7DQo+PiArCQkJbXV0ZXhfdW5sb2NrKCZlbnRpdHktPmdhcnRfd2luZG93X2xvY2spOw0KPj4g
KwkJfSBlbHNlIHsNCj4+ICsJCQlkbWFfZmVuY2VfcHV0KCpmKTsNCj4+ICsJCQkqZiA9IGZlbmNl
Ow0KPj4gKwkJfQ0KPj4gICAJfQ0KPj4gICBlcnJvcjoNCj4+IC0JbXV0ZXhfdW5sb2NrKCZlbnRp
dHktPmdhcnRfd2luZG93X2xvY2spOw0KPj4gLQlpZiAoZikNCj4+IC0JCSpmID0gZG1hX2ZlbmNl
X2dldChmZW5jZSk7DQo+PiAtCWRtYV9mZW5jZV9wdXQoZmVuY2UpOw0KPj4gKwlpZiAocmVzdikg
ew0KPj4gKwkJZm9yIChlID0gMDsgZSA8IGFkZXYtPm1tYW4ubnVtX2NsZWFyX2VudGl0aWVzOyBl
KyspIHsNCj4+ICsJCQlpZiAoZmVuY2VzW2VdKSB7DQo+PiArCQkJCWRtYV9yZXN2X2FkZF9mZW5j
ZShyZXN2LCBmZW5jZXNbZV0sIERNQV9SRVNWX1VTQUdFX0tFUk5FTCk7DQo+PiArCQkJCWRtYV9m
ZW5jZV9wdXQoZmVuY2VzW2VdKTsNCj4+ICsJCQl9DQo+PiArCQl9DQo+PiArCX0gZWxzZSB7DQo+
PiArCQltdXRleF91bmxvY2soJmVudGl0eS0+Z2FydF93aW5kb3dfbG9jayk7DQo+PiArCX0NCj4+
ICsNCj4+ICAgCXJldHVybiByOw0KPj4gICB9DQo+PiAgIA0KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uaA0KPj4gaW5kZXggMzhkZjJiNWI0YmM3Li4zZmMzMWM3YzZiZmUg
MTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgN
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KPj4gQEAg
LTczLDYgKzczLDcgQEAgc3RydWN0IGFtZGdwdV9tbWFuIHsNCj4+ICAgDQo+PiAgIAlzdHJ1Y3Qg
YW1kZ3B1X3R0bV9lbnRpdHkgZGVmYXVsdF9lbnRpdHk7IC8qIGhhcyBubyBnYXJ0IHdpbmRvd3Mg
Ki8NCj4+ICAgCXN0cnVjdCBhbWRncHVfdHRtX2VudGl0eSAqY2xlYXJfZW50aXRpZXM7DQo+PiAr
CWF0b21pY190IG5leHRfY2xlYXJfZW50aXR5Ow0KPj4gICAJdTMyIG51bV9jbGVhcl9lbnRpdGll
czsNCj4+ICAgCXN0cnVjdCBhbWRncHVfdHRtX2VudGl0eSBtb3ZlX2VudGl0aWVzW1RUTV9GRU5D
RVNfTUFYX1NMT1RfQ09VTlRdOw0KPj4gICAJdTMyIG51bV9tb3ZlX2VudGl0aWVzOw0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
