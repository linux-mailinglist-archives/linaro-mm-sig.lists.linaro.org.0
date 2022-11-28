Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D2A64C8DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:21:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B76FC3E974
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:21:36 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id F0D653EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 20:37:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b="pox/hC3J";
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xaI7kfEv+57J7JeLWjOKUpJS945rhDdD3ROyxxgB7fk=; b=pox/hC3JV0INcGpWW+6ZeZxNCE
	s3xaal6dZMHkGcGrxpXd/i77u8PIRkDjmFMZw1l+PcifSziNy013rIf3JvDdJ/S42Fzxgk6rKXG+g
	P50H67hIei5IjAGlfgEuxhbD44sxihk2iT6I6R1JQFh0LTF4ANU06d/npES3hXRQY4NNiQpv3uL36
	ihk929EoTXS4Otyz4FxiyjyVe43aJfs64WrU16FR6RaswDDMmAwQ+pZZv7ylj5OkhG2xgj9H6hKQR
	IdbeJsehYtcD6v9IisftOhNgLPVKQXd3N7Oowu7u74fHMDqg6bX85qomeqWUj1LdXgqmC7kp28lDw
	QR4H6rkQ==;
Received: from [177.34.169.227] (helo=[192.168.0.8])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ozksD-00Acgd-SH; Mon, 28 Nov 2022 21:37:06 +0100
Message-ID: <d4a216a3-aa4f-70b2-6ff6-363b415d7fbc@igalia.com>
Date: Mon, 28 Nov 2022 17:36:58 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-3-efe5ed518b63@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-3-efe5ed518b63@cerno.tech>
X-Rspamd-Queue-Id: F0D653EBC0
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo,igalia.com:email,igalia.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	DKIM_TRACE(0.00)[igalia.com:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[igalia.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GGCUD4NOQFOCWAI7U5BSIW3RALJURGFU
X-Message-ID-Hash: GGCUD4NOQFOCWAI7U5BSIW3RALJURGFU
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:18:31 +0000
CC: David Gow <davidgow@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/17] drm/tests: helpers: Rename the device init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GGCUD4NOQFOCWAI7U5BSIW3RALJURGFU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjIgMTE6NTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IFRoZSBuYW1lIGRvZXNu
J3QgcmVhbGx5IGZpdCB0aGUgY29udmVudGlvbnMgZm9yIHRoZSBvdGhlciBoZWxwZXJzIGluDQo+
IERSTS9LTVMsIHNvIGxldCdzIHJlbmFtZSBpdCB0byBtYWtlIGl0IG9idmlvdXMgdGhhdCB3ZSBh
bGxvY2F0ZSBhIG5ldw0KPiBEUk0gZGV2aWNlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1l
IFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+DQoNClJldmlld2VkLWJ5OiBNYcOtcmEgQ2FuYWwg
PG1jYW5hbEBpZ2FsaWEuY29tPg0KDQpCZXN0IFJlZ2FyZHMsDQotIE1hw61yYSBDYW5hbA0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9jbGllbnRfbW9kZXNldF90ZXN0LmMg
fCAzICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMgICAg
ICAgfCA4ICsrKysrLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX21vZGVzX3Rlc3Qu
YyAgICAgICAgICB8IDMgKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX3Byb2JlX2hl
bHBlcl90ZXN0LmMgICB8IDUgKysrLS0NCj4gIGluY2x1ZGUvZHJtL2RybV9rdW5pdF9oZWxwZXJz
LmggICAgICAgICAgICAgICAgIHwgNSArKysrLQ0KPiAgNSBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNl
cnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS90ZXN0cy9kcm1fY2xpZW50X21vZGVzZXRfdGVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL3Rl
c3RzL2RybV9jbGllbnRfbW9kZXNldF90ZXN0LmMNCj4gaW5kZXggZWQyZjYyZTkyZmVhLi42Y2Rm
MDhmNTgyY2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fY2xpZW50
X21vZGVzZXRfdGVzdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fY2xpZW50
X21vZGVzZXRfdGVzdC5jDQo+IEBAIC01OSw3ICs1OSw4IEBAIHN0YXRpYyBpbnQgZHJtX2NsaWVu
dF9tb2Rlc2V0X3Rlc3RfaW5pdChzdHJ1Y3Qga3VuaXQgKnRlc3QpDQo+ICANCj4gIAl0ZXN0LT5w
cml2ID0gcHJpdjsNCj4gIA0KPiAtCXByaXYtPmRybSA9IGRybV9rdW5pdF9kZXZpY2VfaW5pdCh0
ZXN0LCBEUklWRVJfTU9ERVNFVCwgImRybS1jbGllbnQtbW9kZXNldC10ZXN0Iik7DQo+ICsJcHJp
di0+ZHJtID0gZHJtX2t1bml0X2hlbHBlcl9hbGxvY19kcm1fZGV2aWNlKHRlc3QsIERSSVZFUl9N
T0RFU0VULA0KPiArCQkJCQkJICAgICAgImRybS1jbGllbnQtbW9kZXNldC10ZXN0Iik7DQo+ICAJ
S1VOSVRfQVNTRVJUX05PVF9FUlJfT1JfTlVMTCh0ZXN0LCBwcml2LT5kcm0pOw0KPiAgDQo+ICAJ
cmV0ID0gZHJtbV9jb25uZWN0b3JfaW5pdChwcml2LT5kcm0sICZwcml2LT5jb25uZWN0b3IsDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYyBi
L2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfaGVscGVycy5jDQo+IGluZGV4IDQ2YTY4
YzJmZDgwYy4uMmY2N2Y2Y2Y3OGQwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGVz
dHMvZHJtX2t1bml0X2hlbHBlcnMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJt
X2t1bml0X2hlbHBlcnMuYw0KPiBAQCAtMzYsNyArMzYsNyBAQCBzdGF0aWMgdm9pZCBkZXZfZnJl
ZShzdHJ1Y3Qga3VuaXRfcmVzb3VyY2UgKnJlcykNCj4gIH0NCj4gIA0KPiAgLyoqDQo+IC0gKiBk
cm1fa3VuaXRfZGV2aWNlX2luaXQgLSBBbGxvY2F0ZXMgYSBtb2NrIERSTSBkZXZpY2UgZm9yIEt1
bml0IHRlc3RzDQo+ICsgKiBkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2RybV9kZXZpY2UgLSBBbGxv
Y2F0ZXMgYSBtb2NrIERSTSBkZXZpY2UgZm9yIEt1bml0IHRlc3RzDQo+ICAgKiBAdGVzdDogVGhl
IHRlc3QgY29udGV4dCBvYmplY3QNCj4gICAqIEBmZWF0dXJlczogTW9ja2VkIERSTSBkZXZpY2Ug
ZHJpdmVyIGZlYXR1cmVzDQo+ICAgKiBAbmFtZTogTmFtZSBvZiB0aGUgc3RydWN0ICZkZXZpY2Ug
dG8gYWxsb2NhdGUNCj4gQEAgLTUyLDcgKzUyLDkgQEAgc3RhdGljIHZvaWQgZGV2X2ZyZWUoc3Ry
dWN0IGt1bml0X3Jlc291cmNlICpyZXMpDQo+ICAgKiBSZXR1cm5zOg0KPiAgICogQSBwb2ludGVy
IHRvIHRoZSBuZXcgZHJtX2RldmljZSwgb3IgYW4gRVJSX1BUUigpIG90aGVyd2lzZS4NCj4gICAq
Lw0KPiAtc3RydWN0IGRybV9kZXZpY2UgKmRybV9rdW5pdF9kZXZpY2VfaW5pdChzdHJ1Y3Qga3Vu
aXQgKnRlc3QsIHUzMiBmZWF0dXJlcywgY2hhciAqbmFtZSkNCj4gK3N0cnVjdCBkcm1fZGV2aWNl
ICoNCj4gK2RybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJtX2RldmljZShzdHJ1Y3Qga3VuaXQgKnRl
c3QsDQo+ICsJCQkJICB1MzIgZmVhdHVyZXMsIGNoYXIgKm5hbWUpDQo+ICB7DQo+ICAJc3RydWN0
IGt1bml0X2RldiAqa2RldjsNCj4gIAlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtOw0KPiBAQCAtODIs
NyArODQsNyBAQCBzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2t1bml0X2RldmljZV9pbml0KHN0cnVj
dCBrdW5pdCAqdGVzdCwgdTMyIGZlYXR1cmVzLCBjaGFyDQo+ICANCj4gIAlyZXR1cm4gZHJtOw0K
PiAgfQ0KPiAtRVhQT1JUX1NZTUJPTChkcm1fa3VuaXRfZGV2aWNlX2luaXQpOw0KPiArRVhQT1JU
X1NZTUJPTChkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2RybV9kZXZpY2UpOw0KPiAgDQo+ICBNT0RV
TEVfQVVUSE9SKCJNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4iKTsNCj4gIE1PRFVM
RV9MSUNFTlNFKCJHUEwiKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9k
cm1fbW9kZXNfdGVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9tb2Rlc190ZXN0LmMN
Cj4gaW5kZXggMzk1M2U0NzhjNGQwLi42NzIzMDg5ZGZmOWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS90ZXN0cy9kcm1fbW9kZXNfdGVzdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS90ZXN0cy9kcm1fbW9kZXNfdGVzdC5jDQo+IEBAIC0yMiw3ICsyMiw4IEBAIHN0YXRpYyBpbnQg
ZHJtX3Rlc3RfbW9kZXNfaW5pdChzdHJ1Y3Qga3VuaXQgKnRlc3QpDQo+ICAJcHJpdiA9IGt1bml0
X2t6YWxsb2ModGVzdCwgc2l6ZW9mKCpwcml2KSwgR0ZQX0tFUk5FTCk7DQo+ICAJS1VOSVRfQVNT
RVJUX05PVF9OVUxMKHRlc3QsIHByaXYpOw0KPiAgDQo+IC0JcHJpdi0+ZHJtID0gZHJtX2t1bml0
X2RldmljZV9pbml0KHRlc3QsIERSSVZFUl9NT0RFU0VULCAiZHJtLW1vZGVzLXRlc3QiKTsNCj4g
Kwlwcml2LT5kcm0gPSBkcm1fa3VuaXRfaGVscGVyX2FsbG9jX2RybV9kZXZpY2UodGVzdCwgRFJJ
VkVSX01PREVTRVQsDQo+ICsJCQkJCQkgICAgICAiZHJtLW1vZGVzLXRlc3QiKTsNCj4gIAlLVU5J
VF9BU1NFUlRfTk9UX0VSUl9PUl9OVUxMKHRlc3QsIHByaXYtPmRybSk7DQo+ICANCj4gIAl0ZXN0
LT5wcml2ID0gcHJpdjsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1f
cHJvYmVfaGVscGVyX3Rlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fcHJvYmVfaGVs
cGVyX3Rlc3QuYw0KPiBpbmRleCAxZjM5NDFjMTUwYWUuLjg1MjM2ZmY0NzQ0ZiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9wcm9iZV9oZWxwZXJfdGVzdC5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fcHJvYmVfaGVscGVyX3Rlc3QuYw0KPiBAQCAt
MzksOCArMzksOSBAQCBzdGF0aWMgaW50IGRybV9wcm9iZV9oZWxwZXJfdGVzdF9pbml0KHN0cnVj
dCBrdW5pdCAqdGVzdCkNCj4gIAlLVU5JVF9BU1NFUlRfTk9UX05VTEwodGVzdCwgcHJpdik7DQo+
ICAJdGVzdC0+cHJpdiA9IHByaXY7DQo+ICANCj4gLQlwcml2LT5kcm0gPSBkcm1fa3VuaXRfZGV2
aWNlX2luaXQodGVzdCwgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlDLA0KPiAtCQkJCQkg
ICJkcm0tcHJvYmUtaGVscGVyLXRlc3QiKTsNCj4gKwlwcml2LT5kcm0gPSBkcm1fa3VuaXRfaGVs
cGVyX2FsbG9jX2RybV9kZXZpY2UodGVzdCwNCj4gKwkJCQkJCSAgICAgIERSSVZFUl9NT0RFU0VU
IHwgRFJJVkVSX0FUT01JQywNCj4gKwkJCQkJCSAgICAgICJkcm0tcHJvYmUtaGVscGVyLXRlc3Qi
KTsNCj4gIAlLVU5JVF9BU1NFUlRfTk9UX0VSUl9PUl9OVUxMKHRlc3QsIHByaXYtPmRybSk7DQo+
ICANCj4gIAljb25uZWN0b3IgPSAmcHJpdi0+Y29ubmVjdG9yOw0KPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9kcm0vZHJtX2t1bml0X2hlbHBlcnMuaCBiL2luY2x1ZGUvZHJtL2RybV9rdW5pdF9oZWxw
ZXJzLmgNCj4gaW5kZXggMjBhYjZlZWM0Yzg5Li5lOTg3MGM3OTExZmUgMTAwNjQ0DQo+IC0tLSBh
L2luY2x1ZGUvZHJtL2RybV9rdW5pdF9oZWxwZXJzLmgNCj4gKysrIGIvaW5jbHVkZS9kcm0vZHJt
X2t1bml0X2hlbHBlcnMuaA0KPiBAQCAtNiw2ICs2LDkgQEANCj4gIHN0cnVjdCBkcm1fZGV2aWNl
Ow0KPiAgc3RydWN0IGt1bml0Ow0KPiAgDQo+IC1zdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2t1bml0
X2RldmljZV9pbml0KHN0cnVjdCBrdW5pdCAqdGVzdCwgdTMyIGZlYXR1cmVzLCBjaGFyICpuYW1l
KTsNCj4gK3N0cnVjdCBkcm1fZGV2aWNlICoNCj4gK2RybV9rdW5pdF9oZWxwZXJfYWxsb2NfZHJt
X2RldmljZShzdHJ1Y3Qga3VuaXQgKnRlc3QsDQo+ICsJCQkJICB1MzIgZmVhdHVyZXMsDQo+ICsJ
CQkJICBjaGFyICpuYW1lKTsNCj4gIA0KPiAgI2VuZGlmIC8vIERSTV9LVU5JVF9IRUxQRVJTX0hf
DQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
