Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D2864C8CE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:18:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C67743E973
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:18:29 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 0B2DD3EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 19:37:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=Z7g2j3Jv;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=maVyWFE1pq/Db9obmOzHYaZBWeSNTebHNF1VOxWlEsc=; b=Z7g2j3JvNb2zdLfH5RE2BhKU5p
	HH65jHXx1lPGkDeKMHLZiffXkYIz6VDyqY1oDC/f54Vz6Dr4P18McjtqVM1VKdDwRjlYu/LJSLcN8
	oliWAcBzrd/KXj7dkovQSWMfWoTu8vSrrm8id/2iqOvHqMJNA2mXLm56Z5grBqpKPzaGB+4ns1gUg
	+ejIdvS2cpH2f3DJmDEAwDipps7FvfmHssvTLvJh48zoP9V1mNUSviDNudE4pp+mxR3aHdZ4ju4ln
	V2l1p2xO2DgXHb1dOdj//Ab7qPqa5xntdNB48ao2qpqkp1zgFMjkoDkvWQOuqni0fP9HIjjhJcD9q
	1RxLXujA==;
Received: from [177.34.169.227] (helo=[192.168.0.8])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ozjwV-00AbJz-5s; Mon, 28 Nov 2022 20:37:27 +0100
Message-ID: <2c51f4d9-330f-70a4-f428-ae7aa9d6785c@igalia.com>
Date: Mon, 28 Nov 2022 16:37:18 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-4-efe5ed518b63@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-4-efe5ed518b63@cerno.tech>
X-Rspamd-Queue-Id: 0B2DD3EBC0
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[igalia.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[igalia.com:email,igalia.com:dkim,fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[igalia.com];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: E45EAD25FG4GXB4KHGUQ5OGXOUHYFIGM
X-Message-ID-Hash: E45EAD25FG4GXB4KHGUQ5OGXOUHYFIGM
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:18:21 +0000
CC: David Gow <davidgow@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 04/17] drm/tests: helpers: Remove the name parameter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E45EAD25FG4GXB4KHGUQ5OGXOUHYFIGM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjIgMTE6NTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IFRoZSBkZXZpY2UgbmFt
ZSBpc24ndCByZWFsbHkgdXNlZnVsLCB3ZSBjYW4ganVzdCBkZWZpbmUgaXQgaW5zdGVhZCBvZg0K
PiBleHBvc2luZyBpdCBpbiB0aGUgQVBJLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJp
cGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+DQoNClJldmlld2VkLWJ5OiBNYcOtcmEgQ2FuYWwgPG1j
YW5hbEBpZ2FsaWEuY29tPg0KDQpCZXN0IFJlZ2FyZHMNCi0gTWHDrXJhIENhbmFsDQoNCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2NsaWVudF9tb2Rlc2V0X3Rlc3QuYyB8IDMg
Ky0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYyAgICAgICB8
IDcgKysrKy0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9tb2Rlc190ZXN0LmMgICAg
ICAgICAgfCAzICstLQ0KPiAgZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9wcm9iZV9oZWxwZXJf
dGVzdC5jICAgfCAzICstLQ0KPiAgaW5jbHVkZS9kcm0vZHJtX2t1bml0X2hlbHBlcnMuaCAgICAg
ICAgICAgICAgICAgfCAzICstLQ0KPiAgNSBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDExIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0
cy9kcm1fY2xpZW50X21vZGVzZXRfdGVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9j
bGllbnRfbW9kZXNldF90ZXN0LmMNCj4gaW5kZXggNmNkZjA4ZjU4MmNlLi40ZDQ3NWFlNmRiYjYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fY2xpZW50X21vZGVzZXRf
dGVzdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fY2xpZW50X21vZGVzZXRf
dGVzdC5jDQo+IEBAIC01OSw4ICs1OSw3IEBAIHN0YXRpYyBpbnQgZHJtX2NsaWVudF9tb2Rlc2V0
X3Rlc3RfaW5pdChzdHJ1Y3Qga3VuaXQgKnRlc3QpDQo+ICANCj4gIAl0ZXN0LT5wcml2ID0gcHJp
djsNCj4gIA0KPiAtCXByaXYtPmRybSA9IGRybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJtX2Rldmlj
ZSh0ZXN0LCBEUklWRVJfTU9ERVNFVCwNCj4gLQkJCQkJCSAgICAgICJkcm0tY2xpZW50LW1vZGVz
ZXQtdGVzdCIpOw0KPiArCXByaXYtPmRybSA9IGRybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJtX2Rl
dmljZSh0ZXN0LCBEUklWRVJfTU9ERVNFVCk7DQo+ICAJS1VOSVRfQVNTRVJUX05PVF9FUlJfT1Jf
TlVMTCh0ZXN0LCBwcml2LT5kcm0pOw0KPiAgDQo+ICAJcmV0ID0gZHJtbV9jb25uZWN0b3JfaW5p
dChwcml2LT5kcm0sICZwcml2LT5jb25uZWN0b3IsDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9k
cm1fa3VuaXRfaGVscGVycy5jDQo+IGluZGV4IDJmNjdmNmNmNzhkMC4uMTZjNzkyNmQ4M2MyIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYw0KPiBAQCAt
OCw2ICs4LDggQEANCj4gIA0KPiAgI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPg0KPiAgDQo+ICsj
ZGVmaW5lIEtVTklUX0RFVklDRV9OQU1FCSJkcm0ta3VuaXQtbW9jay1kZXZpY2UiDQo+ICsNCj4g
IHN0cnVjdCBrdW5pdF9kZXYgew0KPiAgCXN0cnVjdCBkcm1fZGV2aWNlIGJhc2U7DQo+ICB9Ow0K
PiBAQCAtMzksNyArNDEsNiBAQCBzdGF0aWMgdm9pZCBkZXZfZnJlZShzdHJ1Y3Qga3VuaXRfcmVz
b3VyY2UgKnJlcykNCj4gICAqIGRybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJtX2RldmljZSAtIEFs
bG9jYXRlcyBhIG1vY2sgRFJNIGRldmljZSBmb3IgS3VuaXQgdGVzdHMNCj4gICAqIEB0ZXN0OiBU
aGUgdGVzdCBjb250ZXh0IG9iamVjdA0KPiAgICogQGZlYXR1cmVzOiBNb2NrZWQgRFJNIGRldmlj
ZSBkcml2ZXIgZmVhdHVyZXMNCj4gLSAqIEBuYW1lOiBOYW1lIG9mIHRoZSBzdHJ1Y3QgJmRldmlj
ZSB0byBhbGxvY2F0ZQ0KPiAgICoNCj4gICAqIFRoaXMgZnVuY3Rpb24gYWxsb2NhdGVzIGEgbmV3
IHN0cnVjdCAmZGV2aWNlLCBjcmVhdGVzIGEgc3RydWN0DQo+ICAgKiAmZHJtX2RyaXZlciBhbmQg
d2lsbCBjcmVhdGUgYSBzdHJ1Y3QgJmRybV9kZXZpY2UgdXNpbmcgYm90aC4NCj4gQEAgLTU0LDcg
KzU1LDcgQEAgc3RhdGljIHZvaWQgZGV2X2ZyZWUoc3RydWN0IGt1bml0X3Jlc291cmNlICpyZXMp
DQo+ICAgKi8NCj4gIHN0cnVjdCBkcm1fZGV2aWNlICoNCj4gIGRybV9rdW5pdF9oZWxwZXJfYWxs
b2NfZHJtX2RldmljZShzdHJ1Y3Qga3VuaXQgKnRlc3QsDQo+IC0JCQkJICB1MzIgZmVhdHVyZXMs
IGNoYXIgKm5hbWUpDQo+ICsJCQkJICB1MzIgZmVhdHVyZXMpDQo+ICB7DQo+ICAJc3RydWN0IGt1
bml0X2RldiAqa2RldjsNCj4gIAlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtOw0KPiBAQCAtNjIsNyAr
NjMsNyBAQCBkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2RybV9kZXZpY2Uoc3RydWN0IGt1bml0ICp0
ZXN0LA0KPiAgCXN0cnVjdCBkZXZpY2UgKmRldjsNCj4gIAlpbnQgcmV0Ow0KPiAgDQo+IC0JZGV2
ID0ga3VuaXRfYWxsb2NfcmVzb3VyY2UodGVzdCwgZGV2X2luaXQsIGRldl9mcmVlLCBHRlBfS0VS
TkVMLCBuYW1lKTsNCj4gKwlkZXYgPSBrdW5pdF9hbGxvY19yZXNvdXJjZSh0ZXN0LCBkZXZfaW5p
dCwgZGV2X2ZyZWUsIEdGUF9LRVJORUwsIEtVTklUX0RFVklDRV9OQU1FKTsNCj4gIAlpZiAoIWRl
dikNCj4gIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQo+ICANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fbW9kZXNfdGVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL3Rl
c3RzL2RybV9tb2Rlc190ZXN0LmMNCj4gaW5kZXggNjcyMzA4OWRmZjlmLi4zNTk2NWFkODYxODgg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fbW9kZXNfdGVzdC5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fbW9kZXNfdGVzdC5jDQo+IEBAIC0yMiw4
ICsyMiw3IEBAIHN0YXRpYyBpbnQgZHJtX3Rlc3RfbW9kZXNfaW5pdChzdHJ1Y3Qga3VuaXQgKnRl
c3QpDQo+ICAJcHJpdiA9IGt1bml0X2t6YWxsb2ModGVzdCwgc2l6ZW9mKCpwcml2KSwgR0ZQX0tF
Uk5FTCk7DQo+ICAJS1VOSVRfQVNTRVJUX05PVF9OVUxMKHRlc3QsIHByaXYpOw0KPiAgDQo+IC0J
cHJpdi0+ZHJtID0gZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kcm1fZGV2aWNlKHRlc3QsIERSSVZF
Ul9NT0RFU0VULA0KPiAtCQkJCQkJICAgICAgImRybS1tb2Rlcy10ZXN0Iik7DQo+ICsJcHJpdi0+
ZHJtID0gZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kcm1fZGV2aWNlKHRlc3QsIERSSVZFUl9NT0RF
U0VUKTsNCj4gIAlLVU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9OVUxMKHRlc3QsIHByaXYtPmRybSk7
DQo+ICANCj4gIAl0ZXN0LT5wcml2ID0gcHJpdjsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS90ZXN0cy9kcm1fcHJvYmVfaGVscGVyX3Rlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0
cy9kcm1fcHJvYmVfaGVscGVyX3Rlc3QuYw0KPiBpbmRleCA4NTIzNmZmNDc0NGYuLmJlNjFhOTJi
NzlkMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9wcm9iZV9oZWxw
ZXJfdGVzdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fcHJvYmVfaGVscGVy
X3Rlc3QuYw0KPiBAQCAtNDAsOCArNDAsNyBAQCBzdGF0aWMgaW50IGRybV9wcm9iZV9oZWxwZXJf
dGVzdF9pbml0KHN0cnVjdCBrdW5pdCAqdGVzdCkNCj4gIAl0ZXN0LT5wcml2ID0gcHJpdjsNCj4g
IA0KPiAgCXByaXYtPmRybSA9IGRybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJtX2RldmljZSh0ZXN0
LA0KPiAtCQkJCQkJICAgICAgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlDLA0KPiAtCQkJ
CQkJICAgICAgImRybS1wcm9iZS1oZWxwZXItdGVzdCIpOw0KPiArCQkJCQkJICAgICAgRFJJVkVS
X01PREVTRVQgfCBEUklWRVJfQVRPTUlDKTsNCj4gIAlLVU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9O
VUxMKHRlc3QsIHByaXYtPmRybSk7DQo+ICANCj4gIAljb25uZWN0b3IgPSAmcHJpdi0+Y29ubmVj
dG9yOw0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2t1bml0X2hlbHBlcnMuaCBiL2lu
Y2x1ZGUvZHJtL2RybV9rdW5pdF9oZWxwZXJzLmgNCj4gaW5kZXggZTk4NzBjNzkxMWZlLi42YzEy
YjE0MjZiYTAgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9rdW5pdF9oZWxwZXJzLmgN
Cj4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2t1bml0X2hlbHBlcnMuaA0KPiBAQCAtOCw3ICs4LDYg
QEAgc3RydWN0IGt1bml0Ow0KPiAgDQo+ICBzdHJ1Y3QgZHJtX2RldmljZSAqDQo+ICBkcm1fa3Vu
aXRfaGVscGVyX2FsbG9jX2RybV9kZXZpY2Uoc3RydWN0IGt1bml0ICp0ZXN0LA0KPiAtCQkJCSAg
dTMyIGZlYXR1cmVzLA0KPiAtCQkJCSAgY2hhciAqbmFtZSk7DQo+ICsJCQkJICB1MzIgZmVhdHVy
ZXMpOw0KPiAgDQo+ICAjZW5kaWYgLy8gRFJNX0tVTklUX0hFTFBFUlNfSF8NCj4gDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
