Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C18B02204
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Jul 2025 18:40:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1BA1445014
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Jul 2025 16:40:53 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id C196043C11
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Jul 2025 16:40:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B800316F8;
	Fri, 11 Jul 2025 09:40:29 -0700 (PDT)
Received: from [10.1.196.50] (e121345-lin.cambridge.arm.com [10.1.196.50])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B3643F6A8;
	Fri, 11 Jul 2025 09:40:37 -0700 (PDT)
Message-ID: <a1a93c41-4c21-4b7a-a8b8-5d4e83d73931@arm.com>
Date: Fri, 11 Jul 2025 17:40:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
 <20250606-6-10-rocket-v7-4-dc16cfe6fe4e@tomeuvizoso.net>
 <fcb3ca23-7ebd-4f48-92d2-969b24936b9b@arm.com>
 <CAAObsKBiSX0HcxJJjTNGgE4FD4eAYW5wvY=bROtdkZ1mqf_0VQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <CAAObsKBiSX0HcxJJjTNGgE4FD4eAYW5wvY=bROtdkZ1mqf_0VQ@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C196043C11
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	RCVD_IN_DNSWL_MED(-0.20)[217.140.110.172:from];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,fooishbar.org,libre.computer,oss.qualcomm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: GKOVG56OK5RMRZIIL4U4DD5XCJ6EE6PS
X-Message-ID-Hash: GKOVG56OK5RMRZIIL4U4DD5XCJ6EE6PS
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 04/10] accel/rocket: Add job submission IOCTL
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GKOVG56OK5RMRZIIL4U4DD5XCJ6EE6PS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTEvMDcvMjAyNSA1OjAwIHBtLCBUb21ldSBWaXpvc28gd3JvdGU6DQo+IE9uIFR1ZSwgSnVu
IDI0LCAyMDI1IGF0IDM6NTDigK9QTSBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29t
PiB3cm90ZToNCj4+DQo+PiBPbiAyMDI1LTA2LTA2IDc6MjggYW0sIFRvbWV1IFZpem9zbyB3cm90
ZToNCj4+IFsuLi5dDQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tl
dF9kZXZpY2UuaCBiL2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9kZXZpY2UuaA0KPj4+IGlu
ZGV4IDEwYWNmZTg1MzRmMDBhNzk4NWQ0MGE5M2Y0YjJmN2Y2OWQ0M2NhZWUuLjUwZTQ2ZjA1MTZi
ZDE2MTViNWY4MjZjNTAwMmE2YzBlY2JmOWFlZDQgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9h
Y2NlbC9yb2NrZXQvcm9ja2V0X2RldmljZS5oDQo+Pj4gKysrIGIvZHJpdmVycy9hY2NlbC9yb2Nr
ZXQvcm9ja2V0X2RldmljZS5oDQo+Pj4gQEAgLTEzLDYgKzEzLDggQEANCj4+PiAgICBzdHJ1Y3Qg
cm9ja2V0X2RldmljZSB7DQo+Pj4gICAgICAgIHN0cnVjdCBkcm1fZGV2aWNlIGRkZXY7DQo+Pj4N
Cj4+PiArICAgICBzdHJ1Y3QgbXV0ZXggc2NoZWRfbG9jazsNCj4+PiArDQo+Pj4gICAgICAgIHN0
cnVjdCBtdXRleCBpb21tdV9sb2NrOw0KPj4NCj4+IEp1c3QgcmVhbGlzZWQgSSBtaXNzZWQgdGhp
cyBpbiB0aGUgbGFzdCBwYXRjaCwgYnV0IGlvbW11X2xvY2sgYXBwZWFycyB0bw0KPj4gYmUgY29t
cGxldGVseSB1bm5lY2Vzc2FyeSBub3cuDQo+Pg0KPj4+ICAgICAgICBzdHJ1Y3Qgcm9ja2V0X2Nv
cmUgKmNvcmVzOw0KPj4gWy4uLl0NCj4+PiArc3RhdGljIHZvaWQgcm9ja2V0X2pvYl9od19zdWJt
aXQoc3RydWN0IHJvY2tldF9jb3JlICpjb3JlLCBzdHJ1Y3Qgcm9ja2V0X2pvYiAqam9iKQ0KPj4+
ICt7DQo+Pj4gKyAgICAgc3RydWN0IHJvY2tldF90YXNrICp0YXNrOw0KPj4+ICsgICAgIGJvb2wg
dGFza19wcF9lbiA9IDE7DQo+Pj4gKyAgICAgYm9vbCB0YXNrX2NvdW50ID0gMTsNCj4+PiArDQo+
Pj4gKyAgICAgLyogR08gISAqLw0KPj4+ICsNCj4+PiArICAgICAvKiBEb24ndCBxdWV1ZSB0aGUg
am9iIGlmIGEgcmVzZXQgaXMgaW4gcHJvZ3Jlc3MgKi8NCj4+PiArICAgICBpZiAoYXRvbWljX3Jl
YWQoJmNvcmUtPnJlc2V0LnBlbmRpbmcpKQ0KPj4+ICsgICAgICAgICAgICAgcmV0dXJuOw0KPj4+
ICsNCj4+PiArICAgICB0YXNrID0gJmpvYi0+dGFza3Nbam9iLT5uZXh0X3Rhc2tfaWR4XTsNCj4+
PiArICAgICBqb2ItPm5leHRfdGFza19pZHgrKzsNCj4+PiArDQo+Pj4gKyAgICAgcm9ja2V0X3Bj
X3dyaXRlbChjb3JlLCBCQVNFX0FERFJFU1MsIDB4MSk7DQo+Pj4gKw0KPj4+ICsgICAgIHJvY2tl
dF9jbmFfd3JpdGVsKGNvcmUsIFNfUE9JTlRFUiwgMHhlICsgMHgxMDAwMDAwMCAqIGNvcmUtPmlu
ZGV4KTsNCj4+PiArICAgICByb2NrZXRfY29yZV93cml0ZWwoY29yZSwgU19QT0lOVEVSLCAweGUg
KyAweDEwMDAwMDAwICogY29yZS0+aW5kZXgpOw0KPj4NCj4+IFRob3NlIHJlYWxseSBsb29rIGxp
a2UgYml0ZmllbGQgb3BlcmF0aW9ucyByYXRoZXIgdGhhbiBhY3R1YWwgYXJpdGhtZXRpYw0KPj4g
dG8gbWUuDQo+Pg0KPj4+ICsNCj4+PiArICAgICByb2NrZXRfcGNfd3JpdGVsKGNvcmUsIEJBU0Vf
QUREUkVTUywgdGFzay0+cmVnY21kKTsNCj4+DQo+PiBJIGRvbid0IHNlZSBob3cgcmVnY21kIGlz
IGNyZWF0ZWQgKEkgZ3Vlc3MgdGhhdCdzIGluIHVzZXJzcGFjZT8pLCBidXQNCj4+IGdpdmVuIHRo
YXQgaXQncyBleHBsaWNpdGx5IHU2NCBhbGwgdGhlIHdheSB0aHJvdWdoIC0gYW5kIGVzcGVjaWFs
bHkNCj4+IHNpbmNlIHlvdSBjbGFpbSB0byBzdXBwb3J0IDQwLWJpdCBETUEgYWRkcmVzc2VzIC0g
aXQgZGVmaW5pdGVseSBzZWVtcw0KPj4gc3VzcGljaW91cyB0aGF0IHRoZSB1cHBlciAzMiBiaXRz
IG5ldmVyIHNlZW0gdG8gYmUgY29uc3VtZWQgYW55d2hlcmUgOi8NCj4gDQo+IFllYWgsIGJ1dCB0
aGVyZSdzIG5vIG90aGVyIHJlZ2lzdGVyIGZvciBCQVNFX0FERFJFU1MgYWRkcmVzcyBpbiB0aGUg
VFJNLg0KDQpUaGF0IG9ubHkgcmVhZmZpcm1zIHRoZSBxdWVzdGlvbiB0aGVuIC0gaWYgdGhpcyB2
YWx1ZSBpcyBvbmx5IGV2ZXIgDQp3cml0dGVuIHZlcmJhdGltIHRvIGEgMzItYml0IHJlZ2lzdGVy
LCB3aHkgaXMgaXQgNjQtYml0Pw0KDQpUaGFua3MsDQpSb2Jpbi4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
