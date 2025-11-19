Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBPQMXT+4GnzoAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:21:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7EA41091C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:21:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3BDE40507
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:21:23 +0000 (UTC)
Received: from jeth.damsy.net (jeth.damsy.net [51.159.152.102])
	by lists.linaro.org (Postfix) with ESMTPS id A93183F785
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 08:29:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=damsy.net header.s=202408r header.b=kPYfLD5j;
	dkim=pass header.d=damsy.net header.s=202408e header.b=KycOX4jZ;
	spf=pass (lists.linaro.org: domain of pierre-eric@damsy.net designates 51.159.152.102 as permitted sender) smtp.mailfrom=pierre-eric@damsy.net;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; s=202408r; d=damsy.net; c=relaxed/relaxed;
	h=From:To:Subject:Date:Message-ID; t=1763540935; bh=UuVoHiX4g1DcUjyvKAoxU8D
	BSFgJKZF+njAyH5dFFYc=; b=kPYfLD5jrPQ5qPDQwRfqKDwGwsFo33eoPCQbC4OBc4kDSS47w/
	WjSQBOOr+QABNlYpqjNh46rwf3XfVCxHdu4QJrFZLAfSyEUAFjEE2X4UNsVkevr8aCJmfnmaO+E
	ZUNmfKsHxi5rxhPFn1kZvbtq6Zr/O1Mt9I1VZAF/VIiKsc/b6+V9KW1efR3dL9fE/WDmLX6X5WO
	iP6pebym4YKxV4Ma0CInXxI+eeIL/NSVwA+gUWYrrRcLfd45fySBu86PynZV1+LZCMEjyIl8RsE
	FAnM9gOuboUQdUYQJVeYZk5LSDvtVyRqgrXwKH20X2sEqIQ4nx309dnCcTmGCRyLOSg==;
DKIM-Signature: v=1; a=ed25519-sha256; s=202408e; d=damsy.net; c=relaxed/relaxed;
	h=From:To:Subject:Date:Message-ID; t=1763540935; bh=UuVoHiX4g1DcUjyvKAoxU8D
	BSFgJKZF+njAyH5dFFYc=; b=KycOX4jZWE/T7hQo+sFKk3hoGSjmtQo3+lW9S0zV/N5jk7FyLd
	T++LSUgYSRUta3m5zPJL3FBQ85vSpBGLdSDw==;
Message-ID: <918608aa-0383-46fe-9130-8c9cd3f57aae@damsy.net>
Date: Wed, 19 Nov 2025 09:28:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20251113160632.5889-1-pierre-eric.pelloux-prayer@amd.com>
 <20251113160632.5889-11-pierre-eric.pelloux-prayer@amd.com>
 <ebb52a9a-9454-471b-8262-098231b58777@amd.com>
Content-Language: en-US
From: Pierre-Eric Pelloux-Prayer <pierre-eric@damsy.net>
In-Reply-To: <ebb52a9a-9454-471b-8262-098231b58777@amd.com>
X-Spamd-Bar: ---
X-MailFrom: pierre-eric@damsy.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XGE5APTGVSD64C76OV24SAW7AFQYMP2U
X-Message-ID-Hash: XGE5APTGVSD64C76OV24SAW7AFQYMP2U
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:00:50 +0000
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 10/20] drm/admgpu: handle resv dependencies in amdgpu_ttm_map_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XGE5APTGVSD64C76OV24SAW7AFQYMP2U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[3558];
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
	NEURAL_HAM(-0.00)[-0.990];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[pierre-eric@damsy.net,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[damsy.net:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,damsy.net:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 8A7EA41091C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCkxlIDE3LzExLzIwMjUgw6AgMDk6NDQsIENocmlzdGlhbiBLw7ZuaWcgYSDDqWNyaXTCoDoN
Cj4gT24gMTEvMTMvMjUgMTc6MDUsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0K
Pj4gSWYgYSByZXN2IG9iamVjdCBpcyBwYXNzZWQsIGl0cyBmZW5jZXMgYXJlIHRyZWF0ZWQgYXMg
YSBkZXBlbmRlbmN5DQo+PiBmb3IgdGhlIGFtZGdwdV90dG1fbWFwX2J1ZmZlciBvcGVyYXRpb24u
DQo+Pg0KPj4gVGhpcyB3aWxsIGJlIHVzZWQgYnkgYW1kZ3B1X2JvX3JlbGVhc2Vfbm90aWZ5IHRo
cm91Z2gNCj4+IGFtZGdwdV9maWxsX2J1ZmZlci4NCj4gDQo+IFdoeSBzaG91bGQgdXBkYXRpbmcg
dGhlIEdBUlQgd2luZG93IGRlcGVuZCBvbiBmZW5jZXMgaW4gYSByZXN2IG9iamVjdD8NCj4gDQoN
CllvdSdyZSByaWdodCwgdGhpcyBpcyBub3QgbmVlZGVkLiBJJ2xsIGRyb3AgdGhlIHBhdGNoLg0K
DQpQaWVycmUtRXJpYw0KDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+Pg0KPj4gU2ln
bmVkLW9mZi1ieTogUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxv
dXgtcHJheWVyQGFtZC5jb20+DQo+PiAtLS0NCj4+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3R0bS5jIHwgMTYgKysrKysrKysrKystLS0tLQ0KPj4gICAxIGZpbGUgY2hhbmdl
ZCwgMTEgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+PiBpbmRleCBiMTNmMDk5M2RiZjEuLjQxMTk5N2Ri
NzBlYiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90
dG0uYw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+
PiBAQCAtMTg0LDcgKzE4NCw4IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9tYXBfYnVmZmVyKHN0
cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHksDQo+PiAgIAkJCQkgc3RydWN0IGFtZGdwdV9y
ZXNfY3Vyc29yICptbV9jdXIsDQo+PiAgIAkJCQkgdW5zaWduZWQgaW50IHdpbmRvdywgc3RydWN0
IGFtZGdwdV9yaW5nICpyaW5nLA0KPj4gICAJCQkJIGJvb2wgdG16LCB1aW50NjRfdCAqc2l6ZSwg
dWludDY0X3QgKmFkZHIsDQo+PiAtCQkJCSBzdHJ1Y3QgZG1hX2ZlbmNlICpkZXApDQo+PiArCQkJ
CSBzdHJ1Y3QgZG1hX2ZlbmNlICpkZXAsDQo+PiArCQkJCSBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3Yp
DQo+PiAgIHsNCj4+ICAgCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gcmluZy0+YWRldjsN
Cj4+ICAgCXVuc2lnbmVkIGludCBvZmZzZXQsIG51bV9wYWdlcywgbnVtX2R3LCBudW1fYnl0ZXM7
DQo+PiBAQCAtMjM5LDYgKzI0MCwxMCBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fbWFwX2J1ZmZl
cihzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAqZW50aXR5LA0KPj4gICAJaWYgKGRlcCkNCj4+ICAg
CQlkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5KCZqb2ItPmJhc2UsIGRtYV9mZW5jZV9nZXQo
ZGVwKSk7DQo+PiAgIA0KPj4gKwlpZiAocmVzdikNCj4+ICsJCWRybV9zY2hlZF9qb2JfYWRkX3Jl
c3ZfZGVwZW5kZW5jaWVzKCZqb2ItPmJhc2UsIHJlc3YsDQo+PiArCQkJCQkJICAgIERNQV9SRVNW
X1VTQUdFX0JPT0tLRUVQKTsNCj4+ICsNCj4+ICAgCXNyY19hZGRyID0gbnVtX2R3ICogNDsNCj4+
ICAgCXNyY19hZGRyICs9IGpvYi0+aWJzWzBdLmdwdV9hZGRyOw0KPj4gICANCj4+IEBAIC0zMzIs
MTQgKzMzNywxNCBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fY29weV9tZW1fdG9fbWVtKHN0cnVj
dCBhbWRncHVfZGV2aWNlICphZGV2LA0KPj4gICAJCXIgPSBhbWRncHVfdHRtX21hcF9idWZmZXIo
JmVudGl0eS0+YmFzZSwNCj4+ICAgCQkJCQkgIHNyYy0+Ym8sIHNyYy0+bWVtLCAmc3JjX21tLA0K
Pj4gICAJCQkJCSAgZW50aXR5LT5nYXJ0X3dpbmRvd19pZDAsIHJpbmcsIHRteiwgJmN1cl9zaXpl
LCAmZnJvbSwNCj4+IC0JCQkJCSAgTlVMTCk7DQo+PiArCQkJCQkgIE5VTEwsIE5VTEwpOw0KPj4g
ICAJCWlmIChyKQ0KPj4gICAJCQlnb3RvIGVycm9yOw0KPj4gICANCj4+ICAgCQlyID0gYW1kZ3B1
X3R0bV9tYXBfYnVmZmVyKCZlbnRpdHktPmJhc2UsDQo+PiAgIAkJCQkJICBkc3QtPmJvLCBkc3Qt
Pm1lbSwgJmRzdF9tbSwNCj4+ICAgCQkJCQkgIGVudGl0eS0+Z2FydF93aW5kb3dfaWQxLCByaW5n
LCB0bXosICZjdXJfc2l6ZSwgJnRvLA0KPj4gLQkJCQkJICBOVUxMKTsNCj4+ICsJCQkJCSAgTlVM
TCwgTlVMTCk7DQo+PiAgIAkJaWYgKHIpDQo+PiAgIAkJCWdvdG8gZXJyb3I7DQo+PiAgIA0KPj4g
QEAgLTI0NTEsNyArMjQ1Niw3IEBAIGludCBhbWRncHVfdHRtX2NsZWFyX2J1ZmZlcihzdHJ1Y3Qg
YW1kZ3B1X2JvICpibywNCj4+ICAgCQlyID0gYW1kZ3B1X3R0bV9tYXBfYnVmZmVyKCZlbnRpdHkt
PmJhc2UsDQo+PiAgIAkJCQkJICAmYm8tPnRibywgYm8tPnRiby5yZXNvdXJjZSwgJmN1cnNvciwN
Cj4+ICAgCQkJCQkgIGVudGl0eS0+Z2FydF93aW5kb3dfaWQxLCByaW5nLCBmYWxzZSwgJnNpemUs
ICZhZGRyLA0KPj4gLQkJCQkJICBOVUxMKTsNCj4+ICsJCQkJCSAgTlVMTCwgTlVMTCk7DQo+PiAg
IAkJaWYgKHIpDQo+PiAgIAkJCWdvdG8gZXJyOw0KPj4gICANCj4+IEBAIC0yNTA2LDcgKzI1MTEs
OCBAQCBpbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2J1ZmZlcl9lbnRp
dHkgKmVudGl0eSwNCj4+ICAgCQkJCQkgICZiby0+dGJvLCBiby0+dGJvLnJlc291cmNlLCAmZHN0
LA0KPj4gICAJCQkJCSAgZW50aXR5LT5nYXJ0X3dpbmRvd19pZDEsIHJpbmcsIGZhbHNlLA0KPj4g
ICAJCQkJCSAgJmN1cl9zaXplLCAmdG8sDQo+PiAtCQkJCQkgIGRlcGVuZGVuY3kpOw0KPj4gKwkJ
CQkJICBkZXBlbmRlbmN5LA0KPj4gKwkJCQkJICByZXN2KTsNCj4+ICAgCQlpZiAocikNCj4+ICAg
CQkJZ290byBlcnJvcjsNCj4+ICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
