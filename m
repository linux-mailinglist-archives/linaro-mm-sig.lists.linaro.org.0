Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4E3B0EB92
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jul 2025 09:15:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6786B3F702
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jul 2025 07:15:44 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C1A973F6FC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jul 2025 07:15:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Ryz3mPKK;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2D8C75C57E1;
	Wed, 23 Jul 2025 07:15:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FEA7C4CEE7;
	Wed, 23 Jul 2025 07:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753254929;
	bh=aoQqriX7CooIPgMf9W7uo25rnfymCO1WAzndg4imAxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ryz3mPKKqpMYfFdxtdLwsLUNADzvjjWOQj9xApvRL/oZjV4pGyNB2CcAVql1LM8gG
	 1OF9dXIptw4qYkMUmgtx+r9Vp/wvKnGmqsj/PV77SOobPPfX7QQQ3jHGzTw3TdaEqp
	 k9Z9zcaC1+9uZRm3Llky+X0MyyzfgEK2GILXMURVCyZV6vZAUrBZSrsyoTi2S0Supq
	 1n0X1Y8POOkozkFMTU5KAB9sxAqzQQZRkqNSJpjrGJIA8ME/leaiOBYrfGni7yGH4K
	 jcZ0K4UK0HtJs8RpnVR3qiQEqUeIoTK9cVtc9oXU7KT5bDUpV4tGlAvAI5jKFzuvm2
	 crjsI7K7CdRXQ==
Date: Wed, 23 Jul 2025 12:45:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Message-ID: <aICMDROkyjzBZFHo@vaman>
References: <644oygj43z2um42tmmldp3feemgzrdoirzfw7pu27k4zi76bwg@wfxbtgqqgh4p>
 <dc7358a1-ddc5-402e-9024-283f8e46e3b6@quicinc.com>
 <CAO9ioeVuAO6mYpBSpiTW0jhFRPtkubZ5eEskd1yLBHVdR8_YMA@mail.gmail.com>
 <1b55d9d4-f3ff-4cd9-8906-5f370da55732@quicinc.com>
 <28d26c70-178f-413b-b7f8-410c508cfdd7@quicinc.com>
 <CAO9ioeXBwFYL8q7x7_fHvx5YO+qyAXk4wpnfPrku4iY9yBsk0Q@mail.gmail.com>
 <cac5e84b-fbdb-47a9-860d-16a7fa4dc773@quicinc.com>
 <4q3vlydi5xgltd3pcez54alxgrehhfn4pppg47ngwp6y5k7n33@d4d4htntj64k>
 <53dd18ec-9a65-4bf7-8490-ca3eb56ce2a5@quicinc.com>
 <iang2jpe4s6wmbypmtq5uswcm6n6xntqdulyhekcz5k6zxddu3@re3rrr4dso5p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <iang2jpe4s6wmbypmtq5uswcm6n6xntqdulyhekcz5k6zxddu3@re3rrr4dso5p>
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[15];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C1A973F6FC
X-Spamd-Bar: -
Message-ID-Hash: YEGY5PFPUAPT2SC2U7HF2YUFCIP5S4TR
X-Message-ID-Hash: YEGY5PFPUAPT2SC2U7HF2YUFCIP5S4TR
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>, Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>, Viken Dadhaniya <quic_vdadhani@quicinc.com>, Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 2/2] i2c: i2c-qcom-geni: Add Block event interrupt support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YEGY5PFPUAPT2SC2U7HF2YUFCIP5S4TR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjItMDctMjUsIDE1OjQ2LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOg0KPiBPbiBUdWUsIEp1
bCAyMiwgMjAyNSBhdCAwNTo1MDowOFBNICswNTMwLCBKeW90aGkgS3VtYXIgU2VlcmFwdSB3cm90
ZToNCj4gPiBPbiA3LzE5LzIwMjUgMzoyNyBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToNCj4g
PiA+IE9uIE1vbiwgSnVsIDA3LCAyMDI1IGF0IDA5OjU4OjMwUE0gKzA1MzAsIEp5b3RoaSBLdW1h
ciBTZWVyYXB1IHdyb3RlOg0KPiA+ID4gPiBPbiA3LzQvMjAyNSAxOjExIEFNLCBEbWl0cnkgQmFy
eXNoa292IHdyb3RlOg0KPiA+ID4gPiA+IE9uIFRodSwgMyBKdWwgMjAyNSBhdCAxNTo1MSwgSnlv
dGhpIEt1bWFyIFNlZXJhcHUNCg0KW0ZvbGtzLCB3b3VsZCBiZSBuaWNlIHRvIHRyaW0gcmVwbGll
c10NCg0KPiA+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIGNvbmZpcm0gaWYgY2FuIGdvIHdpdGggdGhl
IHNpbWlsYXIgYXBwcm9hY2ggb2YgdW5tYXAgdGhlDQo+ID4gPiA+IHByb2Nlc3NlZCBUUkVzIGJh
c2VkIG9uIGEgZml4ZWQgdGhyZXNob2xkIG9yIGNvbnN0YW50IHZhbHVlLCBpbnN0ZWFkIG9mDQo+
ID4gPiA+IHVubWFwcGluZyB0aGVtIGFsbCBhdCBvbmNlPw0KPiA+ID4gDQo+ID4gPiBJJ2Qgc3Rp
bGwgc2F5LCB0aGF0J3MgYSBiYWQgaWRlYS4gUGxlYXNlIHN0YXkgd2l0aGluIHRoZSBib3VuZGFy
aWVzIG9mDQo+ID4gPiB0aGUgRE1BIEFQSS4NCj4gPiA+DQo+ID4gSSBhZ3JlZSB3aXRoIHRoZSBh
cHByb2FjaCB5b3Ugc3VnZ2VzdGVk4oCUaXQncyB0aGUgR1BJJ3MgcmVzcG9uc2liaWxpdHkgdG8N
Cj4gPiBtYW5hZ2UgdGhlIGF2YWlsYWJsZSBUUkVzLg0KPiA+IA0KPiA+IEhvd2V2ZXIsIEknbSBj
dXJpb3VzIHdoZXRoZXIgY2FuIHdlIHNldCBhIGR5bmFtaWMgd2F0ZXJtYXJrIHZhbHVlIHBlcmhh
cHMNCj4gPiBoYWxmIHRoZSBhdmFpbGFibGUgVFJFcykgdG8gdHJpZ2dlciB1bm1hcHBpbmcgb2Yg
cHJvY2Vzc2VkIFRSRXMgPyBUaGlzIHdvdWxkDQo+ID4gYWxsb3cgdGhlIHNvZnR3YXJlIHRvIHBy
ZXBhcmUgdGhlIG5leHQgc2V0IG9mIFRSRXMgd2hpbGUgdGhlIGhhcmR3YXJlDQo+ID4gY29udGlu
dWVzIHByb2Nlc3NpbmcgdGhlIHJlbWFpbmluZyBvbmVzLCBlbmFibGluZyBiZXR0ZXIgcGFyYWxs
ZWxpc20gYW5kDQo+ID4gdGhyb3VnaHB1dC4NCj4gDQo+IExldCdzIGxhbmQgdGhlIHNpbXBsZSBp
bXBsZW1lbnRhdGlvbiBmaXJzdCwgd2hpY2ggY2FuIHRoZW4gYmUgaW1wcm92ZWQuDQo+IEhvd2V2
ZXIgSSBkb24ndCBzZWUgYW55IHdheSB0byByZXR1cm4gJ2Fib3ZlIHRoZSB3YXRlcm1hcmsnIGZy
b20gdGhlIERNQQ0KPiBjb250cm9sbGVyLiBZb3UgbWlnaHQgbmVlZCB0byBlbmhhbmNlIHRoZSBB
UEkuDQoNClRyYWRpdGlvbmFsbHksIHdlIHNldCB0aGUgZG1hIHRyYW5zZmVycyBmb3Igd2F0ZXJt
YXJrIGxldmVsIGFuZCB3ZSBnZXQgYQ0KaW50ZXJydXB0LiBTbyB5b3UgbWlnaHQgd2FudCB0byBz
ZXQgdGhlIGNhbGxiYWNrIGZvciB3YXRlcm1hcmsgbGV2ZWwNCmFuZCB0aGVuIGRvIG1hcHBpbmcv
dW5tYXBwaW5nIGV0YyBpbiB0aGUgY2FsbGJhY2suIFRoaXMgaXMgdHlwaWNhbCBtb2RlbA0KZm9y
IGRtYWVuZ2luZXMsIHdlIHNob3VsZCBmb2xsb3cgdGhhdCB3ZWxsDQoNCkJSDQotLSANCn5WaW5v
ZA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
