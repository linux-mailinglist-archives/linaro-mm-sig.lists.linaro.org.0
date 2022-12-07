Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 08721645B8F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Dec 2022 14:56:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC4883E941
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Dec 2022 13:56:35 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 36B943E927
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Dec 2022 13:56:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=Ah2r+Q8u;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fyA1KqlBkiD4PRKJwfoxMJSb8dR56u0Byrgz69IGCDM=; b=Ah2r+Q8uT2cKvHeYBiKlpjgsLs
	0B/7BzJgCtAnx/1S/Bl3NjOgzMvCF4pB7RnsaHHNMTaFAKobs19+W3xdVtIK+4KJGQlQJp+9p5+CV
	ZJt6wuL4V7D/H/Q9oEw0nq8JV9uxe6OtR981NZ2hiTetd1Dk1Ga1rVecQ/gbphFWbOvm6iggz+EKE
	2AZGszBmFHBzdsK3vh2pl32DMcZlvM2oHb+m8pON91EXhJvicePApSSMDbLEFITWrNZ7er6CrYpv8
	/4Q2li7STgNWKK2VAAq4Q8OM6XMiy3i0CJjveKUpQAu1MomMzSxV7hsDi8OdCbKUR0NYBBDARwap5
	eEOjAjLg==;
Received: from [143.107.182.242] (helo=[10.41.75.14])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1p2uu1-00GbW6-UQ; Wed, 07 Dec 2022 14:56:02 +0100
Message-ID: <57f2302f-0e36-7665-37b0-a81a4be8cb7b@igalia.com>
Date: Wed, 7 Dec 2022 10:55:30 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
 <20221123-rpi-kunit-tests-v3-20-4615a663a84a@cerno.tech>
Content-Language: en-US
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v3-20-4615a663a84a@cerno.tech>
X-Rspamd-Queue-Id: 36B943E927
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,suse.de,gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[igalia.com:+];
	DMARC_NA(0.00)[igalia.com];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: H3I2WMS4OTBEK5DCFZFN7JH4V3XVIFJX
X-Message-ID-Hash: H3I2WMS4OTBEK5DCFZFN7JH4V3XVIFJX
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 20/20] Documentation: gpu: vc4: Add KUnit Tests Section
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H3I2WMS4OTBEK5DCFZFN7JH4V3XVIFJX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMS8yMiAxMjoxMSwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4gTm93IHRoYXQgd2UgaGF2
ZSBWQzQtc3BlY2lmaWMgdGVzdHMgaW4gcGxhY2UsIGxldCdzIGRvY3VtZW50IHRoZW0NCj4gcHJv
cGVybHkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8u
dGVjaD4NCg0KUmV2aWV3ZWQtYnk6IE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+DQoN
Ckp1c3QgYSBzbWFsbCBuaXQgYmVsb3cuDQoNCj4gLS0tDQo+ICAgRG9jdW1lbnRhdGlvbi9ncHUv
dmM0LnJzdCB8IDE2ICsrKysrKysrKysrKysrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L3ZjNC5yc3Qg
Yi9Eb2N1bWVudGF0aW9uL2dwdS92YzQucnN0DQo+IGluZGV4IDVkZjFkOThiOTU0NC4uYTIzNzVm
MTU4NGU2IDEwMDY0NA0KPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS92YzQucnN0DQo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZ3B1L3ZjNC5yc3QNCj4gQEAgLTU0LDYgKzU0LDIyIEBAIFZFQyAoQ29t
cG9zaXRlIFRWIG91dCkgZW5jb2Rlcg0KPiAgIC4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9k
cm0vdmM0L3ZjNF92ZWMuYw0KPiAgICAgIDpkb2M6IFZDNCBTRFRWIG1vZHVsZQ0KPiAgIA0KPiAr
S1VuaXQgVGVzdHMNCj4gKz09PT09PT09PT09DQo+ICsNCj4gK1RoZSBWQzQgRHJpdmVyIHVzZXMg
S1VuaXQgdG8gcGVyZm9ybSBkcml2ZXItc3BlY2lmaWMgdW5pdCBhbmQNCj4gK2ludGVncmF0aW9u
IHRlc3RzLg0KPiArDQo+ICtUaGVzZSB0ZXN0cyBhcmUgdXNpbmcgYSBtb2NrIGRyaXZlciBhbmQg
Y2FuIGJlIHJhbiB1c2luZyB0aGUNCj4gK2NvbW1hbmQ6Og0KPiArCS4vdG9vbHMvdGVzdGluZy9r
dW5pdC9rdW5pdC5weSBydW4gXA0KPiArCQktLWt1bml0Y29uZmlnPWRyaXZlcnMvZ3B1L2RybS92
YzQvdGVzdHMvLmt1bml0Y29uZmlnIFwNCj4gKwkJLS1jcm9zc19jb21waWxlIGFhcmNoNjQtbGlu
dXgtZ251LSAtLWFyY2ggYXJtNjQNCg0KSSBiZWxpZXZlIHlvdSBjb3VsZCB1c2UgYSBjb2RlIGJs
b2NrIGhlcmUsIGxpa2U6DQoNCi4uIGNvZGUtYmxvY2s6OiBiYXNoDQoJDQoJJCAuL3Rvb2xzL3Rl
c3Rpbmcva3VuaXQva3VuaXQucHkgcnVuIFwNCgkJLS1rdW5pdGNvbmZpZz1kcml2ZXJzL2dwdS9k
cm0vdmM0L3Rlc3RzLy5rdW5pdGNvbmZpZyBcDQoJCS0tY3Jvc3NfY29tcGlsZSBhYXJjaDY0LWxp
bnV4LWdudS0gLS1hcmNoIGFybTY0DQoNCllvdSBjb3VsZCBhbHNvIG1lbnRpb24gdGhhdCB5b3Ug
Y2FuIHJ1biB0aGUgdGVzdHMgd2l0aCAtLWFyY2ggYXJtLg0KDQpCZXN0IFJlZ2FyZHMsDQotIE1h
w61yYSBDYW5hbA0KDQo+ICsNCj4gK1BhcnRzIG9mIHRoZSBkcml2ZXIgdGhhdCBhcmUgY3VycmVu
dGx5IGNvdmVyZWQgYnkgdGVzdHMgYXJlOg0KPiArICogVGhlIEhWUyB0byBQaXhlbFZhbHZlIGR5
bmFtaWMgRklGTyBhc3NpZ25tZW50LCBmb3IgdGhlIEJDTTI4MzUtNw0KPiArICAgYW5kIEJDTTI3
MTEuDQo+ICsNCj4gICBNZW1vcnkgTWFuYWdlbWVudCBhbmQgM0QgQ29tbWFuZCBTdWJtaXNzaW9u
DQo+ICAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiAgIA0K
PiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
