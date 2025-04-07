Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 34768A7DF6D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Apr 2025 15:36:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 433793F5D2
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Apr 2025 13:36:39 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 9383E3F5D2
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Apr 2025 13:36:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of liviu.dudau@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=liviu.dudau@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 449D81424
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Apr 2025 06:36:25 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D84943F59E
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Apr 2025 06:36:23 -0700 (PDT)
Date: Mon, 7 Apr 2025 14:36:06 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: =?utf-8?Q?Adri=C3=A1n?= Larumbe <adrian.larumbe@collabora.com>
Message-ID: <Z_PUxtf3XaYh_Fvu@e110455-lin.cambridge.arm.com>
References: <20250402115432.1469703-1-adrian.larumbe@collabora.com>
 <20250402115432.1469703-3-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250402115432.1469703-3-adrian.larumbe@collabora.com>
X-Rspamd-Queue-Id: 9383E3F5D2
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
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XAAKF2Q2GVJH5XFANP2I6IBENFX52VJ7
X-Message-ID-Hash: XAAKF2Q2GVJH5XFANP2I6IBENFX52VJ7
X-MailFrom: liviu.dudau@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 2/4] drm/panthor: Add driver IOCTL for setting BO labels
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XAAKF2Q2GVJH5XFANP2I6IBENFX52VJ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMDIsIDIwMjUgYXQgMTI6NTQ6MjdQTSArMDEwMCwgQWRyacOhbiBMYXJ1bWJl
IHdyb3RlOg0KPiBBbGxvdyBVTSB0byBsYWJlbCBhIEJPIGZvciB3aGljaCBpdCBwb3NzZXNzZXMg
YSBEUk0gaGFuZGxlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWRyacOhbiBMYXJ1bWJlIDxhZHJp
YW4ubGFydW1iZUBjb2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9wYW50
aG9yL3BhbnRob3JfZHJ2LmMgfCA0MCArKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIGRy
aXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZ2VtLmggfCAgMiArKw0KPiAgaW5jbHVkZS91
YXBpL2RybS9wYW50aG9yX2RybS5oICAgICAgICB8IDE5ICsrKysrKysrKysrKysNCj4gIDMgZmls
ZXMgY2hhbmdlZCwgNjEgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9wYW50aG9yL3BhbnRob3JfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vcGFudGhvci9w
YW50aG9yX2Rydi5jDQo+IGluZGV4IDMxMGJiNDRhYmUxYS4uZDUyNzcyODRmZTI3IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2Rydi5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZHJ2LmMNCj4gQEAgLTEzMzAsNiArMTMzMCw0
NCBAQCBzdGF0aWMgaW50IHBhbnRob3JfaW9jdGxfdm1fZ2V0X3N0YXRlKHN0cnVjdCBkcm1fZGV2
aWNlICpkZGV2LCB2b2lkICpkYXRhLA0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiAgDQo+ICtzdGF0
aWMgaW50IHBhbnRob3JfaW9jdGxfYm9fc2V0X2xhYmVsKHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2
LCB2b2lkICpkYXRhLA0KPiArCQkJCSAgc3RydWN0IGRybV9maWxlICpmaWxlKQ0KPiArew0KPiAr
CXN0cnVjdCBkcm1fcGFudGhvcl9ib19zZXRfbGFiZWwgKmFyZ3MgPSBkYXRhOw0KPiArCXN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqOw0KPiArCWNvbnN0IGNoYXIgKmxhYmVsOw0KPiArCWludCBy
ZXQgPSAwOw0KPiArDQo+ICsJb2JqID0gZHJtX2dlbV9vYmplY3RfbG9va3VwKGZpbGUsIGFyZ3Mt
PmhhbmRsZSk7DQo+ICsJaWYgKCFvYmopDQo+ICsJCXJldHVybiAtRU5PRU5UOw0KPiArDQo+ICsJ
aWYgKGFyZ3MtPnNpemUgJiYgYXJncy0+bGFiZWwpIHsNCj4gKwkJaWYgKGFyZ3MtPnNpemUgPiBQ
QU5USE9SX0JPX0xBQkVMX01BWExFTikgew0KPiArCQkJcmV0ID0gLUUyQklHOw0KPiArCQkJZ290
byBlcnJfbGFiZWw7DQo+ICsJCX0NCj4gKw0KPiArCQlsYWJlbCA9IHN0cm5kdXBfdXNlcih1NjRf
dG9fdXNlcl9wdHIoYXJncy0+bGFiZWwpLCBhcmdzLT5zaXplKTsNCj4gKwkJaWYgKElTX0VSUihs
YWJlbCkpIHsNCj4gKwkJCXJldCA9IFBUUl9FUlIobGFiZWwpOw0KPiArCQkJZ290byBlcnJfbGFi
ZWw7DQo+ICsJCX0NCj4gKwl9IGVsc2UgaWYgKGFyZ3MtPnNpemUgJiYgIWFyZ3MtPmxhYmVsKSB7
DQo+ICsJCXJldCA9IC1FSU5WQUw7DQo+ICsJCWdvdG8gZXJyX2xhYmVsOw0KPiArCX0gZWxzZSB7
DQo+ICsJCWxhYmVsID0gTlVMTDsNCj4gKwl9DQo+ICsNCj4gKwlwYW50aG9yX2dlbV9ib19zZXRf
bGFiZWwob2JqLCBsYWJlbCk7DQo+ICsNCj4gK2Vycl9sYWJlbDoNCj4gKwlkcm1fZ2VtX29iamVj
dF9wdXQob2JqKTsNCj4gKw0KPiArCXJldHVybiByZXQ7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBp
bnQNCj4gIHBhbnRob3Jfb3BlbihzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiwgc3RydWN0IGRybV9m
aWxlICpmaWxlKQ0KPiAgew0KPiBAQCAtMTM5OSw2ICsxNDM3LDcgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1faW9jdGxfZGVzYyBwYW50aG9yX2RybV9kcml2ZXJfaW9jdGxzW10gPSB7DQo+ICAJ
UEFOVEhPUl9JT0NUTChUSUxFUl9IRUFQX0NSRUFURSwgdGlsZXJfaGVhcF9jcmVhdGUsIERSTV9S
RU5ERVJfQUxMT1cpLA0KPiAgCVBBTlRIT1JfSU9DVEwoVElMRVJfSEVBUF9ERVNUUk9ZLCB0aWxl
cl9oZWFwX2Rlc3Ryb3ksIERSTV9SRU5ERVJfQUxMT1cpLA0KPiAgCVBBTlRIT1JfSU9DVEwoR1JP
VVBfU1VCTUlULCBncm91cF9zdWJtaXQsIERSTV9SRU5ERVJfQUxMT1cpLA0KPiArCVBBTlRIT1Jf
SU9DVEwoQk9fU0VUX0xBQkVMLCBib19zZXRfbGFiZWwsIERSTV9SRU5ERVJfQUxMT1cpLA0KPiAg
fTsNCj4gIA0KPiAgc3RhdGljIGludCBwYW50aG9yX21tYXAoc3RydWN0IGZpbGUgKmZpbHAsIHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQ0KPiBAQCAtMTUwOCw2ICsxNTQ3LDcgQEAgc3RhdGlj
IHZvaWQgcGFudGhvcl9kZWJ1Z2ZzX2luaXQoc3RydWN0IGRybV9taW5vciAqbWlub3IpDQo+ICAg
KiAtIDEuMiAtIGFkZHMgREVWX1FVRVJZX0dST1VQX1BSSU9SSVRJRVNfSU5GTyBxdWVyeQ0KPiAg
ICogICAgICAgLSBhZGRzIFBBTlRIT1JfR1JPVVBfUFJJT1JJVFlfUkVBTFRJTUUgcHJpb3JpdHkN
Cj4gICAqIC0gMS4zIC0gYWRkcyBEUk1fUEFOVEhPUl9HUk9VUF9TVEFURV9JTk5PQ0VOVCBmbGFn
DQo+ICsgKiAtIDEuNCAtIGFkZHMgRFJNX0lPQ1RMX1BBTlRIT1JfQk9fU0VUX0xBQkVMIGlvY3Rs
DQoNCkhpIEFkcmnDoW4sDQoNCllvdSBhbHNvIG5lZWQgdG8gdXBkYXRlIHRoZSAubWlub3IgdmFs
dWUuDQoNCldpdGggdGhhdCBjaGFuZ2UsDQoNClJldmlld2VkLWJ5OiBMaXZpdSBEdWRhdSA8bGl2
aXUuZHVkYXVAYXJtLmNvbT4NCg0KQmVzdCByZWdhcmRzLA0KTGl2aXUNCg0KPiAgICovDQo+ICBz
dGF0aWMgY29uc3Qgc3RydWN0IGRybV9kcml2ZXIgcGFudGhvcl9kcm1fZHJpdmVyID0gew0KPiAg
CS5kcml2ZXJfZmVhdHVyZXMgPSBEUklWRVJfUkVOREVSIHwgRFJJVkVSX0dFTSB8IERSSVZFUl9T
WU5DT0JKIHwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3Jf
Z2VtLmggYi9kcml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2dlbS5oDQo+IGluZGV4IDA1
ODI4MjZiMzQxYS4uZTE4ZmJjMDkzYWJkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cGFudGhvci9wYW50aG9yX2dlbS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3Bh
bnRob3JfZ2VtLmgNCj4gQEAgLTEzLDYgKzEzLDggQEANCj4gIA0KPiAgc3RydWN0IHBhbnRob3Jf
dm07DQo+ICANCj4gKyNkZWZpbmUgUEFOVEhPUl9CT19MQUJFTF9NQVhMRU4JUEFHRV9TSVpFDQo+
ICsNCj4gIC8qKg0KPiAgICogc3RydWN0IHBhbnRob3JfZ2VtX29iamVjdCAtIERyaXZlciBzcGVj
aWZpYyBHRU0gb2JqZWN0Lg0KPiAgICovDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJt
L3BhbnRob3JfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL3BhbnRob3JfZHJtLmgNCj4gaW5kZXgg
OTdlMmM0NTEwZTY5Li4yNmI1MmYxNDczNjAgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvdWFwaS9k
cm0vcGFudGhvcl9kcm0uaA0KPiArKysgYi9pbmNsdWRlL3VhcGkvZHJtL3BhbnRob3JfZHJtLmgN
Cj4gQEAgLTEyNyw2ICsxMjcsOSBAQCBlbnVtIGRybV9wYW50aG9yX2lvY3RsX2lkIHsNCj4gIA0K
PiAgCS8qKiBARFJNX1BBTlRIT1JfVElMRVJfSEVBUF9ERVNUUk9ZOiBEZXN0cm95IGEgdGlsZXIg
aGVhcC4gKi8NCj4gIAlEUk1fUEFOVEhPUl9USUxFUl9IRUFQX0RFU1RST1ksDQo+ICsNCj4gKwkv
KiogQERSTV9QQU5USE9SX0JPX1NFVF9MQUJFTDogTGFiZWwgYSBCTy4gKi8NCj4gKwlEUk1fUEFO
VEhPUl9CT19TRVRfTEFCRUwsDQo+ICB9Ow0KPiAgDQo+ICAvKioNCj4gQEAgLTk3Nyw2ICs5ODAs
MjAgQEAgc3RydWN0IGRybV9wYW50aG9yX3RpbGVyX2hlYXBfZGVzdHJveSB7DQo+ICAJX191MzIg
cGFkOw0KPiAgfTsNCj4gIA0KPiArLyoqDQo+ICsgKiBzdHJ1Y3QgZHJtX3BhbnRob3JfYm9fc2V0
X2xhYmVsIC0gQXJndW1lbnRzIHBhc3NlZCB0byBEUk1fSU9DVExfUEFOVEhPUl9CT19TRVRfTEFC
RUwNCj4gKyAqLw0KPiArc3RydWN0IGRybV9wYW50aG9yX2JvX3NldF9sYWJlbCB7DQo+ICsJLyoq
IEBoYW5kbGU6IEhhbmRsZSBvZiB0aGUgYnVmZmVyIG9iamVjdCB0byBsYWJlbC4gKi8NCj4gKwlf
X3UzMiBoYW5kbGU7DQo+ICsNCj4gKwkvKiogQHNpemU6IExlbmd0aCBvZiB0aGUgbGFiZWwsIGlu
Y2x1ZGluZyB0aGUgTlVMTCB0ZXJtaW5hdG9yLiAqLw0KPiArCV9fdTMyIHNpemU7DQo+ICsNCj4g
KwkvKiogQGxhYmVsOiBVc2VyIHBvaW50ZXIgdG8gYSBOVUxMLXRlcm1pbmF0ZWQgc3RyaW5nICov
DQo+ICsJX191NjQgbGFiZWw7DQo+ICt9Ow0KPiArDQo+ICAvKioNCj4gICAqIERSTV9JT0NUTF9Q
QU5USE9SKCkgLSBCdWlsZCBhIFBhbnRob3IgSU9DVEwgbnVtYmVyDQo+ICAgKiBAX19hY2Nlc3M6
IEFjY2VzcyB0eXBlLiBNdXN0IGJlIFIsIFcgb3IgUlcuDQo+IEBAIC0xMDE5LDYgKzEwMzYsOCBA
QCBlbnVtIHsNCj4gIAkJRFJNX0lPQ1RMX1BBTlRIT1IoV1IsIFRJTEVSX0hFQVBfQ1JFQVRFLCB0
aWxlcl9oZWFwX2NyZWF0ZSksDQo+ICAJRFJNX0lPQ1RMX1BBTlRIT1JfVElMRVJfSEVBUF9ERVNU
Uk9ZID0NCj4gIAkJRFJNX0lPQ1RMX1BBTlRIT1IoV1IsIFRJTEVSX0hFQVBfREVTVFJPWSwgdGls
ZXJfaGVhcF9kZXN0cm95KSwNCj4gKwlEUk1fSU9DVExfUEFOVEhPUl9CT19TRVRfTEFCRUwgPQ0K
PiArCQlEUk1fSU9DVExfUEFOVEhPUihXUiwgQk9fU0VUX0xBQkVMLCBib19zZXRfbGFiZWwpLA0K
PiAgfTsNCj4gIA0KPiAgI2lmIGRlZmluZWQoX19jcGx1c3BsdXMpDQo+IC0tIA0KPiAyLjQ4LjEN
Cj4gDQoNCi0tIA0KPT09PT09PT09PT09PT09PT09PT0NCnwgSSB3b3VsZCBsaWtlIHRvIHwNCnwg
Zml4IHRoZSB3b3JsZCwgIHwNCnwgYnV0IHRoZXkncmUgbm90IHwNCnwgZ2l2aW5nIG1lIHRoZSAg
IHwNCiBcIHNvdXJjZSBjb2RlISAgLw0KICAtLS0tLS0tLS0tLS0tLS0NCiAgICDCr1xfKOODhClf
L8KvDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
