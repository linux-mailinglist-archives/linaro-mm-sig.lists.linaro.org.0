Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DEE645B9D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Dec 2022 14:58:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 221C43E929
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Dec 2022 13:58:07 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 618BF3E928
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Dec 2022 13:57:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=iEInDFH9;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xpxd7dkkl5q/KfS0CZUbzeIRSdaT0Ah5HzKQhmaMNp0=; b=iEInDFH947pg3B8SyceyF7tc1j
	wwP1ORmMPS5rvfEgJ1iNcND1f1blfyq0cP0kD0kFUmCSUaNheCWxXwvnle6mf7S5Xrx1J2Sgc3NbG
	dTt/DtHtonV7Rvy/f3NvEGMYgs9n+mmNvvXKhvX5Ex+yTvpN3Zc/6qFjTT0INd5SHxd3dDqhRTCdF
	kVb7NsAq3NF653osB67a2W+9/l8/yLMoAMsJ99BzJxpd4UDlKUkjTDcN19/ybAdGP16MVuQMijLZh
	/3xoqLQ6mqgeSH901gFlRn6ijti1e5RF6eHJ0mnJ++Lp/9NW6bkLq32roOTxWAcj6ognkSrB21Tim
	zd8Ciiuw==;
Received: from [143.107.182.242] (helo=[10.41.75.14])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1p2uve-00GbYI-6l; Wed, 07 Dec 2022 14:57:42 +0100
Message-ID: <35023956-d838-55af-63c2-e679a78a27eb@igalia.com>
Date: Wed, 7 Dec 2022 10:57:34 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
 <20221123-rpi-kunit-tests-v3-2-4615a663a84a@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v3-2-4615a663a84a@cerno.tech>
X-Rspamd-Queue-Id: 618BF3E928
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,suse.de,gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[igalia.com:+];
	DMARC_NA(0.00)[igalia.com];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: M7LNEUGDEWU4MP4ZIUHDXRBEB3Q777HX
X-Message-ID-Hash: M7LNEUGDEWU4MP4ZIUHDXRBEB3Q777HX
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 02/20] drm/tests: Introduce a config option for the KUnit helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M7LNEUGDEWU4MP4ZIUHDXRBEB3Q777HX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMS8yMiAxMjoxMSwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4gRHJpdmVyLXNwZWNpZmlj
IHRlc3RzIHdpbGwgbmVlZCBhY2Nlc3MgdG8gdGhlIGhlbHBlcnMgd2l0aG91dCBwdWxsaW5nDQo+
IGV2ZXJ5IERSTSBmcmFtZXdvcmsgdGVzdC4gTGV0J3MgY3JlYXRlIGFuIGludGVybWVkaWF0ZSBL
Y29uZmlnIG9wdGlvbnMNCj4gZm9yIHRoZSBoZWxwZXJzLg0KPiANCj4gU3VnZ2VzdGVkLWJ5OiBN
YcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUg
UmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4NCg0KUmV2aWV3ZWQtYnk6IE1hw61yYSBDYW5hbCA8
bWNhbmFsQGlnYWxpYS5jb20+DQoNCkJlc3QgUmVnYXJkcywNCi0gTWHDrXJhIENhbmFsDQoNCj4g
LS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL0tjb25maWcgICAgICAgIHwgNyArKysrKysrDQo+ICAg
ZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlICAgICAgIHwgMiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS90ZXN0cy9NYWtlZmlsZSB8IDQgKysrLQ0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9LY29uZmlnDQo+IGluZGV4IDMxNWNiZGY2MTk3
OS4uOWYwMTljZDA1M2UxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vS2NvbmZpZw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vS2NvbmZpZw0KPiBAQCAtNjMsNiArNjMsMTIgQEAgY29u
ZmlnIERSTV9VU0VfRFlOQU1JQ19ERUJVRw0KPiAgIAkgIGJ5dGVzIHBlciBjYWxsc2l0ZSwgdGhl
IC5kYXRhIGNvc3RzIGNhbiBiZSBzdWJzdGFudGlhbCwgYW5kDQo+ICAgCSAgYXJlIHRoZXJlZm9y
ZSBjb25maWd1cmFibGUuDQo+ICAgDQo+ICtjb25maWcgRFJNX0tVTklUX1RFU1RfSEVMUEVSUw0K
PiArCXRyaXN0YXRlDQo+ICsJZGVwZW5kcyBvbiBEUk0gJiYgS1VOSVQNCj4gKwloZWxwDQo+ICsJ
ICBLVW5pdCBIZWxwZXJzIGZvciBLTVMgZHJpdmVycy4NCj4gKw0KPiAgIGNvbmZpZyBEUk1fS1VO
SVRfVEVTVA0KPiAgIAl0cmlzdGF0ZSAiS1VuaXQgdGVzdHMgZm9yIERSTSIgaWYgIUtVTklUX0FM
TF9URVNUUw0KPiAgIAlkZXBlbmRzIG9uIERSTSAmJiBLVU5JVA0KPiBAQCAtNzMsNiArNzksNyBA
QCBjb25maWcgRFJNX0tVTklUX1RFU1QNCj4gICAJc2VsZWN0IERSTV9LTVNfSEVMUEVSDQo+ICAg
CXNlbGVjdCBEUk1fQlVERFkNCj4gICAJc2VsZWN0IERSTV9FWFBPUlRfRk9SX1RFU1RTIGlmIG0N
Cj4gKwlzZWxlY3QgRFJNX0tVTklUX1RFU1RfSEVMUEVSUw0KPiAgIAlkZWZhdWx0IEtVTklUX0FM
TF9URVNUUw0KPiAgIAloZWxwDQo+ICAgCSAgVGhpcyBidWlsZHMgdW5pdCB0ZXN0cyBmb3IgRFJN
LiBUaGlzIG9wdGlvbiBpcyBub3QgdXNlZnVsIGZvcg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlDQo+IGluZGV4IGY5MmNk
Nzg5MjcxMS4uOGQ2MWZiZGZkZmFjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vTWFr
ZWZpbGUNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL01ha2VmaWxlDQo+IEBAIC0xMjUsNyArMTI1
LDcgQEAgb2JqLSQoQ09ORklHX0RSTV9LTVNfSEVMUEVSKSArPSBkcm1fa21zX2hlbHBlci5vDQo+
ICAgIyBEcml2ZXJzIGFuZCB0aGUgcmVzdA0KPiAgICMNCj4gICANCj4gLW9iai0kKENPTkZJR19E
Uk1fS1VOSVRfVEVTVCkgKz0gdGVzdHMvDQo+ICtvYmoteQkJCSs9IHRlc3RzLw0KPiAgIA0KPiAg
IG9iai0kKENPTkZJR19EUk1fTUlQSV9EQkkpICs9IGRybV9taXBpX2RiaS5vDQo+ICAgb2JqLSQo
Q09ORklHX0RSTV9NSVBJX0RTSSkgKz0gZHJtX21pcGlfZHNpLm8NCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS90ZXN0cy9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9NYWtl
ZmlsZQ0KPiBpbmRleCA5NGZlNTQ2ZDkzN2QuLmVmMTRiZDQ4MTEzOSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3Rlc3RzL01ha2VmaWxlDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90
ZXN0cy9NYWtlZmlsZQ0KPiBAQCAtMSw1ICsxLDggQEANCj4gICAjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wDQo+ICAgDQo+ICtvYmotJChDT05GSUdfRFJNX0tVTklUX1RFU1RfSEVM
UEVSUykgKz0gXA0KPiArCWRybV9rdW5pdF9oZWxwZXJzLm8NCj4gKw0KPiAgIG9iai0kKENPTkZJ
R19EUk1fS1VOSVRfVEVTVCkgKz0gXA0KPiAgIAlkcm1fYnVkZHlfdGVzdC5vIFwNCj4gICAJZHJt
X2NtZGxpbmVfcGFyc2VyX3Rlc3QubyBcDQo+IEBAIC05LDcgKzEyLDYgQEAgb2JqLSQoQ09ORklH
X0RSTV9LVU5JVF9URVNUKSArPSBcDQo+ICAgCWRybV9mb3JtYXRfaGVscGVyX3Rlc3QubyBcDQo+
ICAgCWRybV9mb3JtYXRfdGVzdC5vIFwNCj4gICAJZHJtX2ZyYW1lYnVmZmVyX3Rlc3QubyBcDQo+
IC0JZHJtX2t1bml0X2hlbHBlcnMubyBcDQo+ICAgCWRybV9tbV90ZXN0Lm8gXA0KPiAgIAlkcm1f
bW9kZXNfdGVzdC5vIFwNCj4gICAJZHJtX3BsYW5lX2hlbHBlcl90ZXN0Lm8gXA0KPiANCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
