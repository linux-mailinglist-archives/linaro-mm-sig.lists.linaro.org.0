Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 445A062F2A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 11:33:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 314703F4E3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 10:33:48 +0000 (UTC)
Received: from m12-14.163.com (m12-14.163.com [220.181.12.14])
	by lists.linaro.org (Postfix) with ESMTP id 9D7033EECF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Nov 2022 10:33:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=163.com header.s=s110527 header.b=lBf8q+dc;
	spf=pass (lists.linaro.org: domain of tangchunyou@163.com designates 220.181.12.14 as permitted sender) smtp.mailfrom=tangchunyou@163.com;
	dmarc=pass (policy=none) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version; bh=4c9uE
	3fyeTteQiMB6ZX5jXFCh66NO9kuuzGOxgH3+Ek=; b=lBf8q+dcpErtPBTHaN4Dl
	nUJnINe+UvgijJJOx2cIDc1OhQJcp71+WQfRGJzZ4jjNmrD/cfk2KOYyme/4Ee2y
	C84OFmi5Rjx4o7deG4aFIhTH8taAYHAF7c09zWDLo9LfFB9MstikmdSYVvTF4wAP
	7kbIRJ79mAnGPZU8SU/FDw=
Received: from localhost (unknown [114.221.197.177])
	by smtp10 (Coremail) with SMTP id DsCowABXey1AX3djaWaKNQ--.62677S2;
	Fri, 18 Nov 2022 18:32:33 +0800 (CST)
Date: Fri, 18 Nov 2022 18:32:32 +0800
From: Chunyou Tang <tangchunyou@163.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20221118183232.00007638@163.com>
In-Reply-To: <2b4e38d8-d0ea-e85c-88f1-bb6a714ee0eb@suse.de>
References: <20221111033817.366-1-tangchunyou@163.com>
	<2b4e38d8-d0ea-e85c-88f1-bb6a714ee0eb@suse.de>
Organization: icube
X-Mailer: Claws Mail 3.10.1 (GTK+ 2.16.6; i586-pc-mingw32msvc)
MIME-Version: 1.0
X-CM-TRANSID: DsCowABXey1AX3djaWaKNQ--.62677S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxWw4rAFykKFWUWFWfXr1DWrg_yoW5tFW7pa
	9xArW7KrW8tFWqgr97XF4kAa43Gw40gF48Wa43J3yakw10yF1DJF15Cr1DAFW7Ar17Xr1a
	qwnF9F93AFWjyaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07U9o7_UUUUU=
X-Originating-IP: [114.221.197.177]
X-CM-SenderInfo: 5wdqwu5kxq50rx6rljoofrz/1tbiVgG9UVqzvEdRtgAAsO
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----------
X-Rspamd-Queue-Id: 9D7033EECF
X-Spamd-Result: default: False [-11.50 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[163.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:220.181.12.0/22];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[220.181.12.14:from];
	RCVD_NO_TLS_LAST(0.10)[];
	URIBL_BLOCKED(0.00)[m12-14.163.com:helo,m12-14.163.com:rdns];
	ARC_NA(0.00)[];
	HAS_XOIP(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.903];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[163.com];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:23724, ipnet:220.181.0.0/19, country:CN];
	DKIM_TRACE(0.00)[163.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: YM76KHX5AXJ3A3A77PSS4B7BGTSOXZFF
X-Message-ID-Hash: YM76KHX5AXJ3A3A77PSS4B7BGTSOXZFF
X-MailFrom: tangchunyou@163.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: maarten.lankhorst@linux.intel.com, mripard@kernel.org, daniel@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/gem-shmem: When drm_gem_object_init failed, should release object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YM76KHX5AXJ3A3A77PSS4B7BGTSOXZFF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="gb18030"
Content-Transfer-Encoding: base64

SGkgVGhvbWFzLA0KICAgQ2FuIEkgZGlzY2FyZCB0aGUgZmlyc3QgdHdvIHBhdGNocywgYW5kIHB1
bGwgdGhlIG5ldyBjb2RlLCB0aGVuDQogICBtb2RpZnkgYW5kIGdpdCBzZW5kLWVtYWlsIHRoaXMg
cGF0Y2g/DQoNCg0K09ogVGh1LCAxNyBOb3YgMjAyMiAxNDo0MjozNiArMDEwMA0KVGhvbWFzIFpp
bW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+INC0tcA6DQoNCj4gSGkNCj4gDQo+IEFtIDEx
LjExLjIyIHVtIDA0OjM4IHNjaHJpZWIgQ2h1bnlvdVRhbmc6DQo+ID4gd2hlbiBnb3RvIGVycl9m
cmVlLCB0aGUgb2JqZWN0IGhhZCBpbml0LCBzbyBpdCBzaG91bGQgYmUgcmVsZWFzZQ0KPiA+IHdo
ZW4gZmFpbC4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHVueW91VGFuZyA8dGFuZ2NodW55
b3VAMTYzLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgICAg
ICAgICAgICAgIHwgMTkgKysrKysrKysrKysrKysrKy0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2RybV9nZW1fc2htZW1faGVscGVyLmMgfCAgNCArKystDQo+ID4gICBpbmNsdWRlL2RybS9kcm1f
Z2VtLmggICAgICAgICAgICAgICAgICB8ICAxICsNCj4gPiAgIDMgZmlsZXMgY2hhbmdlZCwgMjAg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCj4gPiBp
bmRleCA4YjY4YTNjMWU2YWIuLmNiYTMyYzQ2YmIwNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0K
PiA+IEBAIC0xNjksNiArMTY5LDIxIEBAIHZvaWQgZHJtX2dlbV9wcml2YXRlX29iamVjdF9pbml0
KHN0cnVjdA0KPiA+IGRybV9kZXZpY2UgKmRldiwgfQ0KPiA+ICAgRVhQT1JUX1NZTUJPTChkcm1f
Z2VtX3ByaXZhdGVfb2JqZWN0X2luaXQpOw0KPiA+ICAgDQo+ID4gKy8qKg0KPiA+ICsgKiBkcm1f
Z2VtX3ByaXZhdGVfb2JqZWN0X2ZpbmkgLSBGaW5hbGl6ZSBhIGZhaWxlZCBkcm1fZ2VtX29iamVj
dA0KPiA+ICsgKiBAb2JqOiBkcm1fZ2VtX29iamVjdA0KPiA+ICsgKg0KPiA+ICsgKiBVbmluaXRp
YWxpemUgYW4gYWxyZWFkeSBhbGxvY2F0ZWQgR0VNIG9iamVjdCB3aGVuIGl0DQo+ID4gaW5pdGlh
bGl6ZWQgZmFpbGVkDQo+ID4gKyAqLw0KPiA+ICt2b2lkIGRybV9nZW1fcHJpdmF0ZV9vYmplY3Rf
ZmluaShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4gPiArew0KPiA+ICsJV0FSTl9PTihv
YmotPmRtYV9idWYpOw0KPiANCj4gUmF0aGVyIGxlYXNlIHRoaXMgaW4gaXRzIG9yaWdpbmFsIHBs
YWNlLg0KPiANCj4gPiArDQo+ID4gKwlkbWFfcmVzdl9maW5pKCZvYmotPl9yZXN2KTsNCj4gPiAr
CWRybV9nZW1fbHJ1X3JlbW92ZShvYmopOw0KPiANCj4gQUZBSUNUIGRybV9nZW1fbHJ1X3JlbW92
ZSgpIGRvZXNuJ3QgYmVsb25nIGludG8gdGhpcyBmdW5jdGlvbi4NCj4gDQo+ID4gK30NCj4gPiAr
RVhQT1JUX1NZTUJPTChkcm1fZ2VtX3ByaXZhdGVfb2JqZWN0X2ZpbmkpOw0KPiA+ICsNCj4gPiAg
IC8qKg0KPiA+ICAgICogZHJtX2dlbV9vYmplY3RfaGFuZGxlX2ZyZWUgLSByZWxlYXNlIHJlc291
cmNlcyBib3VuZCB0bw0KPiA+IHVzZXJzcGFjZSBoYW5kbGVzDQo+ID4gICAgKiBAb2JqOiBHRU0g
b2JqZWN0IHRvIGNsZWFuIHVwLg0KPiA+IEBAIC05MzAsMTQgKzk0NSwxMiBAQCBkcm1fZ2VtX3Jl
bGVhc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCj4gPiBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVf
cHJpdmF0ZSkgdm9pZA0KPiA+ICAgZHJtX2dlbV9vYmplY3RfcmVsZWFzZShzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKm9iaikNCj4gPiAgIHsNCj4gPiAtCVdBUk5fT04ob2JqLT5kbWFfYnVmKTsNCj4g
PiArCWRybV9nZW1fcHJpdmF0ZV9vYmplY3RfZmluaShvYmopOw0KPiA+ICAgDQo+ID4gICAJaWYg
KG9iai0+ZmlscCkNCj4gPiAgIAkJZnB1dChvYmotPmZpbHApOw0KPiA+ICAgDQo+ID4gLQlkbWFf
cmVzdl9maW5pKCZvYmotPl9yZXN2KTsNCj4gDQo+IFBsZWFzZSBjYWxsIGRybV9nZW1fcHJpdmF0
ZV9vYmplY3RfZmluaSgpIGhlcmUuDQo+IA0KPiA+ICAgCWRybV9nZW1fZnJlZV9tbWFwX29mZnNl
dChvYmopOw0KPiA+IC0JZHJtX2dlbV9scnVfcmVtb3ZlKG9iaik7DQo+IA0KPiBQbGVhc2Uga2Vl
cCB0aGlzIGxpbmUgaGVyZS4NCj4gDQo+IEJlc3QgcmVnYXJkcw0KPiBUaG9tYXMNCj4gDQo+ID4g
ICB9DQo+ID4gICBFWFBPUlRfU1lNQk9MKGRybV9nZW1fb2JqZWN0X3JlbGVhc2UpOw0KPiA+ICAg
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyBpbmRleA0KPiA+
IDM1MTM4ZjhhMzc1Yy4uODQ1ZTNkNWQ3MWViIDEwMDY0NCAtLS0NCj4gPiBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jICsrKw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW1fc2htZW1faGVscGVyLmMgQEAgLTc5LDggKzc5LDEwIEBADQo+ID4gX19kcm1fZ2VtX3No
bWVtX2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzaXplX3Qgc2l6ZSwgYm9vbA0KPiA+
IHByaXZhdGUpIH0gZWxzZSB7IHJldCA9IGRybV9nZW1fb2JqZWN0X2luaXQoZGV2LCBvYmosIHNp
emUpOw0KPiA+ICAgCX0NCj4gPiAtCWlmIChyZXQpDQo+ID4gKwlpZiAocmV0KSB7DQo+ID4gKwkJ
ZHJtX2dlbV9wcml2YXRlX29iamVjdF9maW5pKG9iaikNCj4gPiAgIAkJZ290byBlcnJfZnJlZTsN
Cj4gPiArCX0NCj4gPiAgIA0KPiA+ICAgCXJldCA9IGRybV9nZW1fY3JlYXRlX21tYXBfb2Zmc2V0
KG9iaik7DQo+ID4gICAJaWYgKHJldCkNCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJt
X2dlbS5oIGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQo+ID4gaW5kZXggYmQ0MmYyNWU0NDljLi45
YjFmZWIwMzA2OWQgMTAwNjQ0DQo+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQo+ID4g
KysrIGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQo+ID4gQEAgLTQwNSw2ICs0MDUsNyBAQCBpbnQg
ZHJtX2dlbV9vYmplY3RfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KPiA+ICAgCQkJc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHNpemVfdCBzaXplKTsNCj4gPiAgIHZvaWQgZHJtX2dl
bV9wcml2YXRlX29iamVjdF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+ID4gICAJCQkJ
IHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLA0KPiA+IHNpemVfdCBzaXplKTsgK3ZvaWQgZHJt
X2dlbV9wcml2YXRlX29iamVjdF9maW5pKHN0cnVjdA0KPiA+IGRybV9nZW1fb2JqZWN0ICpvYmop
OyB2b2lkIGRybV9nZW1fdm1fb3BlbihzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QNCj4gPiAqdm1hKTsg
dm9pZCBkcm1fZ2VtX3ZtX2Nsb3NlKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKTsNCj4gPiAg
IGludCBkcm1fZ2VtX21tYXBfb2JqKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCB1bnNpZ25l
ZCBsb25nDQo+ID4gb2JqX3NpemUsDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
