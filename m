Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 08723A84440
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Apr 2025 15:10:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1CF22454E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Apr 2025 13:10:25 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 7578C43F4B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Apr 2025 13:10:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of liviu.dudau@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=liviu.dudau@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BD7B1E8D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Apr 2025 06:10:09 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B2D623F6A8
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Apr 2025 06:10:08 -0700 (PDT)
Date: Thu, 10 Apr 2025 14:09:52 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: =?utf-8?Q?Adri=C3=A1n?= Larumbe <adrian.larumbe@collabora.com>
Message-ID: <Z_fDIECHzkJjpwDQ@e110455-lin.cambridge.arm.com>
References: <20250409212233.2036154-1-adrian.larumbe@collabora.com>
 <20250409212233.2036154-2-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250409212233.2036154-2-adrian.larumbe@collabora.com>
X-Rspamd-Queue-Id: 7578C43F4B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	RCVD_IN_DNSWL_MED(-0.20)[217.140.110.172:from];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	URIBL_BLOCKED(0.00)[foss.arm.com:helo,foss.arm.com:rdns,arm.com:email];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: S4JI6QH3T72IUCYGWFLAVESVH22TOVWV
X-Message-ID-Hash: S4JI6QH3T72IUCYGWFLAVESVH22TOVWV
X-MailFrom: liviu.dudau@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 1/4] drm/panthor: Introduce BO labeling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S4JI6QH3T72IUCYGWFLAVESVH22TOVWV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMDksIDIwMjUgYXQgMTA6MjI6MTlQTSArMDEwMCwgQWRyacOhbiBMYXJ1bWJl
IHdyb3RlOg0KPiBBZGQgYSBuZXcgY2hhcmFjdGVyIHN0cmluZyBQYW50aG9yIEJPIGZpZWxkLCBh
bmQgYSBmdW5jdGlvbiB0aGF0IGFsbG93cw0KPiBzZXR0aW5nIGl0IGZyb20gd2l0aGluIHRoZSBk
cml2ZXIuDQo+IA0KPiBEcml2ZXIgdGFrZXMgY2FyZSBvZiBmcmVlaW5nIHRoZSBzdHJpbmcgd2hl
biBpdCdzIHJlcGxhY2VkIG9yIG5vIGxvbmdlcg0KPiBuZWVkZWQgYXQgb2JqZWN0IGRlc3RydWN0
aW9uIHRpbWUsIGJ1dCBhbGxvY2F0aW5nIGl0IGlzIHRoZSByZXNwb25zaWJpbGl0eQ0KPiBvZiBj
YWxsZXJzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWRyacOhbiBMYXJ1bWJlIDxhZHJpYW4ubGFy
dW1iZUBjb2xsYWJvcmEuY29tPg0KPiBSZXZpZXdlZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jp
cy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IExpdml1IER1ZGF1IDxs
aXZpdS5kdWRhdUBhcm0uY29tPg0KDQpCZXN0IHJlZ2FyZHMsDQpMaXZpdQ0KDQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9nZW0uYyB8IDM5ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9nZW0uaCB8
IDE3ICsrKysrKysrKysrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA1NiBpbnNlcnRpb25zKCspDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9nZW0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZ2VtLmMNCj4gaW5kZXggODI0NGE0ZTZj
MmEyLi5hZjBhYzE3ZjM1N2YgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW50aG9y
L3BhbnRob3JfZ2VtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9n
ZW0uYw0KPiBAQCAtMiw2ICsyLDcgQEANCj4gIC8qIENvcHlyaWdodCAyMDE5IExpbmFybywgTHRk
LCBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPiAqLw0KPiAgLyogQ29weXJpZ2h0IDIwMjMg
Q29sbGFib3JhIGx0ZC4gKi8NCj4gIA0KPiArI2luY2x1ZGUgPGxpbnV4L2NsZWFudXAuaD4NCj4g
ICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvZG1hLW1hcHBp
bmcuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9lcnIuaD4NCj4gQEAgLTE4LDYgKzE5LDE0IEBAIHN0
YXRpYyB2b2lkIHBhbnRob3JfZ2VtX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
b2JqKQ0KPiAgCXN0cnVjdCBwYW50aG9yX2dlbV9vYmplY3QgKmJvID0gdG9fcGFudGhvcl9ibyhv
YmopOw0KPiAgCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqdm1fcm9vdF9nZW0gPSBiby0+ZXhjbHVz
aXZlX3ZtX3Jvb3RfZ2VtOw0KPiAgDQo+ICsJLyoNCj4gKwkgKiBMYWJlbCBtaWdodCBoYXZlIGJl
ZW4gYWxsb2NhdGVkIHdpdGgga3N0cmR1cF9jb25zdCgpLA0KPiArCSAqIHdlIG5lZWQgdG8gdGFr
ZSB0aGF0IGludG8gYWNjb3VudCB3aGVuIGZyZWVpbmcgdGhlIG1lbW9yeQ0KPiArCSAqLw0KPiAr
CWtmcmVlX2NvbnN0KGJvLT5sYWJlbC5zdHIpOw0KPiArDQo+ICsJbXV0ZXhfZGVzdHJveSgmYm8t
PmxhYmVsLmxvY2spOw0KPiArDQo+ICAJZHJtX2dlbV9mcmVlX21tYXBfb2Zmc2V0KCZiby0+YmFz
ZS5iYXNlKTsNCj4gIAltdXRleF9kZXN0cm95KCZiby0+Z3B1dmFfbGlzdF9sb2NrKTsNCj4gIAlk
cm1fZ2VtX3NobWVtX2ZyZWUoJmJvLT5iYXNlKTsNCj4gQEAgLTE5Niw2ICsyMDUsNyBAQCBzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKnBhbnRob3JfZ2VtX2NyZWF0ZV9vYmplY3Qoc3RydWN0IGRybV9k
ZXZpY2UgKmRkZXYsIHNpemVfdA0KPiAgCW9iai0+YmFzZS5tYXBfd2MgPSAhcHRkZXYtPmNvaGVy
ZW50Ow0KPiAgCW11dGV4X2luaXQoJm9iai0+Z3B1dmFfbGlzdF9sb2NrKTsNCj4gIAlkcm1fZ2Vt
X2dwdXZhX3NldF9sb2NrKCZvYmotPmJhc2UuYmFzZSwgJm9iai0+Z3B1dmFfbGlzdF9sb2NrKTsN
Cj4gKwltdXRleF9pbml0KCZvYmotPmxhYmVsLmxvY2spOw0KPiAgDQo+ICAJcmV0dXJuICZvYmot
PmJhc2UuYmFzZTsNCj4gIH0NCj4gQEAgLTI0NywzICsyNTcsMzIgQEAgcGFudGhvcl9nZW1fY3Jl
YXRlX3dpdGhfaGFuZGxlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwNCj4gIA0KPiAgCXJldHVybiBy
ZXQ7DQo+ICB9DQo+ICsNCj4gK3ZvaWQNCj4gK3BhbnRob3JfZ2VtX2JvX3NldF9sYWJlbChzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgY29uc3QgY2hhciAqbGFiZWwpDQo+ICt7DQo+ICsJc3Ry
dWN0IHBhbnRob3JfZ2VtX29iamVjdCAqYm8gPSB0b19wYW50aG9yX2JvKG9iaik7DQo+ICsJY29u
c3QgY2hhciAqb2xkX2xhYmVsOw0KPiArDQo+ICsJc2NvcGVkX2d1YXJkKG11dGV4LCAmYm8tPmxh
YmVsLmxvY2spIHsNCj4gKwkJb2xkX2xhYmVsID0gYm8tPmxhYmVsLnN0cjsNCj4gKwkJYm8tPmxh
YmVsLnN0ciA9IGxhYmVsOw0KPiArCX0NCj4gKw0KPiArCWtmcmVlKG9sZF9sYWJlbCk7DQo+ICt9
DQo+ICsNCj4gK3ZvaWQNCj4gK3BhbnRob3JfZ2VtX2tlcm5lbF9ib19zZXRfbGFiZWwoc3RydWN0
IHBhbnRob3Jfa2VybmVsX2JvICpibywgY29uc3QgY2hhciAqbGFiZWwpDQo+ICt7DQo+ICsJY29u
c3QgY2hhciAqc3RyOw0KPiArDQo+ICsJc3RyID0ga3N0cmR1cF9jb25zdChsYWJlbCwgR0ZQX0tF
Uk5FTCk7DQo+ICsJaWYgKCFzdHIpIHsNCj4gKwkJLyogRmFpbGluZyB0byBhbGxvY2F0ZSBtZW1v
cnkgZm9yIGEgbGFiZWwgaXNuJ3QgYSBmYXRhbCBjb25kaXRpb24gKi8NCj4gKwkJZHJtX3dhcm4o
Ym8tPm9iai0+ZGV2LCAiTm90IGVub3VnaCBtZW1vcnkgdG8gYWxsb2NhdGUgQk8gbGFiZWwiKTsN
Cj4gKwkJcmV0dXJuOw0KPiArCX0NCj4gKw0KPiArCXBhbnRob3JfZ2VtX2JvX3NldF9sYWJlbChi
by0+b2JqLCBzdHIpOw0KPiArfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbnRo
b3IvcGFudGhvcl9nZW0uaCBiL2RyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZ2VtLmgN
Cj4gaW5kZXggMWEzNjNiYjgxNGY0Li5hZjBkNzczMzg4NjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZ2VtLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L3BhbnRob3IvcGFudGhvcl9nZW0uaA0KPiBAQCAtNDYsNiArNDYsMjAgQEAgc3RydWN0IHBhbnRo
b3JfZ2VtX29iamVjdCB7DQo+ICANCj4gIAkvKiogQGZsYWdzOiBDb21iaW5hdGlvbiBvZiBkcm1f
cGFudGhvcl9ib19mbGFncyBmbGFncy4gKi8NCj4gIAl1MzIgZmxhZ3M7DQo+ICsNCj4gKwkvKioN
Cj4gKwkgKiBAbGFiZWw6IEJPIHRhZ2dpbmcgZmllbGRzLiBUaGUgbGFiZWwgY2FuIGJlIGFzc2ln
bmVkIHdpdGhpbiB0aGUNCj4gKwkgKiBkcml2ZXIgaXRzZWxmIG9yIHRocm91Z2ggYSBzcGVjaWZp
YyBJT0NUTC4NCj4gKwkgKi8NCj4gKwlzdHJ1Y3Qgew0KPiArCQkvKioNCj4gKwkJICogQGxhYmVs
LnN0cjogUG9pbnRlciB0byBOVUxMLXRlcm1pbmF0ZWQgc3RyaW5nLA0KPiArCQkgKi8NCj4gKwkJ
Y29uc3QgY2hhciAqc3RyOw0KPiArDQo+ICsJCS8qKiBAbG9jay5zdHI6IFByb3RlY3RzIGFjY2Vz
cyB0byB0aGUgQGxhYmVsLnN0ciBmaWVsZC4gKi8NCj4gKwkJc3RydWN0IG11dGV4IGxvY2s7DQo+
ICsJfSBsYWJlbDsNCj4gIH07DQo+ICANCj4gIC8qKg0KPiBAQCAtOTEsNiArMTA1LDkgQEAgcGFu
dGhvcl9nZW1fY3JlYXRlX3dpdGhfaGFuZGxlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwNCj4gIAkJ
CSAgICAgICBzdHJ1Y3QgcGFudGhvcl92bSAqZXhjbHVzaXZlX3ZtLA0KPiAgCQkJICAgICAgIHU2
NCAqc2l6ZSwgdTMyIGZsYWdzLCB1aW50MzJfdCAqaGFuZGxlKTsNCj4gIA0KPiArdm9pZCBwYW50
aG9yX2dlbV9ib19zZXRfbGFiZWwoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIGNvbnN0IGNo
YXIgKmxhYmVsKTsNCj4gK3ZvaWQgcGFudGhvcl9nZW1fa2VybmVsX2JvX3NldF9sYWJlbChzdHJ1
Y3QgcGFudGhvcl9rZXJuZWxfYm8gKmJvLCBjb25zdCBjaGFyICpsYWJlbCk7DQo+ICsNCj4gIHN0
YXRpYyBpbmxpbmUgdTY0DQo+ICBwYW50aG9yX2tlcm5lbF9ib19ncHV2YShzdHJ1Y3QgcGFudGhv
cl9rZXJuZWxfYm8gKmJvKQ0KPiAgew0KPiAtLSANCj4gMi40OC4xDQo+IA0KDQotLSANCj09PT09
PT09PT09PT09PT09PT09DQp8IEkgd291bGQgbGlrZSB0byB8DQp8IGZpeCB0aGUgd29ybGQsICB8
DQp8IGJ1dCB0aGV5J3JlIG5vdCB8DQp8IGdpdmluZyBtZSB0aGUgICB8DQogXCBzb3VyY2UgY29k
ZSEgIC8NCiAgLS0tLS0tLS0tLS0tLS0tDQogICAgwq9cXyjjg4QpXy/Crw0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
