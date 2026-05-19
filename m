Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIhAFuATDGoZVQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:40:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BD99A579408
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:40:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21FB74096B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 07:40:14 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 57817406A1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 07:40:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=b+ErxVrl;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779176402;
	bh=NO+vmHISBoRKaTEO5YEriWd2N0PVf7URQEW8l+FSoO8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=b+ErxVrlXKCkecAO2bHYWT0FIsQ8wkngnlnLu47VjLJ6VokhnGkDbm7/VpjxQrlrA
	 HXvWuPEPLeBCE+Ax773X/jQPMd0I6LduOzKwcZ6w+RSMoolZQ3Aig7grTGPWB13KEa
	 KmhggnjGaaLgCRMkaF+59OxtYi7OxX1JZh9fNZ1xsaEoBlohsIE1OTyDL68CWgePtL
	 6bQANazMuJoc1FLZy+POcxeFfDUVI3w3qH+EkPitqDCpOrLJlfLrHypH49lr4OMN5N
	 WQs13+tY7qL4rpsCc8EI0nTs2oq/6G2VcDQ+oxWIndbicyXemIrDQsRy1iqQxY0+7R
	 Pze5fS6GT+gZw==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4242817E05E5;
	Tue, 19 May 2026 09:40:01 +0200 (CEST)
Date: Tue, 19 May 2026 09:39:55 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Chia-I Wu <olvaffe@gmail.com>
Message-ID: <20260519093955.448ff899@fedora>
In-Reply-To: <CAPaKu7R9ET767qc3eppBUfG2RAeyrg7E-gE0turgp-u_FU4+Vg@mail.gmail.com>
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
	<CAPaKu7R9ET767qc3eppBUfG2RAeyrg7E-gE0turgp-u_FU4+Vg@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 3NN7CHLXNZ4HCXNFGKFYUHGBXRS3JCD3
X-Message-ID-Hash: 3NN7CHLXNZ4HCXNFGKFYUHGBXRS3JCD3
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Liviu Dudau <liviu.dudau@arm.com>, Marcin =?UTF-8?B?xZpsdXNhcno=?= <marcin.slusarz@arm.com>, Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, lin
 ux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3NN7CHLXNZ4HCXNFGKFYUHGBXRS3JCD3/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,collabora.com:email,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: BD99A579408
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAxOCBNYXkgMjAyNiAxNzozNjo0MCAtMDcwMA0KQ2hpYS1JIFd1IDxvbHZhZmZlQGdt
YWlsLmNvbT4gd3JvdGU6DQoNCj4gT24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMTI6MTbigK9BTSBC
b3JpcyBCcmV6aWxsb24NCj4gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZToN
Cj4gPg0KPiA+IE9uIFdlZCwgMTMgTWF5IDIwMjYgMTI6MzE6MzIgLTA3MDANCj4gPiBDaGlhLUkg
V3UgPG9sdmFmZmVAZ21haWwuY29tPiB3cm90ZToNCj4gPiAgDQo+ID4gPiBPbiBUdWUsIE1heSAx
MiwgMjAyNiBhdCA4OjM54oCvQU0gTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+IHdy
b3RlOiAgDQo+ID4gPiA+DQo+ID4gPiA+IE9uIFR1ZSwgTWF5IDEyLCAyMDI2IGF0IDA0OjExOjEx
UE0gKzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZTogIA0KPiA+ID4gPiA+IE9uIFR1ZSwgMTIg
TWF5IDIwMjYgMTQ6NDc6MjcgKzAxMDANCj4gPiA+ID4gPiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVk
YXVAYXJtLmNvbT4gd3JvdGU6DQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ID4gT24gVGh1LCBNYXkg
MDcsIDIwMjYgYXQgMDE6NTM6NTZQTSArMDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOiAgDQo+
ID4gPiA+ID4gPiA+IE9uIFRodSwgNyBNYXkgMjAyNiAxMTowMjoyNiArMDIwMA0KPiA+ID4gPiA+
ID4gPiBNYXJjaW4gxZpsdXNhcnogPG1hcmNpbi5zbHVzYXJ6QGFybS5jb20+IHdyb3RlOg0KPiA+
ID4gPiA+ID4gPiAgDQo+ID4gPiA+ID4gPiA+ID4gT24gVHVlLCBNYXkgMDUsIDIwMjYgYXQgMDY6
MTU6MjNQTSArMDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOiAgDQo+ID4gPiA+ID4gPiA+ID4g
PiA+IEBAIC0yNzcsOSArMjg2LDIxIEBAIGludCBwYW50aG9yX2RldmljZV9pbml0KHN0cnVjdCBw
YW50aG9yX2RldmljZSAqcHRkZXYpDQo+ID4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIHJldDsNCj4gPiA+ID4gPiA+ID4gPiA+ID4gICAgIH0NCj4gPiA+ID4gPiA+
ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgIC8qIElmIGEgcHJvdGVjdGVkIGhlYXAg
bmFtZSBpcyBzcGVjaWZpZWQgYnV0IG5vdCBmb3VuZCwgZGVmZXIgdGhlIHByb2JlIHVudGlsIGNy
ZWF0ZWQgKi8NCj4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgIGlmIChwcm90ZWN0ZWRfaGVhcF9uYW1l
ICYmIHN0cmxlbihwcm90ZWN0ZWRfaGVhcF9uYW1lKSkgeyAgDQo+ID4gPiA+ID4gPiA+ID4gPg0K
PiA+ID4gPiA+ID4gPiA+ID4gRG8gd2UgcmVhbGx5IG5lZWQgdGhpcyBzdHJsZW4oKSA+IDA/IFdv
bid0IGRtYV9oZWFwX2ZpbmQoKSBmYWlsIGlzIHRoZQ0KPiA+ID4gPiA+ID4gPiA+ID4gbmFtZSBp
cyAiIiBhbHJlYWR5PyAgDQo+ID4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gPiBJZiBkbWFf
aGVhcF9maW5kKCkgd2lsbCBmYWlsLCB0aGVuIHRoZSB3aG9sZSBwcm9iZSB3aXRoIGZhaWwgdG9v
Lg0KPiA+ID4gPiA+ID4gPiA+IFRoaXMgY2hlY2sgcHJldmVudHMgdGhhdC4gIA0KPiA+ID4gPiA+
ID4gPg0KPiA+ID4gPiA+ID4gPiBZZWFoLCB0aGF0J3MgYWxzbyBhIHF1ZXN0aW9uYWJsZSBkZXNp
Z24gY2hvaWNlLiBJIG1lYW4sIHdlIGNhbg0KPiA+ID4gPiA+ID4gPiBjdXJyZW50bHkgcHJvYmUg
YW5kIGJvb3QgdGhlIEZXIGV2ZW4gdGhvdWdoIHdlIG5ldmVyIHNldHVwIHRoZQ0KPiA+ID4gPiA+
ID4gPiBwcm90ZWN0ZWQgRlcgc2VjdGlvbnMsIHNvIHdoeSBzaG91bGQgd2UgZGVmZXIgdGhlIHBy
b2JlIGhlcmU/IENhbid0IHdlDQo+ID4gPiA+ID4gPiA+IGp1c3QgcmV0cnkgdGhlIG5leHQgdGlt
ZSBhIGdyb3VwIHdpdGggdGhlIHByb3RlY3RlZCBiaXQgaXMgY3JlYXRlZCBhbmQNCj4gPiA+ID4g
PiA+ID4gZmFpbCBpZiB3ZSBjYW4gZmluZCBhIHByb3RlY3RlZCBoZWFwPyAgDQo+ID4gPiA+ID4g
Pg0KPiA+ID4gPiA+ID4gVGhlIHByb2JsZW0gd2UgaGF2ZSB3aXRoIHRoZSBjdXJyZW50IGZpcm13
YXJlIGlzIHRoYXQgaXQgZG9lcyBhIG51bWJlciBvZiBzZXR1cCBzdGVwcyBhdCAiYm9vdCINCj4g
PiA+ID4gPiA+IHRpbWUgb25seS4gT25lIG9mIHRoZSBzdGVwcyBpcyBwcmVwYXJpbmcgaXRzIGlu
dGVybmFsIHN0cnVjdHVyZXMgZm9yIHdoZW4gaXQgZW50ZXJzIHByb3RlY3RlZA0KPiA+ID4gPiA+
ID4gbW9kZSBhbmQgaXQgc3RvcmVzIHRoZW0gaW4gdGhlIGJ1ZmZlciBwYXNzZWQgaW4gYXQgZmly
bXdhcmUgbG9hZGluZy4gV2UgY2Fubm90IGxhdGVyIHJ1biB0aGUNCj4gPiA+ID4gPiA+IHByb2Nl
c3Mgd2hlbiB3ZSBoYXZlIGEgZ3JvdXAgd2l0aCBwcm90ZWN0ZWQgbW9kZSBzZXQuICANCj4gPiA+
ID4gPg0KPiA+ID4gPiA+IE5vLCBidXQgd2UgY2FuIGZvcmNlIGEgZnVsbC9zbG93IHJlc2V0IGFu
ZCBoYXZlIHRoYXQgdGhpbmcNCj4gPiA+ID4gPiByZS1pbml0aWFsaXplZCwgY2FuJ3Qgd2U/IEkg
bWVhbiwgdGhhdCdzIGJhc2ljYWxseSB3aGF0IHdlIGRvIHdoZW4gYQ0KPiA+ID4gPiA+IGZhc3Qg
cmVzZXQgZmFpbHM6IHdlIHJlLWluaXRpYWxpemUgYWxsIHRoZSBzZWN0aW9ucyBhbmQgcmVzZXQg
YWdhaW4sIGF0DQo+ID4gPiA+ID4gd2hpY2ggcG9pbnQgdGhlIEZXIHNob3VsZCBzdGFydCBmcm9t
IGEgZnJlc2ggc3RhdGUsIGFuZCBiZSBhYmxlIHRvDQo+ID4gPiA+ID4gcHJvcGVybHkgaW5pdGlh
bGl6ZSB0aGUgcHJvdGVjdGVkLXJlbGF0ZWQgc3R1ZmYgaWYgcHJvdGVjdGVkIHNlY3Rpb25zDQo+
ID4gPiA+ID4gYXJlIHBvcHVsYXRlZC4gQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8gIA0KPiA+ID4g
Pg0KPiA+ID4gPiBSaWdodCwgd2UgY2FuIGRvIHRoYXQuIEZvciBzb21lIHJlYXNvbiBJIGtlZXAg
YXNzb2NpYXRpbmcgdGhlIHJlc2V0IHdpdGggdGhlDQo+ID4gPiA+IGVycm9yIGhhbmRsaW5nIGFu
ZCBub3Qgd2l0aCAibm9ybWFsIiBvcGVyYXRpb25zLiAgDQo+ID4gPiBJIGtpbmQgb2YgaG9wZSB3
ZSBlbmQgdXAgd2l0aCBlaXRoZXINCj4gPiA+DQo+ID4gPiAgLSBwYW50aG9yIGtub3dzIHRoZSBl
eGFjdCBoZWFwIHRvIHVzZSBhbmQgZmFpbHMgd2l0aCBFUFJPQkVfREVGRVIgaWYNCj4gPiA+IHRo
ZSBoZWFwIGlzIG1pc3NpbmcsIG9yDQo+ID4gPiAgLSBwYW50aG9yIGdldHMgYSBkbWEtYnVmIGZy
b20gdXNlcnNwYWNlIGFuZCBkb2VzIHRoZSBmdWxsIHJlc2V0DQo+ID4gPiAgICAtIHVzZXJzcGFj
ZSBhbHNvIG5lZWRzIHRvIHByb3ZpZGUgYSBkbWEtYnVmIGZvciBlYWNoIHByb3RlY3RlZA0KPiA+
ID4gZ3JvdXAgZm9yIHRoZSBzdXNwZW5kIGJ1ZmZlcg0KPiA+ID4NCj4gPiA+IHRoYW4gc29tZXRo
aW5nIGluLWJldHdlZW4uIFRoZSBsYXR0ZXIgaXMgbW9yZSBhZC1ob2MgYW5kIGJhc2ljYWxseQ0K
PiA+ID4ga2lja3MgdGhlIGlzc3VlIHRvIHRoZSB1c2Vyc3BhY2UuICANCj4gPg0KPiA+IEluZGVl
ZCwgdGhlIHNlY29uZCBvcHRpb24gaXMgbW9yZSBhZC1ob2MsIGJ1dCB3aGVuIHlvdSB0aGluayBh
Ym91dCBpdCwNCj4gPiB1c2Vyc3BhY2UgaGFzIHRvIGhhdmUgdGhpcyBrbm93bGVkZ2UsIGJlY2F1
c2UgaXQgbmVlZHMgdG8ga25vdyB0aGUNCj4gPiBkbWEtaGVhcCB0byB1c2UgZm9yIGJ1ZmZlciBh
bGxvY2F0aW9uIHRoYXQgY3Jvc3MgYSBkZXZpY2UgYm91bmRhcnkNCj4gPiBhbnl3YXkuIFRoaW5r
IGFib3V0IGZyYW1lcyBwcm9kdWNlZCBieSBhIHZpZGVvIGRlY29kZXIsIGFuZCBjb21wb3NpdGVk
DQo+ID4gYnkgdGhlIEdQVSBpbnRvIGEgcHJvdGVjdGVkIHNjYW5vdXQgYnVmZmVyIHRoYXQncyBw
YXNzZWQgdG8gdGhlIEtNUw0KPiA+IGRldmljZS4gV2h5IHdvdWxkIHRoZSBHUFUgZHJpdmVyIGJl
IHNvdXJjZSBvZiB0cnV0aCB3aGVuIGl0IGNvbWVzIHRvDQo+ID4gY2hvb3NpbmcgdGhlIGhlYXAg
dG8gdXNlIHRvIGFsbG9jYXRlIHByb3RlY3RlZCBidWZmZXJzIGZvciB0aGUgdmlkZW8NCj4gPiBk
ZWNvZGVyIG9yIHRob3NlIHVzZWQgZm9yIHRoZSBkaXNwbGF5PyAgDQo+IEkgZG9uJ3QgdGhpbmsg
dGhlIEdQVSBkcml2ZXIgaXMgZXZlciB0aGUgc291cmNlIG9mIHRydXRoLiBJZiB0aGUNCj4gc3lz
dGVtIGludGVncmF0b3Igd2FudHMgdG8gc3BlY2lmeSB0aGUgc291cmNlIG9mIHRydXRoIChTb1Qp
IGZyb20NCj4ga2VybmVsIHNwYWNlLCB0aGV5IHNob3VsZCB1c2UgdGhlIGRldmljZSB0cmVlIChv
ciBtb2R1bGUgcGFyYW1zIC8NCj4gY29uZmlnIG9wdGlvbnMpLiBJZiB0aGV5IHdhbnQgdG8gc3Bl
Y2lmeSB0aGUgU29UIGluIHVzZXJzcGFjZSwgdGhlbiB3ZQ0KPiBkb24ndCByZWFsbHkgY2FyZSBo
b3cgaXQgaXMgZG9uZSBvdGhlciB0aGFuIHByb3ZpZGluZyBhbiBpb2N0bC4NCj4gUGFudGhvciBp
cyBhbHdheXMgb24gdGhlIHJlY2VpdmluZyBlbmQuDQoNCk9rYXksIHdlJ3JlIG9uIHRoZSBzYW1l
IHBhZ2UgdGhlbi4NCg0KPiANCj4gSWYgd2UgZG9uJ3Qgd2FudCB0byBkZWxheSB0aGlzIGZ1bmN0
aW9uYWxpdHksIGJ1dCBpdCB0YWtlcyB0aW1lIHRvDQo+IGNvbnZlcmdlIG9uIFNvVCwgbWF5YmUg
YSBzb2x1dGlvbiB0aGF0IGlzIG5vdCBhIGxvbmctdGVybSBwcm9taXNlIGNhbg0KPiB3b3JrPyBP
ZiB0aGUgb3B0aW9ucyBvbiB0aGUgdGFibGUgKGR0LCBtb2R1bGUgcGFyYW1zLCBrY29uZmlnIG9w
dGlvbnMsDQo+IGlvY3RscyksIGEga2NvbmZpZyBvcHRpb24sIHBvdGVudGlhbGx5IG1hcmtlZCBh
cyBleHBlcmltZW50YWwsIHNlZW1zDQo+IGxpa2UgYSBnb29kIGNhbmRpZGF0ZS4NCg0KSWYgUGFu
dGhvciBpcyBvbmx5IGEgY29uc3VtZXIsIEkgYWN0dWFsbHkgdGhpbmsgaXQnZCBiZSBlYXNpZXIg
dG8ganVzdA0KbGV0IHVzZXJzcGFjZSBwYXNzIHRoZSBwcm90ZWN0ZWQgRlcgc2VjdGlvbiBhcyBh
biBpbXBvcnRlZCBidWZmZXINCnRocm91Z2ggYW4gaW9jdGwgZm9yIG5vdy4gSXQgbWVhbnMgd2Ug
ZG9uJ3QgbmVlZCBhbnkgb2YgdGhlDQptb2RpZmljYXRpb25zIHRvIHRoZSBkbWFfaGVhcCBBUEkg
aW4gdGhpcyBzZXJpZXMsIGFuZCB1c2Vyc3BhY2UgaXMgZnJlZQ0KdG8gY2hvb3NlIGl0cyBTb1Qg
KGVmdXNlLCBEVCwgLi4uKSBhbmQgcGFzcyB0aGUgaW5mbyBiYWNrIHRvIG1lc2EvR0JNDQpzb21l
aG93IChlbnZ2YXIsIGRyaWNvbmYsIC4uLikuIFRoZSBvbmx5IHRoaW5nIHdlIG5lZWQgdG8gZW5z
dXJlIGlzIGlmDQpsYXp5IHByb3RlY3RlZCBGVyBzZWN0aW9uIGFsbG9jYXRpb24gaXMgZ29pbmcg
dG8gd29yaywgYnV0IGdpdmVuIHRoZQ0KY3VycmVudCBjb2RlIHB1cmVseSBhbmQgc2ltcGx5IGln
bm9yZXMgdGhvc2Ugc2VjdGlvbnMsIGFuZCB0aGUgRlcgaXMNCnN0aWxsIGFibGUgdG8gYm9vdCBh
bmQgYWN0IHByb3Blcmx5IChhdCBsZWFzdCBvbiB2MTAtdjEzKSwgSSdtIHByZXR0eQ0KY29uZmlk
ZW50IHRoaXMgaXMgb2theSwgdW5sZXNzIHRoZXJlJ3Mgc29tZSB0cmljayB0aGUgTUNVIGNhbiBk
byB0bw0KZGV0ZWN0IHRoYXQgdGhlIHByb3RlY3RlZCBzZWN0aW9uIGlzbid0IG1hcHBlZCAod2hp
Y2ggSSBkb3VidCwgYmVjYXVzZQ0KdGhlIE1DVSBkb2Vzbid0IGtub3cgaXQgbGl2ZXMgYmVoaW5k
IGFuIE1NVSkuDQoNCk9mIGNvdXJzZSwgb25jZSB3ZSBoYXZlIGEgY29uc2Vuc3VzIG9uIGhvdyB0
byBkZXNjcmliZSB0aGlzIGluIHRoZSBEVCwNCndlIGNhbiBzd2l0Y2ggUGFudGhvciBvdmVyIHRv
ICJwcm90ZWN0ZWQgZG1hX2hlYXAgc2VsZWN0aW9uIHRocm91Z2ggRFQiLA0KYW5kIHJlZmxlY3Qg
dGhhdCB0aHJvdWdoIHRoZSBpb2N0bCB0aGF0IGV4cG9zZXMgd2hldGhlciBwcm90ZWN0ZWQNCnN1
cHBvcnQgaXMgcmVhZHkgb3Igbm90ICh3b3VsZCBiZSBhIERFVl9RVUVSWSksIHN1Y2ggdGhhdCB1
c2Vyc3BhY2UgY2FuDQpza2lwIHRoaXMgIlBST1RNIGluaXRpYWxpemF0aW9uIiBzdGVwLg0KDQpX
ZSdyZSB0YWxraW5nIGFib3V0IGFuIGV4dHJhIGlvY3RsIHRvIHNldCB0aG9zZSBidWZmZXJzLCBh
bmQgYQ0KREVWX1FVRVJZIHRvIHF1ZXJ5IHRoZSBzdGF0ZSAocmVhZHkgb3Igbm90KSwgdGhlIHNp
emUgb2YgdGhlIGdsb2JhbA0KcHJvdGVjdGVkIGJ1ZmZlciAocHJvdGVjdGVkIEZXIHNlY3Rpb24p
IGFuZCB0aGUgc2l6ZSBvZiB0aGUgcHJvdGVjdGVkDQpzdXNwZW5kIGJ1ZmZlci4gVGhlIHByb3Rl
Y3RlZCBzdXNwZW5kIGJ1ZmZlciB3b3VsZCBiZSBhbGxvY2F0ZWQgYW5kDQpwYXNzZWQgYXQgZ3Jv
dXAgY3JlYXRpb24gdGltZSAoZXh0cmEgYXJnIHBhc3NlZCB0byB0aGUgZXhpc3RpbmcNCkdST1VQ
X0NSRUFURSBpb2N0bCkuIFNvLCBvdmVyYWxsLCBJIGRvbid0IGNvbnNpZGVyIGl0IGEgaHVnZSBs
aWFiaWxpdHkNCmluIHRlcm0gb2YgbWFpbnRlbmFuY2UgY29zdC4NCg0KPiANCj4gPiAgDQo+ID4g
Pg0KPiA+ID4gRm9yIHRoZSBmb3JtZXIsIGV4cHJlc3NpbmcgdGhlIHJlbGF0aW9uIGluIERUIHNl
ZW1zIHRvIGJlIHRoZSBiZXN0LA0KPiA+ID4gYnV0IG9ubHkgaWYgcG9zc2libGUgOi0pLiBPdGhl
cndpc2UsIGEga2NvbmZpZyBvcHRpb24gKGluc3RlYWQgb2YNCj4gPiA+IG1vZHVsZSBwYXJhbSkg
c2hvdWxkIGJlIGVhc2llciB0byB3b3JrIHdpdGguDQo+ID4gPg0KPiA+ID4gTG9va2luZyBhdCB0
aGUgdXNlcnNwYWNlIGltcGxlbWVudGF0aW9uLCBjYW4gd2UgYWxzbyBoYXZlIGFuIHBhbnRob3IN
Cj4gPiA+IGlvY3RsIHRvIHJldHVybiB0aGUgaGVhcCB0byB1c2Vyc3BhY2U/ICANCj4gPg0KPiA+
IFllcywgaXQncyBzb21ldGhpbmcgd2UgY2FuIGFkZCwgYnV0IGFnYWluLCBJJ20gcXVlc3Rpb25p
bmcgdGhlDQo+ID4gdXNlZnVsbmVzcyBvZiB0aGlzOiBob3cgY2FuIHdlIGVuc3VyZSB0aGUgaGVh
cCB1c2VkIGJ5IHBhbnRob3IgdG8NCj4gPiBhbGxvY2F0ZSBpdHMgcHJvdGVjdGVkIEZXIGJ1ZmZl
cnMgaXMgc3VpdGFibGUgZm9yIHNjYW5vdXQgYnVmZmVycw0KPiA+IChidWZmZXJzIHRoYXQgY2Fu
IGJlIHVzZWQgYnkgZGlzcGxheSBkcml2ZXJzKS4gVGhlcmUgbmVlZHMgdG8gYmUgYSBnbHVlDQo+
ID4gbGVhdmluZyBpbiB1c2Vyc2xhbmQgYW5kIHRha2luZyB0aGUgZGVjaXNpb24sIGFuZCBJJ20g
bm90IHRvbyBzdXJlDQo+ID4gdHJ1c3RpbmcgYW55IG9mIHRoZSBjb21wb25lbnQgaW4gdGhlIGNo
YWluICh2ZGVjLCBncHUsIGRpc3BsYXkpIGlzIHRoZQ0KPiA+IHJpZ2h0IHRoaW5nIHRvIGRvLiAg
DQo+IFRoZSBoZWFwIHJldHVybmVkIGJ5IHBhbnRob3IgaXMgb25seSBmb3IgcGFuZnJvc3QvcGFu
dmsuIEl0IHNheXMNCj4gbm90aGluZyBhYm91dCBjb21wYXRpYmlsaXR5IHdpdGggb3RoZXIgY29t
cG9uZW50cyBvbiB0aGUgc3lzdGVtLg0KDQpPa2F5LCBpZiBpdCdzIHVzZWQgb25seSBmb3IgaW50
ZXJuYWwgYnVmZmVycywgSSBndWVzcyB0aGF0J3MgZmluZS4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
