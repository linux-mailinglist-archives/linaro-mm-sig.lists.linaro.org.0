Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B10681E810
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Dec 2023 16:32:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FBD743F09
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Dec 2023 15:32:03 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 0BE263F01B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Dec 2023 15:31:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=iCA3HxCE;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 1EBA3B80B6A;
	Tue, 26 Dec 2023 15:31:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A2F3C433C9;
	Tue, 26 Dec 2023 15:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703604701;
	bh=66d0Qjm7Fhh6A/wpLZlrliai68w6dI1voOKBjpgmcCw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=iCA3HxCEwVVQ5PfmpFpStLdMS46DrdKGXIGqoPvvohdYyBqmx3+iynDrnt4+2+ft+
	 sYYp+PdUic04XlyN1+79BNu3yurbq/cSX9Vs+IVoZCHAbMO7RcOKQKA1FqDm7GAM82
	 Y6z7ZTRk/FEYZEkZPcfmbuaZa9j8o4P0rThLK9kueWjPdkZwQmQdSfzD4YwWOlpThM
	 Idtx4W2fmw9M5mqBnS/Yvek3w+MZsfF8L3orwag4SBxrP5Ova7yvXknPyIiouff2or
	 sAWwoAdfcIuA8nypYqb7h9joUg30E1a4ccqUjUjQnkj4YMBCOeRhl6IiKde9JeCYSP
	 TQNVu6BGXfy0g==
Date: Tue, 26 Dec 2023 15:31:34 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>
Message-ID: <20231226153134.3e9b8c24@jic23-huawei>
In-Reply-To: <277071605eb355912972a30b07ecead7d70efe25.camel@gmail.com>
References: <20231219175009.65482-1-paul@crapouillou.net>
	<20231219175009.65482-8-paul@crapouillou.net>
	<20231221161258.056f5ce4@jic23-huawei>
	<2da3fb55384a222868f90562be9e1e2ca55ec1c3.camel@crapouillou.net>
	<277071605eb355912972a30b07ecead7d70efe25.camel@gmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.68.75:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0BE263F01B
X-Spamd-Bar: --
Message-ID-Hash: E4UR7IHQW7FHGUGFDAAYBBOGK3QMBSMQ
X-Message-ID-Hash: E4UR7IHQW7FHGUGFDAAYBBOGK3QMBSMQ
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Paul Cercueil <paul@crapouillou.net>, Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 7/8] iio: buffer-dmaengine: Support new DMABUF based userspace API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E4UR7IHQW7FHGUGFDAAYBBOGK3QMBSMQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMiBEZWMgMjAyMyAwOTo1ODoyOSArMDEwMA0KTnVubyBTw6EgPG5vbmFtZS5udW5v
QGdtYWlsLmNvbT4gd3JvdGU6DQoNCj4gT24gVGh1LCAyMDIzLTEyLTIxIGF0IDE4OjMwICswMTAw
LCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0KPiA+IEhpIEpvbmF0aGFuLA0KPiA+IA0KPiA+IExlIGpl
dWRpIDIxIGTDqWNlbWJyZSAyMDIzIMOgIDE2OjEyICswMDAwLCBKb25hdGhhbiBDYW1lcm9uIGEg
w6ljcml0wqA6ICANCj4gPiA+IE9uIFR1ZSwgMTkgRGVjIDIwMjMgMTg6NTA6MDggKzAxMDANCj4g
PiA+IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PiB3cm90ZToNCj4gPiA+ICAg
DQo+ID4gPiA+IFVzZSB0aGUgZnVuY3Rpb25zIHByb3ZpZGVkIGJ5IHRoZSBidWZmZXItZG1hIGNv
cmUgdG8gaW1wbGVtZW50IHRoZQ0KPiA+ID4gPiBETUFCVUYgdXNlcnNwYWNlIEFQSSBpbiB0aGUg
YnVmZmVyLWRtYWVuZ2luZSBJSU8gYnVmZmVyDQo+ID4gPiA+IGltcGxlbWVudGF0aW9uLg0KPiA+
ID4gPiANCj4gPiA+ID4gU2luY2Ugd2Ugd2FudCB0byBiZSBhYmxlIHRvIHRyYW5zZmVyIGFuIGFy
Yml0cmFyeSBudW1iZXIgb2YgYnl0ZXMNCj4gPiA+ID4gYW5kDQo+ID4gPiA+IG5vdCBuZWNlc2Fy
aWx5IHRoZSBmdWxsIERNQUJVRiwgdGhlIGFzc29jaWF0ZWQgc2NhdHRlcmxpc3QgaXMNCj4gPiA+
ID4gY29udmVydGVkDQo+ID4gPiA+IHRvIGFuIGFycmF5IG9mIERNQSBhZGRyZXNzZXMgKyBsZW5n
dGhzLCB3aGljaCBpcyB0aGVuIHBhc3NlZCB0bw0KPiA+ID4gPiBkbWFlbmdpbmVfcHJlcF9zbGF2
ZV9kbWFfYXJyYXkoKS4NCj4gPiA+ID4gDQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFBhdWwgQ2Vy
Y3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PiAgDQo+ID4gPiBPbmUgcXVlc3Rpb24gaW5saW5l
LiBPdGhlcndpc2UgbG9va3MgZmluZSB0byBtZS4NCj4gPiA+IA0KPiA+ID4gSiAgDQo+ID4gPiA+
IA0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gdjM6IFVzZSB0aGUgbmV3IGRtYWVuZ2luZV9wcmVwX3Ns
YXZlX2RtYV9hcnJheSgpLCBhbmQgYWRhcHQgdGhlDQo+ID4gPiA+IGNvZGUgdG8NCj4gPiA+ID4g
wqDCoMKgIHdvcmsgd2l0aCB0aGUgbmV3IGZ1bmN0aW9ucyBpbnRyb2R1Y2VkIGluIGluZHVzdHJp
YWxpby1idWZmZXItDQo+ID4gPiA+IGRtYS5jLg0KPiA+ID4gPiANCj4gPiA+ID4gdjU6IC0gVXNl
IHRoZSBuZXcgZG1hZW5naW5lX3ByZXBfc2xhdmVfZG1hX3ZlYygpLg0KPiA+ID4gPiDCoMKgwqAg
LSBSZXN0cmljdCB0byBpbnB1dCBidWZmZXJzLCBzaW5jZSBvdXRwdXQgYnVmZmVycyBhcmUgbm90
IHlldA0KPiA+ID4gPiDCoMKgwqDCoMKgIHN1cHBvcnRlZCBieSBJSU8gYnVmZmVycy4NCj4gPiA+
ID4gLS0tDQo+ID4gPiA+IMKgLi4uL2J1ZmZlci9pbmR1c3RyaWFsaW8tYnVmZmVyLWRtYWVuZ2lu
ZS5jwqDCoMKgIHwgNTINCj4gPiA+ID4gKysrKysrKysrKysrKysrKy0tLQ0KPiA+ID4gPiDCoDEg
ZmlsZSBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiAN
Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2J1ZmZlci9pbmR1c3RyaWFsaW8tYnVm
ZmVyLWRtYWVuZ2luZS5jDQo+ID4gPiA+IGIvZHJpdmVycy9paW8vYnVmZmVyL2luZHVzdHJpYWxp
by1idWZmZXItZG1hZW5naW5lLmMNCj4gPiA+ID4gaW5kZXggNWY4NWJhMzhlNmY2Li44MjVkNzZh
MjRhNjcgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvaWlvL2J1ZmZlci9pbmR1c3RyaWFs
aW8tYnVmZmVyLWRtYWVuZ2luZS5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvaWlvL2J1ZmZlci9p
bmR1c3RyaWFsaW8tYnVmZmVyLWRtYWVuZ2luZS5jDQo+ID4gPiA+IEBAIC02NCwxNSArNjQsNTEg
QEAgc3RhdGljIGludA0KPiA+ID4gPiBpaW9fZG1hZW5naW5lX2J1ZmZlcl9zdWJtaXRfYmxvY2so
c3RydWN0IGlpb19kbWFfYnVmZmVyX3F1ZXVlDQo+ID4gPiA+ICpxdWV1ZSwNCj4gPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoHN0cnVjdCBkbWFlbmdpbmVfYnVmZmVyICpkbWFlbmdpbmVfYnVmZmVyID0N
Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpaW9fYnVmZmVyX3RvX2Rt
YWVuZ2luZV9idWZmZXIoJnF1ZXVlLT5idWZmZXIpOw0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
c3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlwdG9yICpkZXNjOw0KPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqB1bnNpZ25lZCBpbnQgaSwgbmVudHM7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVj
dCBzY2F0dGVybGlzdCAqc2dsOw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZG1hX3Zl
YyAqdmVjczsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgc2l6ZV90IG1heF9zaXplOw0KPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgZG1hX2Nvb2tpZV90IGNvb2tpZTsNCj4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgc2l6ZV90IGxlbl90b3RhbDsNCj4gPiA+ID4gwqANCj4gPiA+ID4gLcKgwqDCoMKgwqDC
oMKgYmxvY2stPmJ5dGVzX3VzZWQgPSBtaW4oYmxvY2stPnNpemUsIGRtYWVuZ2luZV9idWZmZXIt
ICANCj4gPiA+ID4gPiBtYXhfc2l6ZSk7ICANCj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgYmxvY2st
PmJ5dGVzX3VzZWQgPSByb3VuZF9kb3duKGJsb2NrLT5ieXRlc191c2VkLA0KPiA+ID4gPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYWVuZ2luZV9idWZm
ZXItPmFsaWduKTsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKHF1ZXVlLT5idWZmZXIuZGly
ZWN0aW9uICE9IElJT19CVUZGRVJfRElSRUNUSU9OX0lOKSB7DQo+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBXZSBkbyBub3QgeWV0IHN1cHBvcnQgb3V0cHV0IGJ1ZmZl
cnMuICovDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gLUVJ
TlZBTDsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiA+ID4gPiDCoA0KPiA+ID4gPiAtwqDC
oMKgwqDCoMKgwqBkZXNjID0gZG1hZW5naW5lX3ByZXBfc2xhdmVfc2luZ2xlKGRtYWVuZ2luZV9i
dWZmZXItPmNoYW4sDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBibG9j
ay0+cGh5c19hZGRyLCBibG9jay0+Ynl0ZXNfdXNlZCwNCj4gPiA+ID4gRE1BX0RFVl9UT19NRU0s
DQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBETUFfUFJFUF9JTlRFUlJV
UFQpOw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoYmxvY2stPnNnX3RhYmxlKSB7DQo+ID4g
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZ2wgPSBibG9jay0+c2dfdGFibGUt
PnNnbDsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG5lbnRzID0gc2df
bmVudHNfZm9yX2xlbihzZ2wsIGJsb2NrLT5ieXRlc191c2VkKTsgIA0KPiA+ID4gDQo+ID4gPiBB
cmUgd2UgZ3VhcmFudGVlZCB0aGUgbGVuZ3RoIGluIHRoZSBzZ2xpc3QgaXMgZW5vdWdoP8KgIElm
IG5vdCB0aGlzDQo+ID4gPiBjYW4gcmV0dXJuIGFuIGVycm9yIGNvZGUuICANCj4gPiANCj4gPiBU
aGUgbGVuZ3RoIG9mIHRoZSBzZ2xpc3Qgd2lsbCBhbHdheXMgYmUgZW5vdWdoLCB0aGUNCj4gPiBp
aW9fYnVmZmVyX2VucXVldWVfZG1hYnVmKCkgZnVuY3Rpb24gYWxyZWFkeSBjaGVja3MgdGhhdCBi
bG9jay0gIA0KPiA+ID4gYnl0ZXNfdXNlZCBpcyBlcXVhbCBvciBzbWFsbGVyIHRoYW4gdGhlIHNp
emUgb2YgdGhlIERNQUJVRi4gIA0KPiA+IA0KPiA+IEl0IGlzIHF1aXRlIGEgZmV3IGZ1bmN0aW9u
cyBhYm92ZSBpbiB0aGUgY2FsbCBzdGFjayB0aG91Z2gsIHNvIEkgY2FuDQo+ID4gaGFuZGxlIHRo
ZSBlcnJvcnMgb2Ygc2dfbmVudHNfZm9yX2xlbigpIGhlcmUgaWYgeW91IHRoaW5rIG1ha2VzIHNl
bnNlLiAgDQo+IA0KPiBNYXliZSBwdXR0aW5nIHNvbWV0aGluZyBsaWtlIHRoZSBhYm92ZSBpbiBh
IGNvbW1lbnQ/DQpFaXRoZXIgY29tbWVudCwgb3IgYW4gZXhwbGljaXQgY2hlY2sgc28gd2UgZG9u
J3QgbmVlZCB0aGUgY29tbWVudCBpcw0KZmluZSBhcyBmYXIgYXMgSSdtIGNvbmNlcm5lZC4NCg0K
Sm9uYXRoYW4NCg0KPiANCj4gLSBOdW5vIFPDoQ0KPiANCj4gDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
