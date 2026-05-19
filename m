Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8D+eCXlLDGrHdgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 13:37:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AE83057DC55
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 13:37:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85A353F829
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:37:27 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 868C43F829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 11:37:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=lmkJMfMF;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779190642;
	bh=P71i5LOBOPL4Hw9EeBymlq0Uf0mmQClWsPDyQMD6YBw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=lmkJMfMFv3KpVtRpcOyjXSIVDVhu6eCaJRIpW91cYOFDTqtTZIC2c9C+1C1oJMtSU
	 dnXMaW6ng5tUAkAskq35eqxUC1O+6hNTVv3ZEfCXQD0BDsa2/0uZpsUEzq1Esv2qxZ
	 615G/Hj4eMOGF4pB1h2Vu6Cygfef+Ypql4Qe2tp3asoMM20dltJ83aK9xDrDpdNjbM
	 6iR+0qbuawQlElj596VtUO+CgXYXrOMvfkA6dJV2s8GSWcHzzz4OXdvKMqCzrC7oIp
	 KFu7AEHGP5uoXhH8VP+npLTMz3B87ETrX4Qo41jOb8UOqcWeFMJeXt7HLLVpLm8ybE
	 aDrFawFNR4TbQ==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4C28B17E1305;
	Tue, 19 May 2026 13:37:21 +0200 (CEST)
Date: Tue, 19 May 2026 13:37:18 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Maxime Ripard <mripard@kernel.org>
Message-ID: <20260519133718.373d6070@fedora>
In-Reply-To: <20260519-loutish-beautiful-trogon-67453f@houat>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
	<20260505140516.1372388-5-ketil.johnsen@arm.com>
	<20260505181523.49a3d85c@fedora>
	<afxVIuVVPisBQ9p_@e129842.arm.com>
	<20260507135356.5428d50d@fedora>
	<agMvb_jeRsO7tSS-@e142607>
	<20260512161111.0cb7000e@fedora>
	<agNJasayW8VCHTiU@e142607>
	<CAPaKu7QC7FdjL6m_OSb+E5aYKs6bmT-9DAHc5PC=XctCmRph2Q@mail.gmail.com>
	<20260518091650.5a7a4f4a@fedora>
	<20260519-loutish-beautiful-trogon-67453f@houat>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: UBOV4IVD532HSDKS2Q6GER46ONNOV5CW
X-Message-ID-Hash: UBOV4IVD532HSDKS2Q6GER46ONNOV5CW
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Chia-I Wu <olvaffe@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>, Marcin =?UTF-8?B?xZpsdXNhcno=?= <marcin.slusarz@arm.com>, Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-me
 dia@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UBOV4IVD532HSDKS2Q6GER46ONNOV5CW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,arm.com,ffwll.ch,linux.intel.com,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[collabora.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email]
X-Rspamd-Queue-Id: AE83057DC55
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAxOSBNYXkgMjAyNiAxMTo1MjoxMyArMDIwMA0KTWF4aW1lIFJpcGFyZCA8bXJpcGFy
ZEBrZXJuZWwub3JnPiB3cm90ZToNCg0KPiBIaSBCb3JpcywNCj4gDQo+IE9uIE1vbiwgTWF5IDE4
LCAyMDI2IGF0IDA5OjE2OjUwQU0gKzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4gPiBP
biBXZWQsIDEzIE1heSAyMDI2IDEyOjMxOjMyIC0wNzAwDQo+ID4gQ2hpYS1JIFd1IDxvbHZhZmZl
QGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4gICANCj4gPiA+IE9uIFR1ZSwgTWF5IDEyLCAyMDI2IGF0
IDg6MznigK9BTSBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4gd3JvdGU6ICANCj4g
PiA+ID4NCj4gPiA+ID4gT24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgMDQ6MTE6MTFQTSArMDIwMCwg
Qm9yaXMgQnJlemlsbG9uIHdyb3RlOiAgICANCj4gPiA+ID4gPiBPbiBUdWUsIDEyIE1heSAyMDI2
IDE0OjQ3OjI3ICswMTAwDQo+ID4gPiA+ID4gTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5j
b20+IHdyb3RlOg0KPiA+ID4gPiA+ICAgIA0KPiA+ID4gPiA+ID4gT24gVGh1LCBNYXkgMDcsIDIw
MjYgYXQgMDE6NTM6NTZQTSArMDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOiAgICANCj4gPiA+
ID4gPiA+ID4gT24gVGh1LCA3IE1heSAyMDI2IDExOjAyOjI2ICswMjAwDQo+ID4gPiA+ID4gPiA+
IE1hcmNpbiDFmmx1c2FyeiA8bWFyY2luLnNsdXNhcnpAYXJtLmNvbT4gd3JvdGU6DQo+ID4gPiA+
ID4gPiA+ICAgIA0KPiA+ID4gPiA+ID4gPiA+IE9uIFR1ZSwgTWF5IDA1LCAyMDI2IGF0IDA2OjE1
OjIzUE0gKzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZTogICAgDQo+ID4gPiA+ID4gPiA+ID4g
PiA+IEBAIC0yNzcsOSArMjg2LDIxIEBAIGludCBwYW50aG9yX2RldmljZV9pbml0KHN0cnVjdCBw
YW50aG9yX2RldmljZSAqcHRkZXYpDQo+ID4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIHJldDsNCj4gPiA+ID4gPiA+ID4gPiA+ID4gICAgIH0NCj4gPiA+ID4gPiA+
ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgIC8qIElmIGEgcHJvdGVjdGVkIGhlYXAg
bmFtZSBpcyBzcGVjaWZpZWQgYnV0IG5vdCBmb3VuZCwgZGVmZXIgdGhlIHByb2JlIHVudGlsIGNy
ZWF0ZWQgKi8NCj4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgIGlmIChwcm90ZWN0ZWRfaGVhcF9uYW1l
ICYmIHN0cmxlbihwcm90ZWN0ZWRfaGVhcF9uYW1lKSkgeyAgICANCj4gPiA+ID4gPiA+ID4gPiA+
DQo+ID4gPiA+ID4gPiA+ID4gPiBEbyB3ZSByZWFsbHkgbmVlZCB0aGlzIHN0cmxlbigpID4gMD8g
V29uJ3QgZG1hX2hlYXBfZmluZCgpIGZhaWwgaXMgdGhlDQo+ID4gPiA+ID4gPiA+ID4gPiBuYW1l
IGlzICIiIGFscmVhZHk/ICAgIA0KPiA+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+ID4gSWYg
ZG1hX2hlYXBfZmluZCgpIHdpbGwgZmFpbCwgdGhlbiB0aGUgd2hvbGUgcHJvYmUgd2l0aCBmYWls
IHRvby4NCj4gPiA+ID4gPiA+ID4gPiBUaGlzIGNoZWNrIHByZXZlbnRzIHRoYXQuICAgIA0KPiA+
ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiBZZWFoLCB0aGF0J3MgYWxzbyBhIHF1ZXN0aW9uYWJs
ZSBkZXNpZ24gY2hvaWNlLiBJIG1lYW4sIHdlIGNhbg0KPiA+ID4gPiA+ID4gPiBjdXJyZW50bHkg
cHJvYmUgYW5kIGJvb3QgdGhlIEZXIGV2ZW4gdGhvdWdoIHdlIG5ldmVyIHNldHVwIHRoZQ0KPiA+
ID4gPiA+ID4gPiBwcm90ZWN0ZWQgRlcgc2VjdGlvbnMsIHNvIHdoeSBzaG91bGQgd2UgZGVmZXIg
dGhlIHByb2JlIGhlcmU/IENhbid0IHdlDQo+ID4gPiA+ID4gPiA+IGp1c3QgcmV0cnkgdGhlIG5l
eHQgdGltZSBhIGdyb3VwIHdpdGggdGhlIHByb3RlY3RlZCBiaXQgaXMgY3JlYXRlZCBhbmQNCj4g
PiA+ID4gPiA+ID4gZmFpbCBpZiB3ZSBjYW4gZmluZCBhIHByb3RlY3RlZCBoZWFwPyAgICANCj4g
PiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBUaGUgcHJvYmxlbSB3ZSBoYXZlIHdpdGggdGhlIGN1cnJl
bnQgZmlybXdhcmUgaXMgdGhhdCBpdCBkb2VzIGEgbnVtYmVyIG9mIHNldHVwIHN0ZXBzIGF0ICJi
b290Ig0KPiA+ID4gPiA+ID4gdGltZSBvbmx5LiBPbmUgb2YgdGhlIHN0ZXBzIGlzIHByZXBhcmlu
ZyBpdHMgaW50ZXJuYWwgc3RydWN0dXJlcyBmb3Igd2hlbiBpdCBlbnRlcnMgcHJvdGVjdGVkDQo+
ID4gPiA+ID4gPiBtb2RlIGFuZCBpdCBzdG9yZXMgdGhlbSBpbiB0aGUgYnVmZmVyIHBhc3NlZCBp
biBhdCBmaXJtd2FyZSBsb2FkaW5nLiBXZSBjYW5ub3QgbGF0ZXIgcnVuIHRoZQ0KPiA+ID4gPiA+
ID4gcHJvY2VzcyB3aGVuIHdlIGhhdmUgYSBncm91cCB3aXRoIHByb3RlY3RlZCBtb2RlIHNldC4g
ICAgDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBObywgYnV0IHdlIGNhbiBmb3JjZSBhIGZ1bGwvc2xv
dyByZXNldCBhbmQgaGF2ZSB0aGF0IHRoaW5nDQo+ID4gPiA+ID4gcmUtaW5pdGlhbGl6ZWQsIGNh
bid0IHdlPyBJIG1lYW4sIHRoYXQncyBiYXNpY2FsbHkgd2hhdCB3ZSBkbyB3aGVuIGENCj4gPiA+
ID4gPiBmYXN0IHJlc2V0IGZhaWxzOiB3ZSByZS1pbml0aWFsaXplIGFsbCB0aGUgc2VjdGlvbnMg
YW5kIHJlc2V0IGFnYWluLCBhdA0KPiA+ID4gPiA+IHdoaWNoIHBvaW50IHRoZSBGVyBzaG91bGQg
c3RhcnQgZnJvbSBhIGZyZXNoIHN0YXRlLCBhbmQgYmUgYWJsZSB0bw0KPiA+ID4gPiA+IHByb3Bl
cmx5IGluaXRpYWxpemUgdGhlIHByb3RlY3RlZC1yZWxhdGVkIHN0dWZmIGlmIHByb3RlY3RlZCBz
ZWN0aW9ucw0KPiA+ID4gPiA+IGFyZSBwb3B1bGF0ZWQuIEFtIEkgbWlzc2luZyBzb21ldGhpbmc/
ICAgIA0KPiA+ID4gPg0KPiA+ID4gPiBSaWdodCwgd2UgY2FuIGRvIHRoYXQuIEZvciBzb21lIHJl
YXNvbiBJIGtlZXAgYXNzb2NpYXRpbmcgdGhlIHJlc2V0IHdpdGggdGhlDQo+ID4gPiA+IGVycm9y
IGhhbmRsaW5nIGFuZCBub3Qgd2l0aCAibm9ybWFsIiBvcGVyYXRpb25zLiAgICANCj4gPiA+IEkg
a2luZCBvZiBob3BlIHdlIGVuZCB1cCB3aXRoIGVpdGhlcg0KPiA+ID4gDQo+ID4gPiAgLSBwYW50
aG9yIGtub3dzIHRoZSBleGFjdCBoZWFwIHRvIHVzZSBhbmQgZmFpbHMgd2l0aCBFUFJPQkVfREVG
RVIgaWYNCj4gPiA+IHRoZSBoZWFwIGlzIG1pc3NpbmcsIG9yDQo+ID4gPiAgLSBwYW50aG9yIGdl
dHMgYSBkbWEtYnVmIGZyb20gdXNlcnNwYWNlIGFuZCBkb2VzIHRoZSBmdWxsIHJlc2V0DQo+ID4g
PiAgICAtIHVzZXJzcGFjZSBhbHNvIG5lZWRzIHRvIHByb3ZpZGUgYSBkbWEtYnVmIGZvciBlYWNo
IHByb3RlY3RlZA0KPiA+ID4gZ3JvdXAgZm9yIHRoZSBzdXNwZW5kIGJ1ZmZlcg0KPiA+ID4gDQo+
ID4gPiB0aGFuIHNvbWV0aGluZyBpbi1iZXR3ZWVuLiBUaGUgbGF0dGVyIGlzIG1vcmUgYWQtaG9j
IGFuZCBiYXNpY2FsbHkNCj4gPiA+IGtpY2tzIHRoZSBpc3N1ZSB0byB0aGUgdXNlcnNwYWNlLiAg
DQo+ID4gDQo+ID4gSW5kZWVkLCB0aGUgc2Vjb25kIG9wdGlvbiBpcyBtb3JlIGFkLWhvYywgYnV0
IHdoZW4geW91IHRoaW5rIGFib3V0IGl0LA0KPiA+IHVzZXJzcGFjZSBoYXMgdG8gaGF2ZSB0aGlz
IGtub3dsZWRnZSwgYmVjYXVzZSBpdCBuZWVkcyB0byBrbm93IHRoZQ0KPiA+IGRtYS1oZWFwIHRv
IHVzZSBmb3IgYnVmZmVyIGFsbG9jYXRpb24gdGhhdCBjcm9zcyBhIGRldmljZSBib3VuZGFyeQ0K
PiA+IGFueXdheS4gVGhpbmsgYWJvdXQgZnJhbWVzIHByb2R1Y2VkIGJ5IGEgdmlkZW8gZGVjb2Rl
ciwgYW5kIGNvbXBvc2l0ZWQNCj4gPiBieSB0aGUgR1BVIGludG8gYSBwcm90ZWN0ZWQgc2Nhbm91
dCBidWZmZXIgdGhhdCdzIHBhc3NlZCB0byB0aGUgS01TDQo+ID4gZGV2aWNlLiBXaHkgd291bGQg
dGhlIEdQVSBkcml2ZXIgYmUgc291cmNlIG9mIHRydXRoIHdoZW4gaXQgY29tZXMgdG8NCj4gPiBj
aG9vc2luZyB0aGUgaGVhcCB0byB1c2UgdG8gYWxsb2NhdGUgcHJvdGVjdGVkIGJ1ZmZlcnMgZm9y
IHRoZSB2aWRlbw0KPiA+IGRlY29kZXIgb3IgdGhvc2UgdXNlZCBmb3IgdGhlIGRpc3BsYXk/ICAN
Cj4gDQo+IEp1c3QgZnlpLCB0aGUgdHJlbmQgaXMgdG8gZ28gdG8gZGV2aWNlcyBsaXN0aW5nIHRo
ZSBoZWFwcyB1c2Vyc3BhY2UNCj4gc2hvdWxkIGFsbG9jYXRlIGZyb20NCg0KRGV2aWNlcyBsaXN0
aW5nIHRoZSBoZWFwcyB0aGV5IGFyZSBhYmxlIHRvIGltcG9ydCBidWZmZXJzIGZyb20NCih3aXRo
IHRoZSBsaXN0IGJlaW5nIGRpZmZlcmVudCBiYXNlZCBvbiB0aGUgYnVmZmVyIHByb3BlcnRpZXMs
IEkNCmd1ZXNzKSBpcyBhIGdvb2QgdGhpbmcuIFRoaXMgd2F5IHRoZSBjZW50cmFsIGFsbG9jYXRv
ciBpcyBpbiBhIHBvc2l0aW9uDQp3aGVyZSBpdCBjYW4gaW50ZXJzZWN0IHRoZSBkZXZpY2VzIGxp
c3RzIGFuZCBkZWNpZGUgd2hpY2ggaGVhcCB0bw0KYWxsb2NhdGUgZnJvbSBiYXNlZCBvbiBpdHMg
YnVmZmVyIHNoYXJpbmcga25vd2xlZGdlLg0KDQo+IGFuZC9vciB1c2luZyB0aGUgaGVhcHMgaW50
ZXJuYWxseSB0byBhbGxvY2F0ZSB0aGVpcg0KPiBidWZmZXJzLA0KDQpZZXMsIHRoYXQgdG9vLiBG
b3IgaW50ZXJuYWwgYnVmZmVycyAoZXNwZWNpYWxseSB0aGUgZGV2aWNlLXdpZGUgb25lcywNCmxp
a2UgdGhlIHByb3RlY3RlZCBGVyBzZWN0aW9ucyB3ZSB3ZXJlIGRpc2N1c3NpbmcpLCBpdCBtYWtl
cyBzZW5zZSB0bw0KbGVhdmUgdGhhdCB1cCB0byB0aGUgZHJpdmVyLg0KDQo+IHNvIHRoYXQgbGFz
dCBwYXJ0IGlzIHdoZXJlIHdlJ3JlIGhlYWRlZCwgYW5kIGZlZWxzIHRvdGFsbHkNCj4gcmVhc29u
YWJsZSB0byBtZS4NCg0KSnVzdCB0byBiZSBjbGVhciwgbXkgbWFpbiBjb25jZXJuIHJpZ2h0IG5v
dyBpcyBub3QgdGhlIGxvbmcgdGVybSBwbGFuLA0KYnV0IGhvdyByZWFsaXN0aWMgaXQgaXMgdG8g
YXNzdW1lIHdlJ2xsIGhhdmUgYWxsIHRoZSBEVC9kbWFfaGVhcCBwaWVjZXMNCmluIHBsYWNlIGlu
IGEgcmVhc29uYWJsZSBhbW91bnQgb2YgdGltZS4gTG9va2luZyBhdCB0aGUgY3VycmVudCBzdGF0
ZQ0Kb2YgYWZmYWlycyAoYmFzZWQgb24gdGhpcyBwYXRjaHNldCksIGl0IGZlZWxzIGxpa2Ugd2Un
cmUgYSBsb25nIHdheQ0KdGlsbCB3ZSBjYW4gaGF2ZSBhIHJvYnVzdCB3YXkgb2YgZXhwb3Npbmcg
ZG1hX2hlYXBzIHRvIGluLWtlcm5lbCB1c2Vycw0KKHJlZmNvdW50aW5nLCBsaWZldGltZSBpc3N1
ZXMsIGRlc2NyaWJpbmcgYWxsb3dlZCBoZWFwcywgZW5zdXJpbmcgaGVhcHMNCnRydWx5IHByb3Zp
ZGUgYnVmZmVycyB3aXRoIHRoZSBleHBlY3RlZCBwcm9wZXJ0aWVzLCAuLi4pLiBJJ20gY2VydGFp
bmx5DQpub3Qgc2F5aW5nIHRoZXNlIGFyZSBub3QgdmFsaWQgY29uY2VybnMsIGJ1dCBJJ2QgbGlr
ZSB0byBoYXZlIGENCnRlbXBvcmFyeSBzb2x1dGlvbiB0byBzdXBwb3J0IHByb3RlY3RlZCByZW5k
ZXJpbmcgaW4gdGhlIG1lYW50aW1lLi4uDQoNCj4gDQo+IE1heGltZQ0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
