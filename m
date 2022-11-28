Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5554D64C8D5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 13:20:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64F5E3E973
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Dec 2022 12:20:54 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 829833EBC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Nov 2022 20:26:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=Qu+a2WRr;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/sTcXOAXGAMuK5G/ElNc5ZSL+smBi2LaSE+7f87t0JM=; b=Qu+a2WRrFH5Cn/iLLZ07s8GGX6
	h0vwLadZK7Z3fPuhokWU4/sgPTgFOGPQyOT3SwR4XhXmJ5FvZHJNbei+GS8Q1FzmtKenVNwwzeUFD
	K/Gf2qejFUfcF/N3bwkNd4Ixc5bUx3aTVOLDpmt0fYrQ/HvGU8ISukfR5IUy4F+/4GvXu6YCldc9V
	QWAbNNaHixECEZulOkrsQYQ0KWGqHYWfhNDT8NZWAafXbx+61yYFfyNfHob0e6VwVO807hOrkB45Z
	5GIJ3rXchH/l8X3KVGY3mfVz/ENUjFe0aktAOY1gZcnngXSolpjKiNv9LA7vIwr0e6B2bm/YjyPiA
	i1HmOL8w==;
Received: from [177.34.169.227] (helo=[192.168.0.8])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1ozkiA-00AcWv-Jz; Mon, 28 Nov 2022 21:26:42 +0100
Message-ID: <8eab7706-e86a-7e2b-3107-76fe10639e70@igalia.com>
Date: Mon, 28 Nov 2022 17:26:34 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-13-efe5ed518b63@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-13-efe5ed518b63@cerno.tech>
X-Rspamd-Queue-Id: 829833EBC0
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fanzine2.igalia.com:rdns,fanzine2.igalia.com:helo,cerno.tech:email];
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
Message-ID-Hash: QTRCNYFCMY4JEF73FORIZ6XLBTQXMJ47
X-Message-ID-Hash: QTRCNYFCMY4JEF73FORIZ6XLBTQXMJ47
X-Mailman-Approved-At: Wed, 14 Dec 2022 12:18:31 +0000
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 13/17] drm/vc4: crtc: Make encoder lookup helper public
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QTRCNYFCMY4JEF73FORIZ6XLBTQXMJ47/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjgvMjIgMTE6NTMsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IFdlJ2xsIG5lZWQgYSBm
dW5jdGlvbiB0aGF0IGxvb2tzIHVwIGFuIGVuY29kZXIgYnkgaXRzIHZjNF9lbmNvZGVyX3R5cGUu
DQo+IFN1Y2ggYSBmdW5jdGlvbiBpcyBhbHJlYWR5IHByZXNlbnQgaW4gdGhlIENSVEMgY29kZSwg
c28gbGV0J3MgbWFrZSBpdA0KPiBwdWJsaWMgc28gdGhhdCB3ZSBjYW4gcmV1c2UgaXQgaW4gdGhl
IHVuaXQgdGVzdHMuDQo+IA0KPiBSZXZpZXdlZC1ieTogSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFz
IDxqYXZpZXJtQHJlZGhhdC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1h
eGltZUBjZXJuby50ZWNoPg0KDQpSZXZpZXdlZC1ieTogTWHDrXJhIENhbmFsIDxtY2FuYWxAaWdh
bGlhLmNvbT4NCg0KQmVzdCBSZWdhcmRzLA0KLSBNYcOtcmEgQ2FuYWwNCg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS92YzQvdmM0X2NydGMuYyB8IDE3ICstLS0tLS0tLS0tLS0tLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuaCAgfCAxNiArKysrKysrKysrKysrKysrDQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2NydGMuYyBiL2RyaXZlcnMvZ3B1
L2RybS92YzQvdmM0X2NydGMuYw0KPiBpbmRleCA3YTJjNTRlZmVjYjAuLjU5ZTQ3MzA1OWZhMiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfY3J0Yy5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS92YzQvdmM0X2NydGMuYw0KPiBAQCAtNDg2LDIxICs0ODYsNiBAQCBzdGF0
aWMgaW50IHZjNF9jcnRjX2Rpc2FibGUoc3RydWN0IGRybV9jcnRjICpjcnRjLA0KPiAgCXJldHVy
biAwOw0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgc3RydWN0IGRybV9lbmNvZGVyICp2YzRfY3J0Y19n
ZXRfZW5jb2Rlcl9ieV90eXBlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywNCj4gLQkJCQkJCQllbnVt
IHZjNF9lbmNvZGVyX3R5cGUgdHlwZSkNCj4gLXsNCj4gLQlzdHJ1Y3QgZHJtX2VuY29kZXIgKmVu
Y29kZXI7DQo+IC0NCj4gLQlkcm1fZm9yX2VhY2hfZW5jb2RlcihlbmNvZGVyLCBjcnRjLT5kZXYp
IHsNCj4gLQkJc3RydWN0IHZjNF9lbmNvZGVyICp2YzRfZW5jb2RlciA9IHRvX3ZjNF9lbmNvZGVy
KGVuY29kZXIpOw0KPiAtDQo+IC0JCWlmICh2YzRfZW5jb2Rlci0+dHlwZSA9PSB0eXBlKQ0KPiAt
CQkJcmV0dXJuIGVuY29kZXI7DQo+IC0JfQ0KPiAtDQo+IC0JcmV0dXJuIE5VTEw7DQo+IC19DQo+
IC0NCj4gIGludCB2YzRfY3J0Y19kaXNhYmxlX2F0X2Jvb3Qoc3RydWN0IGRybV9jcnRjICpjcnRj
KQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1fZGV2aWNlICpkcm0gPSBjcnRjLT5kZXY7DQo+IEBAIC01
MzYsNyArNTIxLDcgQEAgaW50IHZjNF9jcnRjX2Rpc2FibGVfYXRfYm9vdChzdHJ1Y3QgZHJtX2Ny
dGMgKmNydGMpDQo+ICANCj4gIAlwdl9kYXRhID0gdmM0X2NydGNfdG9fdmM0X3B2X2RhdGEodmM0
X2NydGMpOw0KPiAgCWVuY29kZXJfdHlwZSA9IHB2X2RhdGEtPmVuY29kZXJfdHlwZXNbZW5jb2Rl
cl9zZWxdOw0KPiAtCWVuY29kZXIgPSB2YzRfY3J0Y19nZXRfZW5jb2Rlcl9ieV90eXBlKGNydGMs
IGVuY29kZXJfdHlwZSk7DQo+ICsJZW5jb2RlciA9IHZjNF9maW5kX2VuY29kZXJfYnlfdHlwZShk
cm0sIGVuY29kZXJfdHlwZSk7DQo+ICAJaWYgKFdBUk5fT04oIWVuY29kZXIpKQ0KPiAgCQlyZXR1
cm4gMDsNCj4gIA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9kcnYuaA0KPiBpbmRleCBjZDIwMDJmZmYxMTUuLjU0
MzUyZGI0ODQ3NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2LmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2LmgNCj4gQEAgLTQ5NSw2ICs0OTUs
MjIgQEAgdG9fdmM0X2VuY29kZXIoY29uc3Qgc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQ0K
PiAgCXJldHVybiBjb250YWluZXJfb2YoZW5jb2Rlciwgc3RydWN0IHZjNF9lbmNvZGVyLCBiYXNl
KTsNCj4gIH0NCj4gIA0KPiArc3RhdGljIGlubGluZQ0KPiArc3RydWN0IGRybV9lbmNvZGVyICp2
YzRfZmluZF9lbmNvZGVyX2J5X3R5cGUoc3RydWN0IGRybV9kZXZpY2UgKmRybSwNCj4gKwkJCQkJ
ICAgICBlbnVtIHZjNF9lbmNvZGVyX3R5cGUgdHlwZSkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX2Vu
Y29kZXIgKmVuY29kZXI7DQo+ICsNCj4gKwlkcm1fZm9yX2VhY2hfZW5jb2RlcihlbmNvZGVyLCBk
cm0pIHsNCj4gKwkJc3RydWN0IHZjNF9lbmNvZGVyICp2YzRfZW5jb2RlciA9IHRvX3ZjNF9lbmNv
ZGVyKGVuY29kZXIpOw0KPiArDQo+ICsJCWlmICh2YzRfZW5jb2Rlci0+dHlwZSA9PSB0eXBlKQ0K
PiArCQkJcmV0dXJuIGVuY29kZXI7DQo+ICsJfQ0KPiArDQo+ICsJcmV0dXJuIE5VTEw7DQo+ICt9
DQo+ICsNCj4gIHN0cnVjdCB2YzRfY3J0Y19kYXRhIHsNCj4gIAljb25zdCBjaGFyICpuYW1lOw0K
PiAgDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
