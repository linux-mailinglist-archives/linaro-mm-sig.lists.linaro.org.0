Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 99129A87C4C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 11:50:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FA4C459A1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 09:50:24 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 4975840C96
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 09:50:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 491921007;
	Mon, 14 Apr 2025 02:50:07 -0700 (PDT)
Received: from [10.57.87.24] (unknown [10.57.87.24])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 098953F66E;
	Mon, 14 Apr 2025 02:50:04 -0700 (PDT)
Message-ID: <93a4ec41-3bd8-4485-a4fe-d0def3509b79@arm.com>
Date: Mon, 14 Apr 2025 10:50:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Adri=C3=A1n_Larumbe?= <adrian.larumbe@collabora.com>,
 "To : Boris Brezillon" <boris.brezillon@collabora.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20250411150357.3308921-1-adrian.larumbe@collabora.com>
 <20250411150357.3308921-2-adrian.larumbe@collabora.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20250411150357.3308921-2-adrian.larumbe@collabora.com>
X-Rspamd-Queue-Id: 4975840C96
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[217.140.110.172:from];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[217.140.110.172:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: MAKJH7JLYAIWDBNFG5MESDVR4J44IWOR
X-Message-ID-Hash: MAKJH7JLYAIWDBNFG5MESDVR4J44IWOR
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 1/4] drm/panthor: Introduce BO labeling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MAKJH7JLYAIWDBNFG5MESDVR4J44IWOR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWRyacOhbiwNCg0KT24gMTEvMDQvMjAyNSAxNjowMywgQWRyacOhbiBMYXJ1bWJlIHdyb3Rl
Og0KPiBBZGQgYSBuZXcgY2hhcmFjdGVyIHN0cmluZyBQYW50aG9yIEJPIGZpZWxkLCBhbmQgYSBm
dW5jdGlvbiB0aGF0IGFsbG93cw0KPiBzZXR0aW5nIGl0IGZyb20gd2l0aGluIHRoZSBkcml2ZXIu
DQo+IA0KPiBEcml2ZXIgdGFrZXMgY2FyZSBvZiBmcmVlaW5nIHRoZSBzdHJpbmcgd2hlbiBpdCdz
IHJlcGxhY2VkIG9yIG5vIGxvbmdlcg0KPiBuZWVkZWQgYXQgb2JqZWN0IGRlc3RydWN0aW9uIHRp
bWUsIGJ1dCBhbGxvY2F0aW5nIGl0IGlzIHRoZSByZXNwb25zaWJpbGl0eQ0KPiBvZiBjYWxsZXJz
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWRyacOhbiBMYXJ1bWJlIDxhZHJpYW4ubGFydW1iZUBj
b2xsYWJvcmEuY29tPg0KPiBSZXZpZXdlZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6
aWxsb25AY29sbGFib3JhLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vcGFudGhvci9w
YW50aG9yX2dlbS5jIHwgMzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICBkcml2ZXJz
L2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2dlbS5oIHwgMTcgKysrKysrKysrKysrDQo+ICAyIGZp
bGVzIGNoYW5nZWQsIDU2IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbnRob3Iv
cGFudGhvcl9nZW0uYw0KPiBpbmRleCA4MjQ0YTRlNmMyYTIuLmFmMGFjMTdmMzU3ZiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9nZW0uYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2dlbS5jDQo+IEBAIC0yLDYgKzIsNyBAQA0K
PiAgLyogQ29weXJpZ2h0IDIwMTkgTGluYXJvLCBMdGQsIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+ICovDQo+ICAvKiBDb3B5cmlnaHQgMjAyMyBDb2xsYWJvcmEgbHRkLiAqLw0KPiAgDQo+
ICsjaW5jbHVkZSA8bGludXgvY2xlYW51cC5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYu
aD4NCj4gICNpbmNsdWRlIDxsaW51eC9kbWEtbWFwcGluZy5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4
L2Vyci5oPg0KPiBAQCAtMTgsNiArMTksMTQgQEAgc3RhdGljIHZvaWQgcGFudGhvcl9nZW1fZnJl
ZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQo+ICAJc3RydWN0IHBhbnRob3Jf
Z2VtX29iamVjdCAqYm8gPSB0b19wYW50aG9yX2JvKG9iaik7DQo+ICAJc3RydWN0IGRybV9nZW1f
b2JqZWN0ICp2bV9yb290X2dlbSA9IGJvLT5leGNsdXNpdmVfdm1fcm9vdF9nZW07DQo+ICANCj4g
KwkvKg0KPiArCSAqIExhYmVsIG1pZ2h0IGhhdmUgYmVlbiBhbGxvY2F0ZWQgd2l0aCBrc3RyZHVw
X2NvbnN0KCksDQo+ICsJICogd2UgbmVlZCB0byB0YWtlIHRoYXQgaW50byBhY2NvdW50IHdoZW4g
ZnJlZWluZyB0aGUgbWVtb3J5DQo+ICsJICovDQo+ICsJa2ZyZWVfY29uc3QoYm8tPmxhYmVsLnN0
cik7DQo+ICsNCj4gKwltdXRleF9kZXN0cm95KCZiby0+bGFiZWwubG9jayk7DQo+ICsNCj4gIAlk
cm1fZ2VtX2ZyZWVfbW1hcF9vZmZzZXQoJmJvLT5iYXNlLmJhc2UpOw0KPiAgCW11dGV4X2Rlc3Ry
b3koJmJvLT5ncHV2YV9saXN0X2xvY2spOw0KPiAgCWRybV9nZW1fc2htZW1fZnJlZSgmYm8tPmJh
c2UpOw0KPiBAQCAtMTk2LDYgKzIwNSw3IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqcGFudGhv
cl9nZW1fY3JlYXRlX29iamVjdChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiwgc2l6ZV90DQo+ICAJ
b2JqLT5iYXNlLm1hcF93YyA9ICFwdGRldi0+Y29oZXJlbnQ7DQo+ICAJbXV0ZXhfaW5pdCgmb2Jq
LT5ncHV2YV9saXN0X2xvY2spOw0KPiAgCWRybV9nZW1fZ3B1dmFfc2V0X2xvY2soJm9iai0+YmFz
ZS5iYXNlLCAmb2JqLT5ncHV2YV9saXN0X2xvY2spOw0KPiArCW11dGV4X2luaXQoJm9iai0+bGFi
ZWwubG9jayk7DQo+ICANCj4gIAlyZXR1cm4gJm9iai0+YmFzZS5iYXNlOw0KPiAgfQ0KPiBAQCAt
MjQ3LDMgKzI1NywzMiBAQCBwYW50aG9yX2dlbV9jcmVhdGVfd2l0aF9oYW5kbGUoc3RydWN0IGRy
bV9maWxlICpmaWxlLA0KPiAgDQo+ICAJcmV0dXJuIHJldDsNCj4gIH0NCj4gKw0KPiArdm9pZA0K
PiArcGFudGhvcl9nZW1fYm9fc2V0X2xhYmVsKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBj
b25zdCBjaGFyICpsYWJlbCkNCj4gK3sNCj4gKwlzdHJ1Y3QgcGFudGhvcl9nZW1fb2JqZWN0ICpi
byA9IHRvX3BhbnRob3JfYm8ob2JqKTsNCj4gKwljb25zdCBjaGFyICpvbGRfbGFiZWw7DQo+ICsN
Cj4gKwlzY29wZWRfZ3VhcmQobXV0ZXgsICZiby0+bGFiZWwubG9jaykgew0KPiArCQlvbGRfbGFi
ZWwgPSBiby0+bGFiZWwuc3RyOw0KPiArCQliby0+bGFiZWwuc3RyID0gbGFiZWw7DQo+ICsJfQ0K
PiArDQo+ICsJa2ZyZWUob2xkX2xhYmVsKTsNCg0KU2hvdWxkbid0IHRoaXMgYmUga2ZyZWVfY29u
c3QoKT8gSSBzdXNwZWN0IGFzIHRoaW5ncyBzdGFuZCB3ZSBjYW4ndA0KdHJpZ2dlciB0aGlzIGJ1
ZyBidXQgaXQncyBpbmNvbnNpc3RlbnQuDQoNCj4gK30NCj4gKw0KPiArdm9pZA0KPiArcGFudGhv
cl9nZW1fa2VybmVsX2JvX3NldF9sYWJlbChzdHJ1Y3QgcGFudGhvcl9rZXJuZWxfYm8gKmJvLCBj
b25zdCBjaGFyICpsYWJlbCkNCj4gK3sNCj4gKwljb25zdCBjaGFyICpzdHI7DQo+ICsNCj4gKwlz
dHIgPSBrc3RyZHVwX2NvbnN0KGxhYmVsLCBHRlBfS0VSTkVMKTsNCj4gKwlpZiAoIXN0cikgew0K
DQpJbiB0aGUgbmV4dCBwYXRjaCB5b3UgcGVybWl0IHVzZXIgc3BhY2UgdG8gY2xlYXIgdGhlIGxh
YmVsDQooYXJncy0+c2l6ZT09MCkgd2hpY2ggbWVhbnMgbGFiZWw9PU5VTEwgYW5kIEFGQUlDVCBr
c3RyZHVwX2NvbnN0KCkgd2lsbA0KcmV0dXJuIE5VTEwgaW4gdGhpcyBjYXNlIHRyaWdnZXJpbmcg
dGhpcyB3YXJuaW5nLg0KDQpUaGFua3MsDQpTdGV2ZQ0KDQo+ICsJCS8qIEZhaWxpbmcgdG8gYWxs
b2NhdGUgbWVtb3J5IGZvciBhIGxhYmVsIGlzbid0IGEgZmF0YWwgY29uZGl0aW9uICovDQo+ICsJ
CWRybV93YXJuKGJvLT5vYmotPmRldiwgIk5vdCBlbm91Z2ggbWVtb3J5IHRvIGFsbG9jYXRlIEJP
IGxhYmVsIik7DQo+ICsJCXJldHVybjsNCj4gKwl9DQo+ICsNCj4gKwlwYW50aG9yX2dlbV9ib19z
ZXRfbGFiZWwoYm8tPm9iaiwgc3RyKTsNCj4gK30NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9wYW50aG9yL3BhbnRob3JfZ2VtLmggYi9kcml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50
aG9yX2dlbS5oDQo+IGluZGV4IDFhMzYzYmI4MTRmNC4uYWYwZDc3MzM4ODYwIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2dlbS5oDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZ2VtLmgNCj4gQEAgLTQ2LDYgKzQ2LDIwIEBAIHN0
cnVjdCBwYW50aG9yX2dlbV9vYmplY3Qgew0KPiAgDQo+ICAJLyoqIEBmbGFnczogQ29tYmluYXRp
b24gb2YgZHJtX3BhbnRob3JfYm9fZmxhZ3MgZmxhZ3MuICovDQo+ICAJdTMyIGZsYWdzOw0KPiAr
DQo+ICsJLyoqDQo+ICsJICogQGxhYmVsOiBCTyB0YWdnaW5nIGZpZWxkcy4gVGhlIGxhYmVsIGNh
biBiZSBhc3NpZ25lZCB3aXRoaW4gdGhlDQo+ICsJICogZHJpdmVyIGl0c2VsZiBvciB0aHJvdWdo
IGEgc3BlY2lmaWMgSU9DVEwuDQo+ICsJICovDQo+ICsJc3RydWN0IHsNCj4gKwkJLyoqDQo+ICsJ
CSAqIEBsYWJlbC5zdHI6IFBvaW50ZXIgdG8gTlVMTC10ZXJtaW5hdGVkIHN0cmluZywNCj4gKwkJ
ICovDQo+ICsJCWNvbnN0IGNoYXIgKnN0cjsNCj4gKw0KPiArCQkvKiogQGxvY2suc3RyOiBQcm90
ZWN0cyBhY2Nlc3MgdG8gdGhlIEBsYWJlbC5zdHIgZmllbGQuICovDQo+ICsJCXN0cnVjdCBtdXRl
eCBsb2NrOw0KPiArCX0gbGFiZWw7DQo+ICB9Ow0KPiAgDQo+ICAvKioNCj4gQEAgLTkxLDYgKzEw
NSw5IEBAIHBhbnRob3JfZ2VtX2NyZWF0ZV93aXRoX2hhbmRsZShzdHJ1Y3QgZHJtX2ZpbGUgKmZp
bGUsDQo+ICAJCQkgICAgICAgc3RydWN0IHBhbnRob3Jfdm0gKmV4Y2x1c2l2ZV92bSwNCj4gIAkJ
CSAgICAgICB1NjQgKnNpemUsIHUzMiBmbGFncywgdWludDMyX3QgKmhhbmRsZSk7DQo+ICANCj4g
K3ZvaWQgcGFudGhvcl9nZW1fYm9fc2V0X2xhYmVsKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2Jq
LCBjb25zdCBjaGFyICpsYWJlbCk7DQo+ICt2b2lkIHBhbnRob3JfZ2VtX2tlcm5lbF9ib19zZXRf
bGFiZWwoc3RydWN0IHBhbnRob3Jfa2VybmVsX2JvICpibywgY29uc3QgY2hhciAqbGFiZWwpOw0K
PiArDQo+ICBzdGF0aWMgaW5saW5lIHU2NA0KPiAgcGFudGhvcl9rZXJuZWxfYm9fZ3B1dmEoc3Ry
dWN0IHBhbnRob3Jfa2VybmVsX2JvICpibykNCj4gIHsNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
