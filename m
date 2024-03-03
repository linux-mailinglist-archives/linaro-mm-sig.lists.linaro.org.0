Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE1C86F67D
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  3 Mar 2024 18:43:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F90E44175
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  3 Mar 2024 17:43:13 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id A23CD40CBD
	for <linaro-mm-sig@lists.linaro.org>; Sun,  3 Mar 2024 17:43:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Gl3mvHj1;
	spf=pass (lists.linaro.org: domain of jic23@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=jic23@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2FF01CE08CA;
	Sun,  3 Mar 2024 17:43:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7E43C433F1;
	Sun,  3 Mar 2024 17:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709487782;
	bh=qJ09RHZhZupJd0yUAMrg15L1EonazM6hfg7HvBc4dqU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Gl3mvHj1LeSU+t+auF4ARJDUMTEiCum/A3TvDet9nk9H8ra5LejfpRm9zdDrE62fC
	 lgTsPcPk2mVECDumxiceoujTh4tu/+EL0MWT0mOgD5/NZwu9bExDqwGj5uxJPKkuNP
	 GBexCInsXs3vGrSMEDXEDndORFgB3DDIJsQocGMIfy8OVODdjAFba0V4sBeSf5FGHU
	 r4CpDFiebw/m1qH7cEA2RY5wHXl5icL+7gnwBbqID1M3REqMbJvgn6iTI+kOvS0dOr
	 /Tr+SpzjOdL8uRRiCujBcGkcJwPd25CwhM3/iV7CP5F8iBdRmM8qM0OafgKlj6kwFV
	 ZO//USU2UeFgQ==
Date: Sun, 3 Mar 2024 17:42:45 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno Sa <nuno.sa@analog.com>
Message-ID: <20240303174245.37efc0b0@jic23-huawei>
In-Reply-To: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
References: <20240223-iio-dmabuf-v7-0-78cfaad117b9@analog.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A23CD40CBD
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: VPTWQINIOQUANDUP6OQOA2Q6QUKL6PVL
X-Message-ID-Hash: VPTWQINIOQUANDUP6OQOA2Q6QUKL6PVL
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Paul Cercueil <paul@crapouillou.net>, Daniel Vetter <daniel@ffwll.ch>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, dmaengine@vger.kernel.org, linux-iio@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/6] iio: new DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VPTWQINIOQUANDUP6OQOA2Q6QUKL6PVL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyMyBGZWIgMjAyNCAxMzoxMzo1OCArMDEwMA0KTnVubyBTYSA8bnVuby5zYUBhbmFs
b2cuY29tPiB3cm90ZToNCg0KPiBIaSBKb25hdGhhbiwgbGlrZWx5IHlvdSdyZSB3b25kZXJpbmcg
d2h5IEknbSBzZW5kaW5nIHY3LiBXZWxsLCB0byBiZQ0KPiBob25lc3QsIHdlJ3JlIGhvcGluZyB0
byBnZXQgdGhpcyBtZXJnZWQgdGhpcyBmb3IgdGhlIDYuOSBtZXJnZSB3aW5kb3cuDQo+IE1haW4g
cmVhc29uIGlzIGJlY2F1c2UgdGhlIFVTQiBwYXJ0IGlzIGFscmVhZHkgaW4gKHNvIGl0IHdvdWxk
IGJlIG5pY2UNCj4gdG8gZ2V0IHRoZSB3aG9sZSB0aGluZyBpbikuIE1vcmVvdmVyLCB0aGUgY2hh
bmdlcyBhc2tlZCBpbiB2NiB3ZXJlIHNpbXBsZQ0KPiAoZXZlbiB0aG91Z2ggSSdtIG5vdCBxdWl0
ZSBzdXJlIGluIG9uZSBvZiB0aGVtKSBhbmQgUGF1bCBoYXMgbm8gYWNjZXNzIHRvDQo+IGl0J3Mg
bGFwdG9wIHNvIGhlIGNhbid0IHNlbmQgdjcgaGltc2VsZi4gU28gaGUga2luZCBvZiBzYWlkL2Fz
a2VkIGZvciBtZSB0byBkbyBpdC4NCg0KU28sIHdlIGFyZSBjdXR0aW5nIHRoaXMgdmVyeSBmaW5l
LiBJZiBMaW51cyBoaW50cyBzdHJvbmdseSBhdCBhbiByYzggbWF5YmUgd2UNCmNhbiBzbmVhayB0
aGlzIGluLiBIb3dldmVyLCBJIG5lZWQgYW4gQWNrIGZyb20gVmlub2QgZm9yIHRoZSBkbWEgZW5n
aW5lIGNoYW5nZXMgZmlyc3QuDQoNCkFsc28gSSdkIGxvdmUgYSBmaW5hbCAnbG9va3Mgb2snIGNv
bW1lbnQgZnJvbSBETUFCVUYgZm9sayAoQWNrIGV2ZW4gYmV0dGVyISkNCg0KU2VlbXMgdGhhdCB0
aGUgb3RoZXIgc2lkZSBnb3QgcmVzb2x2ZWQgaW4gdGhlIFVTQiBnYWRnZXQsIGJ1dCBsYXN0IHdl
IGhlYXJkIGZvcm0NCkRhbmllbCBhbmQgQ2hyaXN0aWFuIGxvb2tzIHRvIGhhdmUgYmVlbiBiYWNr
IG9uIHY1LiBJJ2QgbGlrZSB0aGVtIHRvIGNvbmZpcm0NCnRoZXkgYXJlIGZpbmUgd2l0aCB0aGUg
Y2hhbmdlcyBtYWRlIGFzIGEgcmVzdWx0LiANCg0KSSd2ZSBiZWVuIGhhcHB5IHdpdGggdGhlIElJ
TyBwYXJ0cyBmb3IgYSBmZXcgdmVyc2lvbnMgbm93IGJ1dCBteSBhYmlsaXR5IHRvIHJldmlldw0K
dGhlIERNQUJVRiBhbmQgRE1BIGVuZ2luZSBiaXRzIGlzIGxpbWl0ZWQuDQoNCkEgcmVhbGlzdGlj
IHBhdGggdG8gZ2V0IHRoaXMgaW4gaXMgcmM4IGlzIGhhcHBlbmluZywgaXMgYWxsIEFja3MgaW4g
cGxhY2UgYnkgV2VkbmVzZGF5LA0KSSBnZXQgYXBwbHkgaXQgYW5kIGhpdHMgTGludXgtbmV4dCBU
aHVyc2RheSwgUHVsbCByZXF1ZXN0IHRvIEdyZWcgb24gU2F0dXJkYXkgYW5kIEdyZWcNCmlzIGZl
ZWxpbmcgcGFydGljdWxhcmx5IGdlbmVyb3VzIHRvIHRha2Ugb25lIG9uIHRoZSBkYXkgaGUgbm9y
bWFsbHkgY2xvc2VzIGhpcyB0cmVlcy4NCg0KV2hpbHN0IEknbGwgY3Jvc3MgbXkgZmluZ2Vycywg
bG9va3MgbGlrZSA2LjEwIG1hdGVyaWFsIHRvIG1lIDooDQoNCkknZCBtaXNzZWQgdGhlIHByb2dy
ZXNzIG9uIHRoZSBVU0Igc2lkZSBzbyB3YXNuJ3QgcGF5aW5nIGVub3VnaCBhdHRlbnRpb24uIFNv
cnJ5IQ0KDQpKb25hdGhhbg0KDQo+IA0KPiB2NjoNCj4gICogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtaWlvLzIwMjQwMTI5MTcwMjAxLjEzMzc4NS0xLXBhdWxAY3JhcG91aWxsb3UubmV0
Lw0KPiANCj4gdjc6DQo+ICAtIFBhdGNoIDENCj4gICAqIFJlbmFtZWQgKmRldmljZV9wcmVwX3Ns
YXZlX2RtYV92ZWMoKSAtPiBkZXZpY2VfcHJlcF9wZXJpcGhlcmFsX2RtYV92ZWMoKTsNCj4gICAq
IEFkZGVkIGEgbmV3IGZsYWcgcGFyYW1ldGVyIHRvIHRoZSBmdW5jdGlvbiBhcyBhZ3JlZWQgYmV0
d2VlbiBQYXVsDQo+ICAgICBhbmQgVmlub2QuIEkgcmVuYW1lZCB0aGUgZmlyc3QgcGFyYW1ldGVy
IHRvIHByZXBfZmxhZ3MgYXMgaXQncyBzdXBwb3NlZCB0bw0KPiAgICAgYmUgdXNlZCAoSSB0aGlu
aykgd2l0aCBlbnVtIGRtYV9jdHJsX2ZsYWdzLiBJJ20gbm90IHJlYWxseSBzdXJlIGhvdyB0aGF0
IEFQSQ0KPiAgICAgY2FuIGdyb3cgYnV0IEkgd2FzIHRoaW5raW5nIGluIGp1c3QgaGF2aW5nIGEg
Ym9vbCBjeWNsaWMgcGFyYW1ldGVyIChhcyB0aGUNCj4gICAgIGZpcnN0IGludGVudGlvbiBvZiB0
aGUgZmxhZ3MgaXMgdG8gc3VwcG9ydCBjeWNsaWMgdHJhbnNmZXJzKSBidXQgZW5kZWQgdXANCj4g
ICAgICJyZXNwZWN0aW5nIiB0aGUgcHJldmlvdXNseSBhZ3JlZWQgYXBwcm9hY2guDQo+IC0gUGF0
Y2ggMg0KPiAgICogQWRhcHRlZCBwYXRjaCBmb3IgdGhlIGNoYW5nZXMgbWFkZSBpbiBwYXRjaCAx
Lg0KPiAtIFBhdGNoIDUNCj4gICAqIEFkYXB0ZWQgcGF0Y2ggZm9yIHRoZSBjaGFuZ2VzIG1hZGUg
aW4gcGF0Y2ggMS4NCj4gDQo+IFBhdGNoc2V0IGJhc2VkIG9uIG5leHQtMjAyNDAyMjMuDQo+IA0K
PiAtLS0NCj4gUGF1bCBDZXJjdWVpbCAoNik6DQo+ICAgICAgIGRtYWVuZ2luZTogQWRkIEFQSSBm
dW5jdGlvbiBkbWFlbmdpbmVfcHJlcF9wZXJpcGhlcmFsX2RtYV92ZWMoKQ0KPiAgICAgICBkbWFl
bmdpbmU6IGRtYS1heGktZG1hYzogSW1wbGVtZW50IGRldmljZV9wcmVwX3BlcmlwaGVyYWxfZG1h
X3ZlYw0KPiAgICAgICBpaW86IGNvcmU6IEFkZCBuZXcgRE1BQlVGIGludGVyZmFjZSBpbmZyYXN0
cnVjdHVyZQ0KPiAgICAgICBpaW86IGJ1ZmZlci1kbWE6IEVuYWJsZSBzdXBwb3J0IGZvciBETUFC
VUZzDQo+ICAgICAgIGlpbzogYnVmZmVyLWRtYWVuZ2luZTogU3VwcG9ydCBuZXcgRE1BQlVGIGJh
c2VkIHVzZXJzcGFjZSBBUEkNCj4gICAgICAgRG9jdW1lbnRhdGlvbjogaWlvOiBEb2N1bWVudCBo
aWdoLXNwZWVkIERNQUJVRiBiYXNlZCBBUEkNCj4gDQo+ICBEb2N1bWVudGF0aW9uL2lpby9kbWFi
dWZfYXBpLnJzdCAgICAgICAgICAgICAgICAgICB8ICA1NCArKysNCj4gIERvY3VtZW50YXRpb24v
aWlvL2luZGV4LnJzdCAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICsNCj4gIGRyaXZlcnMv
ZG1hL2RtYS1heGktZG1hYy5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDQwICsrDQo+ICBk
cml2ZXJzL2lpby9idWZmZXIvaW5kdXN0cmlhbGlvLWJ1ZmZlci1kbWEuYyAgICAgICB8IDE4MSAr
KysrKysrLQ0KPiAgZHJpdmVycy9paW8vYnVmZmVyL2luZHVzdHJpYWxpby1idWZmZXItZG1hZW5n
aW5lLmMgfCAgNTkgKystDQo+ICBkcml2ZXJzL2lpby9pbmR1c3RyaWFsaW8tYnVmZmVyLmMgICAg
ICAgICAgICAgICAgICB8IDQ2MiArKysrKysrKysrKysrKysrKysrKysNCj4gIGluY2x1ZGUvbGlu
dXgvZG1hZW5naW5lLmggICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDI3ICsrDQo+ICBpbmNs
dWRlL2xpbnV4L2lpby9idWZmZXItZG1hLmggICAgICAgICAgICAgICAgICAgICB8ICAzMSArKw0K
PiAgaW5jbHVkZS9saW51eC9paW8vYnVmZmVyX2ltcGwuaCAgICAgICAgICAgICAgICAgICAgfCAg
MzMgKysNCj4gIGluY2x1ZGUvdWFwaS9saW51eC9paW8vYnVmZmVyLmggICAgICAgICAgICAgICAg
ICAgIHwgIDIyICsNCj4gIDEwIGZpbGVzIGNoYW5nZWQsIDg5NCBpbnNlcnRpb25zKCspLCAxNyBk
ZWxldGlvbnMoLSkNCj4gLS0tDQo+IGJhc2UtY29tbWl0OiAzM2UxZDMxODczZjg3ZDExOWU1MTIw
Yjg4Y2QzNTBlZmE2OGVmMjc2DQo+IGNoYW5nZS1pZDogMjAyNDAyMjMtaWlvLWRtYWJ1Zi01ZWUw
NTMwMTk1Y2ENCj4gLS0NCj4gDQo+IFRoYW5rcyENCj4gLSBOdW5vIFPDoQ0KPiANCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
