Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB845EF8CA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 17:32:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4A9E3F508
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 15:32:09 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 7BB383EBA9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 15:31:49 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04BED15BF;
	Thu, 29 Sep 2022 08:31:56 -0700 (PDT)
Received: from [10.1.38.20] (e122027.cambridge.arm.com [10.1.38.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72D873F792;
	Thu, 29 Sep 2022 08:31:46 -0700 (PDT)
Message-ID: <ccb55f39-2d7d-1e9d-91ac-70f609370e22@arm.com>
Date: Thu, 29 Sep 2022 16:31:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-GB
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220914164321.2156-1-Arvind.Yadav@amd.com>
 <20220914164321.2156-6-Arvind.Yadav@amd.com>
 <e613a225-dabf-7e87-2624-a3244df8a877@arm.com>
 <5beff5e2-8589-28cf-40b4-9e6b9e45b307@amd.com>
From: Steven Price <steven.price@arm.com>
In-Reply-To: <5beff5e2-8589-28cf-40b4-9e6b9e45b307@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 7BB383EBA9
X-Spamd-Result: default: False [-7.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	RCVD_IN_DNSWL_MED(-0.20)[217.140.110.172:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Message-ID-Hash: ZZQWDXEAYZ6H5KUCRQBVQ2ROQ6DH3E6N
X-Message-ID-Hash: ZZQWDXEAYZ6H5KUCRQBVQ2ROQ6DH3E6N
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 5/6] drm/sched: Use parent fence instead of finished
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZZQWDXEAYZ6H5KUCRQBVQ2ROQ6DH3E6N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjkvMDkvMjAyMiAxNTo1NywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gQW0gMjkuMDku
MjIgdW0gMTY6NTMgc2NocmllYiBTdGV2ZW4gUHJpY2U6DQo+PiBPbiAxNC8wOS8yMDIyIDE3OjQz
LCBBcnZpbmQgWWFkYXYgd3JvdGU6DQo+Pj4gVXNpbmcgdGhlIHBhcmVudCBmZW5jZSBpbnN0ZWFk
IG9mIHRoZSBmaW5pc2hlZCBmZW5jZQ0KPj4+IHRvIGdldCB0aGUgam9iIHN0YXR1cy4gVGhpcyBj
aGFuZ2UgaXMgdG8gYXZvaWQgR1BVDQo+Pj4gc2NoZWR1bGVyIHRpbWVvdXQgZXJyb3Igd2hpY2gg
Y2FuIGNhdXNlIEdQVSByZXNldC4NCj4+IEknbSBhYmxlIHRvIHJlcHJvZHVjZSBjcmFzaGVzIG9u
IFBhbmZyb3N0IGFuZCBJIGJlbGlldmUgdGhpcyBjb21taXQgaXMNCj4+IHRoZSBjYXVzZS4gU3Bl
Y2lmaWNhbGx5IGl0J3MgcG9zc2libGUgZm9yIGpvYi0+c19mZW5jZS0+cGFyZW50IHRvIGJlDQo+
PiBOVUxMLg0KPj4NCj4+IFRoZSB1bmRlcmx5aW5nIGlzc3VlIHNlZW1zIHRvIGludm9sdmUgZHJt
X3NjaGVkX3Jlc3VibWl0X2pvYnNfZXh0KCkgLSBpZg0KPj4gdGhlIHJ1bl9qb2JzKCkgY2FsbGJh
Y2sgcmV0dXJucyBhbiBlcnJvciBpdCB3aWxsIHNldCBzX2ZlbmNlLT5wYXJlbnQgdG8NCj4+IE5V
TEwgYWZ0ZXIgc2lnbmFsbGluZyBzX2ZlbmNlLT5maW5pc2hlZDoNCj4+DQo+Pj4gwqDCoMKgwqDC
oMKgwqAgZmVuY2UgPSBzY2hlZC0+b3BzLT5ydW5fam9iKHNfam9iKTsNCj4+PiDCoMKgwqDCoMKg
wqDCoCBpKys7DQo+Pj4NCj4+PiDCoMKgwqDCoMKgwqDCoCBpZiAoSVNfRVJSX09SX05VTEwoZmVu
Y2UpKSB7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoSVNfRVJSKGZlbmNlKSkNCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3NldF9lcnJvcigmc19m
ZW5jZS0+ZmluaXNoZWQsIFBUUl9FUlIoZmVuY2UpKTsNCj4+Pg0KPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc19qb2ItPnNfZmVuY2UtPnBhcmVudCA9IE5VTEw7DQo+PiBJIGRvbid0IHVuZGVy
c3RhbmQgdGhlIHJlYXNvbmluZyBiZWhpbmQgdGhpcyBjaGFuZ2UsIGJ1dCBpdCBkb2Vzbid0IHNl
ZW0NCj4+IHJpZ2h0IHRvIGJlIHVzaW5nIHRoZSBwYXJlbnQgZmVuY2Ugd2hlbiB3ZSBoYXZlIGNv
ZGUgd2hpY2ggY2FuIGJlDQo+PiBzZXR0aW5nIHRoYXQgcG9pbnRlciB0byBOVUxMLg0KPj4NCj4+
IFNpbmNlIEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgcmVhc29uaW5nIG15IG9ubHkgc3VnZ2VzdGlv
biBpcyB0byByZXZlcnQNCj4+IHRoaXMgcGF0Y2ggKGFuZCBwb3RlbnRpYWxseSB0aGUgZGVwZW5k
ZW50IHBhdGNoICJkbWEtYnVmOiBDaGVjayBzdGF0dXMNCj4+IG9mIGVuYWJsZS1zaWduYWxpbmcg
Yml0IG9uIGRlYnVnIj8pLg0KPj4NCj4+IENhbiBhbnlvbmUgc3VnZ2VzdCBhIGJldHRlciBmaXg/
DQo+IA0KPiBXZWxsLCBmaXJzdCBvZiBhbGwgcGxlYXNlIGFic29sdXRlbHkgZG9uJ3QgdXNlDQo+
IGRybV9zY2hlZF9yZXN1Ym1pdF9qb2JzX2V4dCgpIQ0KDQpQYW5mcm9zdCBpc24ndCB1c2luZyBk
cm1fc2NoZWRfcmVzdWJtaXRfam9ic19leHQoKSBkaXJlY3RseSBidXQgdmlhDQpkcm1fc2NoZWRf
cmVzdWJtaXRfam9icygpLg0KDQo+IEl0IHdhcyBhbiBleHRyZW1lbHkgYmFkIGlkZWEgaW4gYW1k
Z3B1IHRvIGFwcHJvYWNoIEdQVSBieSByZS1zdWJtaXR0aW5nDQo+IGpvYnMgYW5kIGl0IHdhcyBh
biBldmVuIHdvcnNlIGlkZWEgdG8gcHVzaCB0aGlzIGludG8gdGhlIHNjaGVkdWxlci4NCj4gDQo+
IFRoZSBkZXNpZ24gb2YgZG1hX2ZlbmNlIGlzIHRoYXQgeW91IHN1Ym1pdCB0aGF0IG9uY2UgYW5k
ICpvbmx5KiBvbmNlIGFuZA0KPiB0aGVuIGdldCBhIHJlc3VsdCBmb3IgdGhpcyBzdWJtaXNzaW9u
LiBJZiByZS1zdWJtaXNzaW9uIGlzIGRlc2lyYWJsZSBpdA0KPiBzaG91bGQgYmUgZG9uZSBpbiB1
c2Vyc3BhY2Ugb3IgYXQgbGVhc3QgaGlnaGVyIGxldmVscy4NCg0KUGFuZnJvc3QgaGFzIGFuIGlu
dGVyZXN0aW5nIGZlYXR1cmUgd2hlcmUgaXQncyBwb3NzaWJsZSB0byByZXNjdWUgYSBqb2INCmR1
cmluZyBhIEdQVSByZXNldC4gQmVjYXVzZSBqb2JzIGFyZSBxdWV1ZWQgb24gdGhlIEdQVSBpZiB0
aGUgam9iIGhhc24ndA0KYWN0dWFsbHkgc3RhcnRlZCBleGVjdXRpbmcgdGhlbiBpdCdzIHF1aXRl
IHBvc3NpYmxlIHRvIHNhZmVseSByZXN1Ym1pdA0KaXQgZnJvbSB0aGUga2VybmVsIGRyaXZlciBh
bmQgdXNlciBzcGFjZSBkb2Vzbid0IG5lZWQgdG8gYmUgaW52b2x2ZWQuDQoNClRoZSBiZW5lZml0
IG9mIHRoaXMgaXMgaWYgYW5vdGhlciBwcm9jZXNzIGhhcyBodW5nIHRoZSBHUFUgdGhhdA0KcHJv
Y2Vzc2VzIGpvYnMgY2FuIGJlIGtpbGxlZCBvZmYgd2l0aG91dCBhZmZlY3RpbmcgYW55IG90aGVy
IGlubm9jZW50DQpwcm9jZXNzZXMuDQoNCk9uZSBvcHRpb24gd291bGQgYmUgdG8gaGlkZSBhbGwg
dGhpcyBmcm9tIHRoZSBzY2hlZHVsZXIsIGJ1dCBJIGNhbid0IHNlZQ0KaG93IHRvIGRvIHRoYXQg
d2l0aG91dCBhbHNvIGhpZGluZyB0aGUgYWN0dWFsIHJlc2V0IGZyb20gdGhlIHNjaGVkdWxlci4N
CkFkbWl0dGVkbHkgYXQgdGhlIG1vbWVudCBQYW5mcm9zdCBpcyBmYXIgdG9vIGFnZ3Jlc3NpdmUg
YXQgcmVzZXR0aW5nIGFuZA0Kd2lsbCBwZXJmb3JtIGEgR1BVIHJlc2V0IGluIGNvbmRpdGlvbnMg
d2hlcmUgaXQncyBjb21wbGV0ZWx5DQp1bm5lY2Vzc2FyeS4gVGhlcmUncyB3b3JrIHRvIGRvIHRo
ZXJlIGJ1dCBJIGhhdmVuJ3QgaGFkIHRoZSB0aW1lIHRvIGxvb2sNCmF0IGl0IHlldC4NCg0KPiBB
cGFydCBmcm9tIHRoYXQsIHllcyBhIE5VTEwgY2hlY2sgaXMgbWlzc2luZyBoZXJlIGJ1dCB0aGF0
IHNob3VsZCBiZQ0KPiB0cml2aWFsIHRvIGZpeC4NCg0KV2hhdCBJJ20gc3RydWdnbGluZyB0byBn
ZXQgbXkgaGVhZCByb3VuZCBpcyB3aGV0aGVyIGl0J3MgY29ycmVjdCB0bw0KYWx3YXlzIHRyZWF0
IHRoZSBqb2IgYXMgc2lnbmFsbGVkIGp1c3QgYmVjYXVzZSBzX2ZlbmNlLT5wYXJlbnQgaXMgTlVM
TD8NCg0KVGhhbmtzLA0KDQpTdGV2ZQ0KDQo+IFRoYW5rcywNCj4gQ2hyaXN0aWFuLg0KPiANCj4+
DQo+PiBUaGFua3MsDQo+Pg0KPj4gU3RldmUNCj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogQXJ2aW5k
IFlhZGF2IDxBcnZpbmQuWWFkYXZAYW1kLmNvbT4NCj4+PiBSZXZpZXdlZC1ieTogQW5kcmV5IEdy
b2R6b3Zza3kgPGFuZHJleS5ncm9kem92c2t5QGFtZC5jb20+DQo+Pj4gLS0tDQo+Pj4NCj4+PiBj
aGFuZ2VzIGluIHYxLHYyIC0gRW5hYmxlIHNpZ25hbGluZyBmb3IgZmluaXNoZWQgZmVuY2UgaW4g
c2NoZV9tYWluKCkNCj4+PiBpcyByZW1vdmVkDQo+Pj4NCj4+PiAtLS0NCj4+PiDCoCBkcml2ZXJz
L2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDQgKystLQ0KPj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4+PiBiL2RyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+Pj4gaW5kZXggZTBhYjE0ZTBmYjZi
Li4yYWMyOGFkMTE0MzIgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9tYWluLmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X21haW4uYw0KPj4+IEBAIC04MjksNyArODI5LDcgQEAgZHJtX3NjaGVkX2dldF9jbGVhbnVwX2pv
YihzdHJ1Y3QNCj4+PiBkcm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQpDQo+Pj4gwqDCoMKgwqDCoCBq
b2IgPSBsaXN0X2ZpcnN0X2VudHJ5X29yX251bGwoJnNjaGVkLT5wZW5kaW5nX2xpc3QsDQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBk
cm1fc2NoZWRfam9iLCBsaXN0KTsNCj4+PiDCoCAtwqDCoMKgIGlmIChqb2IgJiYgZG1hX2ZlbmNl
X2lzX3NpZ25hbGVkKCZqb2ItPnNfZmVuY2UtPmZpbmlzaGVkKSkgew0KPj4+ICvCoMKgwqAgaWYg
KGpvYiAmJiBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoam9iLT5zX2ZlbmNlLT5wYXJlbnQpKSB7DQo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8qIHJlbW92ZSBqb2IgZnJvbSBwZW5kaW5nX2xpc3QgKi8N
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbGlzdF9kZWxfaW5pdCgmam9iLT5saXN0KTsNCj4+PiDC
oCBAQCAtODQxLDcgKzg0MSw3IEBAIGRybV9zY2hlZF9nZXRfY2xlYW51cF9qb2Ioc3RydWN0DQo+
Pj4gZHJtX2dwdV9zY2hlZHVsZXIgKnNjaGVkKQ0KPj4+IMKgIMKgwqDCoMKgwqDCoMKgwqDCoCBp
ZiAobmV4dCkgew0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5leHQtPnNfZmVuY2Ut
PnNjaGVkdWxlZC50aW1lc3RhbXAgPQ0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgam9iLT5zX2ZlbmNlLT5maW5pc2hlZC50aW1lc3RhbXA7DQo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBqb2ItPnNfZmVuY2UtPnBhcmVudC0+dGltZXN0YW1wOw0KPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIHN0YXJ0IFRPIHRpbWVyIGZvciBuZXh0IGpvYiAq
Lw0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9zY2hlZF9zdGFydF90aW1lb3V0
KHNjaGVkKTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQ0KPiANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
