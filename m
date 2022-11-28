Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BB88463D87C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 15:48:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BACD13EF90
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 14:48:14 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id B5C9D3EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 19:31:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=QYDjpAPH;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=79D1N/wvlSFl18BNsKU0k/is/jrD25t41qoW9u3UtNQ=; b=QYDjpAPHhLoF6BlYY/NN/zcF72
	FetOordi88yKv+vvVBN5IdCIWm8y6lE5krrM28WdRwivYaIvy1nvRVdf801nGkEA8sBAmv83H1/LI
	HOzFGfTkz7jkUHeTUx7KAHWhKyPUv4Cc+4t02ITyJlRKeF49A3vCVsFs4FJtX6xyZTbrToOuF4TtQ
	KT35xJLL+dcnCungBjAXZk+yxgX0ic3rDnT0XWLE56wnO0v73HcrBbFAcR0SEdGg/zBcwH2yuTDho
	2vs7/Wuf1cE6b56WFrBYOr4cruTInuSO52wu5oHjKop41y4S4aa9l/SCj8ydRB1XFGCS4ds3xW3eP
	DoEXCVUg==;
Received: from [177.34.169.227] (helo=[192.168.0.8])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ozjq1-00AbB7-Eo; Mon, 28 Nov 2022 20:30:45 +0100
Message-ID: <264ee4eb-4385-d9b2-bcfa-fcc5dc27f611@igalia.com>
Date: Mon, 28 Nov 2022 16:30:37 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-2-efe5ed518b63@cerno.tech>
Content-Language: en-US
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-2-efe5ed518b63@cerno.tech>
X-Rspamd-Queue-Id: B5C9D3EBC0
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo,igalia.com:email,igalia.com:dkim,cerno.tech:email];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:+];
	DMARC_NA(0.00)[igalia.com];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[igalia.com:email,igalia.com:dkim,fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo,cerno.tech:email];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: X5CC2TAHHHQO7GUIDIPRNJH5LE4FDGJN
X-Message-ID-Hash: X5CC2TAHHHQO7GUIDIPRNJH5LE4FDGJN
X-Mailman-Approved-At: Wed, 30 Nov 2022 14:48:06 +0000
CC: David Gow <davidgow@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 02/17] drm/tests: helpers: Document drm_kunit_device_init()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X5CC2TAHHHQO7GUIDIPRNJH5LE4FDGJN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjIgMTE6NTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IENvbW1pdCA0NGEzOTI4
MzI0ZTkgKCJkcm0vdGVzdHM6IEFkZCBLdW5pdCBIZWxwZXJzIikgaW50cm9kdWNlZCB0aGUNCj4g
ZHJtX2t1bml0X2RldmljZV9pbml0KCkgZnVuY3Rpb24gYnV0IGRpZG4ndCBkb2N1bWVudCBpdCBw
cm9wZXJseS4gQWRkDQo+IHRoYXQgZG9jdW1lbnRhdGlvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPg0KDQpKdXN0IGEgbWlub3Igbml0IG9u
IG5hbWluZywgYmVzaWRlcyB0aGF0Og0KDQpSZXZpZXdlZC1ieTogTWHDrXJhIENhbmFsIDxtY2Fu
YWxAaWdhbGlhLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3Vu
aXRfaGVscGVycy5jIHwgMTcgKysrKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
NyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rlc3Rz
L2RybV9rdW5pdF9oZWxwZXJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hl
bHBlcnMuYw0KPiBpbmRleCA2NjAwYTRkYjMxNTguLjQ2YTY4YzJmZDgwYyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCj4gQEAgLTM1LDYgKzM1LDIz
IEBAIHN0YXRpYyB2b2lkIGRldl9mcmVlKHN0cnVjdCBrdW5pdF9yZXNvdXJjZSAqcmVzKQ0KPiAg
CXJvb3RfZGV2aWNlX3VucmVnaXN0ZXIoZGV2KTsNCj4gIH0NCj4gIA0KPiArLyoqDQo+ICsgKiBk
cm1fa3VuaXRfZGV2aWNlX2luaXQgLSBBbGxvY2F0ZXMgYSBtb2NrIERSTSBkZXZpY2UgZm9yIEt1
bml0IHRlc3RzDQoNCnMvS3VuaXQvS1VuaXQNCg0KQmVzdCBSZWdhcmRzLA0KLSBNYcOtcmEgQ2Fu
YWwNCg0KPiArICogQHRlc3Q6IFRoZSB0ZXN0IGNvbnRleHQgb2JqZWN0DQo+ICsgKiBAZmVhdHVy
ZXM6IE1vY2tlZCBEUk0gZGV2aWNlIGRyaXZlciBmZWF0dXJlcw0KPiArICogQG5hbWU6IE5hbWUg
b2YgdGhlIHN0cnVjdCAmZGV2aWNlIHRvIGFsbG9jYXRlDQo+ICsgKg0KPiArICogVGhpcyBmdW5j
dGlvbiBhbGxvY2F0ZXMgYSBuZXcgc3RydWN0ICZkZXZpY2UsIGNyZWF0ZXMgYSBzdHJ1Y3QNCj4g
KyAqICZkcm1fZHJpdmVyIGFuZCB3aWxsIGNyZWF0ZSBhIHN0cnVjdCAmZHJtX2RldmljZSB1c2lu
ZyBib3RoLg0KPiArICoNCj4gKyAqIFRoZSBkZXZpY2UgYW5kIGRyaXZlciBhcmUgdGllZCB0byB0
aGUgQHRlc3QgY29udGV4dCBhbmQgd2lsbCBnZXQNCj4gKyAqIGNsZWFuZWQgYXQgdGhlIGVuZCBv
ZiB0aGUgdGVzdC4gVGhlIGRybV9kZXZpY2UgaXMgYWxsb2NhdGVkIHRocm91Z2gNCj4gKyAqIGRl
dm1fZHJtX2Rldl9hbGxvYygpIGFuZCB3aWxsIHRodXMgYmUgZnJlZWQgdGhyb3VnaCBhIGRldmlj
ZS1tYW5hZ2VkDQo+ICsgKiByZXNvdXJjZS4NCj4gKyAqDQo+ICsgKiBSZXR1cm5zOg0KPiArICog
QSBwb2ludGVyIHRvIHRoZSBuZXcgZHJtX2RldmljZSwgb3IgYW4gRVJSX1BUUigpIG90aGVyd2lz
ZS4NCj4gKyAqLw0KPiAgc3RydWN0IGRybV9kZXZpY2UgKmRybV9rdW5pdF9kZXZpY2VfaW5pdChz
dHJ1Y3Qga3VuaXQgKnRlc3QsIHUzMiBmZWF0dXJlcywgY2hhciAqbmFtZSkNCj4gIHsNCj4gIAlz
dHJ1Y3Qga3VuaXRfZGV2ICprZGV2Ow0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
