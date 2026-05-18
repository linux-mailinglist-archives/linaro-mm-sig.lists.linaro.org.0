Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GV+C/S8CmqF7AQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:17:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEE05674F3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:17:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 913B24051A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 07:17:06 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 5071740475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 07:16:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b="Ro/navyn";
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779088614;
	bh=KqXz31fFcllBghfI8pU+i0+gahHJxk311r9iPzSXzpE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Ro/navyn0/DVaD7IcAs2bwN9U0+qbMBiTf0oUjhMcD0ROwgB/USIvQN1YZMsz174L
	 qBnN+vWuGWz1lVeR2jYgmElu1mjPxSMMGXIGAjsej3MU7FVBjkaUWJZstMBCZOlCyO
	 Lv4cAJJONcuvfiREYLHFMuSa+lE3sWIqJRj8ubGV6P0FReLdNK4Fk54j0akWhe7mYb
	 Ym19npygDaWlq5bpJbStix+kkZv9vaF6FznF0nLYxsVhvf2siW6oSF6AwFgJReakda
	 iiCScxbzTpDsRQNchfi+ZPOY5WefpAq+Cs+QuebRutmtjhkxc98uX1vYr3I/U2XKv+
	 5Ebczo3CckW+Q==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BDEFE17E04E2;
	Mon, 18 May 2026 09:16:53 +0200 (CEST)
Date: Mon, 18 May 2026 09:16:50 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Chia-I Wu <olvaffe@gmail.com>
Message-ID: <20260518091650.5a7a4f4a@fedora>
In-Reply-To: <CAPaKu7QC7FdjL6m_OSb+E5aYKs6bmT-9DAHc5PC=XctCmRph2Q@mail.gmail.com>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
	<20260505140516.1372388-5-ketil.johnsen@arm.com>
	<20260505181523.49a3d85c@fedora>
	<afxVIuVVPisBQ9p_@e129842.arm.com>
	<20260507135356.5428d50d@fedora>
	<agMvb_jeRsO7tSS-@e142607>
	<20260512161111.0cb7000e@fedora>
	<agNJasayW8VCHTiU@e142607>
	<CAPaKu7QC7FdjL6m_OSb+E5aYKs6bmT-9DAHc5PC=XctCmRph2Q@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: VTMUEZMQOPTT4PRFY7BMPYCUY7J6Q6WB
X-Message-ID-Hash: VTMUEZMQOPTT4PRFY7BMPYCUY7J6Q6WB
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Liviu Dudau <liviu.dudau@arm.com>, Marcin =?UTF-8?B?xZpsdXNhcno=?= <marcin.slusarz@arm.com>, Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, lin
 ux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VTMUEZMQOPTT4PRFY7BMPYCUY7J6Q6WB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: BFEE05674F3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.776];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gV2VkLCAxMyBNYXkgMjAyNiAxMjozMTozMiAtMDcwMA0KQ2hpYS1JIFd1IDxvbHZhZmZlQGdt
YWlsLmNvbT4gd3JvdGU6DQoNCj4gT24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgODozOeKAr0FNIExp
dml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPiB3cm90ZToNCj4gPg0KPiA+IE9uIFR1ZSwg
TWF5IDEyLCAyMDI2IGF0IDA0OjExOjExUE0gKzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZTog
IA0KPiA+ID4gT24gVHVlLCAxMiBNYXkgMjAyNiAxNDo0NzoyNyArMDEwMA0KPiA+ID4gTGl2aXUg
RHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+IHdyb3RlOg0KPiA+ID4gIA0KPiA+ID4gPiBPbiBU
aHUsIE1heSAwNywgMjAyNiBhdCAwMTo1Mzo1NlBNICswMjAwLCBCb3JpcyBCcmV6aWxsb24gd3Jv
dGU6ICANCj4gPiA+ID4gPiBPbiBUaHUsIDcgTWF5IDIwMjYgMTE6MDI6MjYgKzAyMDANCj4gPiA+
ID4gPiBNYXJjaW4gxZpsdXNhcnogPG1hcmNpbi5zbHVzYXJ6QGFybS5jb20+IHdyb3RlOg0KPiA+
ID4gPiA+ICANCj4gPiA+ID4gPiA+IE9uIFR1ZSwgTWF5IDA1LCAyMDI2IGF0IDA2OjE1OjIzUE0g
KzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZTogIA0KPiA+ID4gPiA+ID4gPiA+IEBAIC0yNzcs
OSArMjg2LDIxIEBAIGludCBwYW50aG9yX2RldmljZV9pbml0KHN0cnVjdCBwYW50aG9yX2Rldmlj
ZSAqcHRkZXYpDQo+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0
Ow0KPiA+ID4gPiA+ID4gPiA+ICAgICB9DQo+ID4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4g
PiArICAgLyogSWYgYSBwcm90ZWN0ZWQgaGVhcCBuYW1lIGlzIHNwZWNpZmllZCBidXQgbm90IGZv
dW5kLCBkZWZlciB0aGUgcHJvYmUgdW50aWwgY3JlYXRlZCAqLw0KPiA+ID4gPiA+ID4gPiA+ICsg
ICBpZiAocHJvdGVjdGVkX2hlYXBfbmFtZSAmJiBzdHJsZW4ocHJvdGVjdGVkX2hlYXBfbmFtZSkp
IHsgIA0KPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiBEbyB3ZSByZWFsbHkgbmVlZCB0aGlz
IHN0cmxlbigpID4gMD8gV29uJ3QgZG1hX2hlYXBfZmluZCgpIGZhaWwgaXMgdGhlDQo+ID4gPiA+
ID4gPiA+IG5hbWUgaXMgIiIgYWxyZWFkeT8gIA0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IElm
IGRtYV9oZWFwX2ZpbmQoKSB3aWxsIGZhaWwsIHRoZW4gdGhlIHdob2xlIHByb2JlIHdpdGggZmFp
bCB0b28uDQo+ID4gPiA+ID4gPiBUaGlzIGNoZWNrIHByZXZlbnRzIHRoYXQuICANCj4gPiA+ID4g
Pg0KPiA+ID4gPiA+IFllYWgsIHRoYXQncyBhbHNvIGEgcXVlc3Rpb25hYmxlIGRlc2lnbiBjaG9p
Y2UuIEkgbWVhbiwgd2UgY2FuDQo+ID4gPiA+ID4gY3VycmVudGx5IHByb2JlIGFuZCBib290IHRo
ZSBGVyBldmVuIHRob3VnaCB3ZSBuZXZlciBzZXR1cCB0aGUNCj4gPiA+ID4gPiBwcm90ZWN0ZWQg
Rlcgc2VjdGlvbnMsIHNvIHdoeSBzaG91bGQgd2UgZGVmZXIgdGhlIHByb2JlIGhlcmU/IENhbid0
IHdlDQo+ID4gPiA+ID4ganVzdCByZXRyeSB0aGUgbmV4dCB0aW1lIGEgZ3JvdXAgd2l0aCB0aGUg
cHJvdGVjdGVkIGJpdCBpcyBjcmVhdGVkIGFuZA0KPiA+ID4gPiA+IGZhaWwgaWYgd2UgY2FuIGZp
bmQgYSBwcm90ZWN0ZWQgaGVhcD8gIA0KPiA+ID4gPg0KPiA+ID4gPiBUaGUgcHJvYmxlbSB3ZSBo
YXZlIHdpdGggdGhlIGN1cnJlbnQgZmlybXdhcmUgaXMgdGhhdCBpdCBkb2VzIGEgbnVtYmVyIG9m
IHNldHVwIHN0ZXBzIGF0ICJib290Ig0KPiA+ID4gPiB0aW1lIG9ubHkuIE9uZSBvZiB0aGUgc3Rl
cHMgaXMgcHJlcGFyaW5nIGl0cyBpbnRlcm5hbCBzdHJ1Y3R1cmVzIGZvciB3aGVuIGl0IGVudGVy
cyBwcm90ZWN0ZWQNCj4gPiA+ID4gbW9kZSBhbmQgaXQgc3RvcmVzIHRoZW0gaW4gdGhlIGJ1ZmZl
ciBwYXNzZWQgaW4gYXQgZmlybXdhcmUgbG9hZGluZy4gV2UgY2Fubm90IGxhdGVyIHJ1biB0aGUN
Cj4gPiA+ID4gcHJvY2VzcyB3aGVuIHdlIGhhdmUgYSBncm91cCB3aXRoIHByb3RlY3RlZCBtb2Rl
IHNldC4gIA0KPiA+ID4NCj4gPiA+IE5vLCBidXQgd2UgY2FuIGZvcmNlIGEgZnVsbC9zbG93IHJl
c2V0IGFuZCBoYXZlIHRoYXQgdGhpbmcNCj4gPiA+IHJlLWluaXRpYWxpemVkLCBjYW4ndCB3ZT8g
SSBtZWFuLCB0aGF0J3MgYmFzaWNhbGx5IHdoYXQgd2UgZG8gd2hlbiBhDQo+ID4gPiBmYXN0IHJl
c2V0IGZhaWxzOiB3ZSByZS1pbml0aWFsaXplIGFsbCB0aGUgc2VjdGlvbnMgYW5kIHJlc2V0IGFn
YWluLCBhdA0KPiA+ID4gd2hpY2ggcG9pbnQgdGhlIEZXIHNob3VsZCBzdGFydCBmcm9tIGEgZnJl
c2ggc3RhdGUsIGFuZCBiZSBhYmxlIHRvDQo+ID4gPiBwcm9wZXJseSBpbml0aWFsaXplIHRoZSBw
cm90ZWN0ZWQtcmVsYXRlZCBzdHVmZiBpZiBwcm90ZWN0ZWQgc2VjdGlvbnMNCj4gPiA+IGFyZSBw
b3B1bGF0ZWQuIEFtIEkgbWlzc2luZyBzb21ldGhpbmc/ICANCj4gPg0KPiA+IFJpZ2h0LCB3ZSBj
YW4gZG8gdGhhdC4gRm9yIHNvbWUgcmVhc29uIEkga2VlcCBhc3NvY2lhdGluZyB0aGUgcmVzZXQg
d2l0aCB0aGUNCj4gPiBlcnJvciBoYW5kbGluZyBhbmQgbm90IHdpdGggIm5vcm1hbCIgb3BlcmF0
aW9ucy4gIA0KPiBJIGtpbmQgb2YgaG9wZSB3ZSBlbmQgdXAgd2l0aCBlaXRoZXINCj4gDQo+ICAt
IHBhbnRob3Iga25vd3MgdGhlIGV4YWN0IGhlYXAgdG8gdXNlIGFuZCBmYWlscyB3aXRoIEVQUk9C
RV9ERUZFUiBpZg0KPiB0aGUgaGVhcCBpcyBtaXNzaW5nLCBvcg0KPiAgLSBwYW50aG9yIGdldHMg
YSBkbWEtYnVmIGZyb20gdXNlcnNwYWNlIGFuZCBkb2VzIHRoZSBmdWxsIHJlc2V0DQo+ICAgIC0g
dXNlcnNwYWNlIGFsc28gbmVlZHMgdG8gcHJvdmlkZSBhIGRtYS1idWYgZm9yIGVhY2ggcHJvdGVj
dGVkDQo+IGdyb3VwIGZvciB0aGUgc3VzcGVuZCBidWZmZXINCj4gDQo+IHRoYW4gc29tZXRoaW5n
IGluLWJldHdlZW4uIFRoZSBsYXR0ZXIgaXMgbW9yZSBhZC1ob2MgYW5kIGJhc2ljYWxseQ0KPiBr
aWNrcyB0aGUgaXNzdWUgdG8gdGhlIHVzZXJzcGFjZS4NCg0KSW5kZWVkLCB0aGUgc2Vjb25kIG9w
dGlvbiBpcyBtb3JlIGFkLWhvYywgYnV0IHdoZW4geW91IHRoaW5rIGFib3V0IGl0LA0KdXNlcnNw
YWNlIGhhcyB0byBoYXZlIHRoaXMga25vd2xlZGdlLCBiZWNhdXNlIGl0IG5lZWRzIHRvIGtub3cg
dGhlDQpkbWEtaGVhcCB0byB1c2UgZm9yIGJ1ZmZlciBhbGxvY2F0aW9uIHRoYXQgY3Jvc3MgYSBk
ZXZpY2UgYm91bmRhcnkNCmFueXdheS4gVGhpbmsgYWJvdXQgZnJhbWVzIHByb2R1Y2VkIGJ5IGEg
dmlkZW8gZGVjb2RlciwgYW5kIGNvbXBvc2l0ZWQNCmJ5IHRoZSBHUFUgaW50byBhIHByb3RlY3Rl
ZCBzY2Fub3V0IGJ1ZmZlciB0aGF0J3MgcGFzc2VkIHRvIHRoZSBLTVMNCmRldmljZS4gV2h5IHdv
dWxkIHRoZSBHUFUgZHJpdmVyIGJlIHNvdXJjZSBvZiB0cnV0aCB3aGVuIGl0IGNvbWVzIHRvDQpj
aG9vc2luZyB0aGUgaGVhcCB0byB1c2UgdG8gYWxsb2NhdGUgcHJvdGVjdGVkIGJ1ZmZlcnMgZm9y
IHRoZSB2aWRlbw0KZGVjb2RlciBvciB0aG9zZSB1c2VkIGZvciB0aGUgZGlzcGxheT8NCg0KPiAN
Cj4gRm9yIHRoZSBmb3JtZXIsIGV4cHJlc3NpbmcgdGhlIHJlbGF0aW9uIGluIERUIHNlZW1zIHRv
IGJlIHRoZSBiZXN0LA0KPiBidXQgb25seSBpZiBwb3NzaWJsZSA6LSkuIE90aGVyd2lzZSwgYSBr
Y29uZmlnIG9wdGlvbiAoaW5zdGVhZCBvZg0KPiBtb2R1bGUgcGFyYW0pIHNob3VsZCBiZSBlYXNp
ZXIgdG8gd29yayB3aXRoLg0KPiANCj4gTG9va2luZyBhdCB0aGUgdXNlcnNwYWNlIGltcGxlbWVu
dGF0aW9uLCBjYW4gd2UgYWxzbyBoYXZlIGFuIHBhbnRob3INCj4gaW9jdGwgdG8gcmV0dXJuIHRo
ZSBoZWFwIHRvIHVzZXJzcGFjZT8NCg0KWWVzLCBpdCdzIHNvbWV0aGluZyB3ZSBjYW4gYWRkLCBi
dXQgYWdhaW4sIEknbSBxdWVzdGlvbmluZyB0aGUNCnVzZWZ1bG5lc3Mgb2YgdGhpczogaG93IGNh
biB3ZSBlbnN1cmUgdGhlIGhlYXAgdXNlZCBieSBwYW50aG9yIHRvDQphbGxvY2F0ZSBpdHMgcHJv
dGVjdGVkIEZXIGJ1ZmZlcnMgaXMgc3VpdGFibGUgZm9yIHNjYW5vdXQgYnVmZmVycw0KKGJ1ZmZl
cnMgdGhhdCBjYW4gYmUgdXNlZCBieSBkaXNwbGF5IGRyaXZlcnMpLiBUaGVyZSBuZWVkcyB0byBi
ZSBhIGdsdWUNCmxlYXZpbmcgaW4gdXNlcnNsYW5kIGFuZCB0YWtpbmcgdGhlIGRlY2lzaW9uLCBh
bmQgSSdtIG5vdCB0b28gc3VyZQ0KdHJ1c3RpbmcgYW55IG9mIHRoZSBjb21wb25lbnQgaW4gdGhl
IGNoYWluICh2ZGVjLCBncHUsIGRpc3BsYXkpIGlzIHRoZQ0KcmlnaHQgdGhpbmcgdG8gZG8uDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
