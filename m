Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7DBBE9FC6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Oct 2025 17:37:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D69045742
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Oct 2025 15:37:53 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 770704445E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Oct 2025 15:37:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=glaN3tjI;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AFF6A45997;
	Fri, 17 Oct 2025 15:37:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 517C7C4CEE7;
	Fri, 17 Oct 2025 15:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760715468;
	bh=fMtsEtk+yymjMrBDxyIo4cPm8zug+9QHbs06gVATPdw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=glaN3tjI9nSulUo1uDQTr6u/p7SSb0kvNXzx2Zp6DuspOMCnukW5J3S0lElQsi5ps
	 NU7SnkAchBwn0irmQoYZSIpWoSv+3TbtNt64vMYO481yMyvMPzcpQx5t3VMgHBTJen
	 yhmZRIYfVW59jRSrc/uakK1ie2xa6NeGwPCM2lcZV0luckrXKLeKBnLy5oZLoxMgeE
	 nE8tsoajMLfPXrjbX5CC85UtPw+EVov/SnbBeW9yDHk1AvKLpY1AgL8tuGWDaqTD7R
	 9dIbQtOT1pb+aP2DhguS+sCRD1Zm5OVChREj1YubPcGAhuLirGmqnHkQktgznRurqh
	 J3MzLTnTQS+bw==
Date: Fri, 17 Oct 2025 10:37:46 -0500
From: Rob Herring <robh@kernel.org>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <20251017153746.GA1579747-robh@kernel.org>
References: <20251016-ethos-v5-0-ba0aece0a006@kernel.org>
 <20251016-ethos-v5-2-ba0aece0a006@kernel.org>
 <aPHhXl6qdU1mMCNt@lstrano-desk.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aPHhXl6qdU1mMCNt@lstrano-desk.jf.intel.com>
X-Rspamd-Queue-Id: 770704445E
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,fooishbar.org,nxp.com,linux.dev,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XVIKLSGLV4GMADA7G4Y4I2K5GR76VYQB
X-Message-ID-Hash: XVIKLSGLV4GMADA7G4Y4I2K5GR76VYQB
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, Daniel Stone <daniel@fooishbar.org>, Frank Li <Frank.li@nxp.com>, Sui Jingfeng <sui.jingfeng@linux.dev>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XVIKLSGLV4GMADA7G4Y4I2K5GR76VYQB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBPY3QgMTYsIDIwMjUgYXQgMTE6MjU6MzRQTSAtMDcwMCwgTWF0dGhldyBCcm9zdCB3
cm90ZToNCj4gT24gVGh1LCBPY3QgMTYsIDIwMjUgYXQgMDQ6MDY6MDVQTSAtMDUwMCwgUm9iIEhl
cnJpbmcgKEFybSkgd3JvdGU6DQo+ID4gQWRkIGEgZHJpdmVyIGZvciBBcm0gRXRob3MtVTY1L1U4
NSBOUFVzLiBUaGUgRXRob3MtVSBOUFUgaGFzIGENCj4gPiByZWxhdGl2ZWx5IHNpbXBsZSBpbnRl
cmZhY2Ugd2l0aCBzaW5nbGUgY29tbWFuZCBzdHJlYW0gdG8gZGVzY3JpYmUNCj4gPiBidWZmZXJz
LCBvcGVyYXRpb24gc2V0dGluZ3MsIGFuZCBuZXR3b3JrIG9wZXJhdGlvbnMuIEl0IHN1cHBvcnRz
IHVwIHRvIDgNCj4gPiBtZW1vcnkgcmVnaW9ucyAodGhvdWdoIG5vIGgvdyBib3VuZHMgb24gYSBy
ZWdpb24pLiBUaGUgRXRob3MgTlBVcw0KPiA+IGFyZSBkZXNpZ25lZCB0byB1c2UgYW4gU1JBTSBm
b3Igc2NyYXRjaCBtZW1vcnkuIFJlZ2lvbiAyIGlzIHJlc2VydmVkDQo+ID4gZm9yIFNSQU0gKGxp
a2UgdGhlIGRvd25zdHJlYW0gZHJpdmVyIHN0YWNrIGFuZCBjb21waWxlcikuIFVzZXJzcGFjZQ0K
PiA+IGRvZXNuJ3QgbmVlZCBhY2Nlc3MgdG8gdGhlIFNSQU0uDQoNClRoYW5rcyBmb3IgdGhlIHJl
dmlldy4NCg0KWy4uLl0NCg0KPiA+ICtzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqZXRob3N1X2pv
Yl9ydW4oc3RydWN0IGRybV9zY2hlZF9qb2IgKnNjaGVkX2pvYikNCj4gPiArew0KPiA+ICsJc3Ry
dWN0IGV0aG9zdV9qb2IgKmpvYiA9IHRvX2V0aG9zdV9qb2Ioc2NoZWRfam9iKTsNCj4gPiArCXN0
cnVjdCBldGhvc3VfZGV2aWNlICpkZXYgPSBqb2ItPmRldjsNCj4gPiArCXN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlID0gTlVMTDsNCj4gPiArCWludCByZXQ7DQo+ID4gKw0KPiA+ICsJaWYgKHVubGlr
ZWx5KGpvYi0+YmFzZS5zX2ZlbmNlLT5maW5pc2hlZC5lcnJvcikpDQo+ID4gKwkJcmV0dXJuIE5V
TEw7DQo+ID4gKw0KPiA+ICsJZmVuY2UgPSBldGhvc3VfZmVuY2VfY3JlYXRlKGRldik7DQo+IA0K
PiBBbm90aGVyIHJlY2xhaW0gaXNzdWU6IGV0aG9zdV9mZW5jZV9jcmVhdGUgYWxsb2NhdGVzIG1l
bW9yeSB1c2luZw0KPiBHRlBfS0VSTkVMLiBTaW5jZSB3ZSdyZSBhbHJlYWR5IGluIHRoZSBETUEg
ZmVuY2Ugc2lnbmFsaW5nIHBhdGgNCj4gKHJlY2xhaW0pLCB0aGlzIGNhbiBsZWFkIHRvIGEgZGVh
ZGxvY2suDQo+IA0KPiBXaXRob3V0IHRvbyBtdWNoIHRob3VnaHQsIHlvdSBsaWtlbHkgd2FudCB0
byBtb3ZlIHRoaXMgYWxsb2NhdGlvbiB0bw0KPiBldGhvc3Vfam9iX2RvX3B1c2gsIGJ1dCBiZWZv
cmUgdGFraW5nIGRldi0+c2NoZWRfbG9jayBvciBjYWxsaW5nDQo+IGRybV9zY2hlZF9qb2JfYXJt
Lg0KPiANCj4gV2UgcmVhbGx5IHNob3VsZCBmaXggdGhlIERSTSBzY2hlZHVsZXIgd29yayBxdWV1
ZSB0byBiZSB0YWludGVkIHdpdGgNCj4gcmVjbGFpbS4gSWYgSSByZWNhbGwgY29ycmVjdGx5LCB3
ZSdkIG5lZWQgdG8gdXBkYXRlIHRoZSB3b3JrIHF1ZXVlDQo+IGxheWVyLiBMZXQgbWUgbG9vayBp
bnRvIHRoYXTigJRJJ3ZlIHNlZW4gdGhpcyB0eXBlIG9mIGJ1ZyBzZXZlcmFsIHRpbWVzLA0KPiBh
bmQgbG9ja2RlcCBzaG91bGQgYmUgYWJsZSB0byBjYXRjaCBpdC4NCg0KTGlrZWx5IHRoZSByb2Nr
ZXQgZHJpdmVyIHN1ZmZlcnMgZnJvbSB0aGUgc2FtZSBpc3N1ZXMuLi4NCg0KPiANCj4gPiArCWlm
IChJU19FUlIoZmVuY2UpKQ0KPiA+ICsJCXJldHVybiBmZW5jZTsNCj4gPiArDQo+ID4gKwlpZiAo
am9iLT5kb25lX2ZlbmNlKQ0KPiA+ICsJCWRtYV9mZW5jZV9wdXQoam9iLT5kb25lX2ZlbmNlKTsN
Cj4gPiArCWpvYi0+ZG9uZV9mZW5jZSA9IGRtYV9mZW5jZV9nZXQoZmVuY2UpOw0KPiA+ICsNCj4g
PiArCXJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMoZGV2LT5iYXNlLmRldik7DQo+IA0KPiBJIGhh
dmVuJ3QgbG9va2VkIGF0IHlvdXIgUE0gZGVzaWduLCBidXQgdGhpcyBnZW5lcmFsbHkgbG9va3Mg
cXVpdGUNCj4gZGFuZ2Vyb3VzIHdpdGggcmVzcGVjdCB0byByZWNsYWltLiBGb3IgZXhhbXBsZSwg
aWYgeW91ciBQTSByZXN1bWUgcGF0aHMNCj4gYWxsb2NhdGUgbWVtb3J5IG9yIHRha2UgbG9ja3Mg
dGhhdCBhbGxvY2F0ZSBtZW1vcnkgdW5kZXJuZWF0aCwgeW91J3JlDQo+IGxpa2VseSB0byBydW4g
aW50byBpc3N1ZXMuDQo+IA0KPiBBIGJldHRlciBhcHByb2FjaCB3b3VsZCBiZSB0byBhdHRhY2gg
YSBQTSByZWZlcmVuY2UgdG8geW91ciBqb2IgdXBvbg0KPiBjcmVhdGlvbiBhbmQgcmVsZWFzZSBp
dCB1cG9uIGpvYiBkZXN0cnVjdGlvbi4gVGhhdCB3b3VsZCBiZSBzYWZlciBhbmQNCj4gc2F2ZSB5
b3UgaGVhZGFjaGVzIGluIHRoZSBsb25nIHJ1bi4NCg0KT3VyIFBNIGlzIG5vdGhpbmcgbW9yZSB0
aGFuIGNsb2NrIGVuYWJsZS9kaXNhYmxlIGFuZCByZWdpc3RlciBpbml0LiANCg0KSWYgdGhlIHJ1
bnRpbWUgUE0gQVBJIGRvZXNuJ3Qgd29yayBhbmQgbmVlZHMgc3BlY2lhbCBkcml2ZXIgd3JhcHBl
cnMsIA0KdGhlbiBJJ20gaW5jbGluZWQgdG8ganVzdCBub3QgdXNlIGl0IGFuZCBtYW5hZ2UgY2xv
Y2tzIGRpcmVjdGx5IChhcyANCnRoYXQncyBhbGwgaXQgaXMgZG9pbmcpLg0KDQo+IA0KPiBUaGlz
IGlzIHdoYXQgd2UgZG8gaW4gWGUgWzFdIFsyXS4NCj4gDQo+IEFsc28sIGluIGdlbmVyYWwsIHRo
aXMgZHJpdmVyIGhhcyBiZWVuIHJldmlld2VkIChSQuKAmWQpLCBidXQgaXQncyBub3QNCj4gZ3Jl
YXQgdGhhdCBJIHNwb3R0ZWQgbnVtZXJvdXMgaXNzdWVzIHdpdGhpbiBqdXN0IGZpdmUgbWludXRl
cy4gSSBzdWdnZXN0DQo+IHRha2luZyBhIHN0ZXAgYmFjayBhbmQgdGhvcm91Z2hseSBldmFsdWF0
aW5nIGV2ZXJ5dGhpbmcgdGhpcyBkcml2ZXIgaXMNCj4gZG9pbmcuDQoNCldlbGwsIGlmIGl0IGlz
IGhhcmQgdG8gZ2V0IHNpbXBsZSBkcml2ZXJzIHJpZ2h0LCB0aGVuIGl0J3MgYSBwcm9ibGVtIA0K
d2l0aCB0aGUgc3Vic3lzdGVtIEFQSXMgSU1PLg0KDQpSb2INCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
