Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJw5IhaeDGq8jwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 19:29:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EE209583163
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 19:29:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FBF43F6B6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 17:29:56 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 60ACD3F6B6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 17:29:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=CcXO6GZ+;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779211776;
	bh=KD0GOi9c8kuCzvfBSg/EAGaV+3IxmyoTnkrkk0bXqls=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=CcXO6GZ+H0Yjwf2NfeGPjK2m5QdX4F7pB/lCTm0hp16n1jzasLMSmzlO+ssQnG32w
	 tpwSW7KdB2mEhkFn2Wak83FFtLUHUNc466wT01RwJHY6cwswBPeFvsIifMmJUlAcKY
	 Y64WqyXLCsRUsr5lAo3EyKk944rP77AxapGYeIifjJPKxk1+ZvZPcfzyCXiFLoFkH2
	 XTYDNA4db8cMBjjXOIApizmud9+VBfWGzaOF5zDgprg+mNHh7swRWmtTVEtEsdNCkX
	 NhndFC23jyw/0vQR1Y1/Ol011CnTiq9KfWXFMtFQL7LQrsfpgbgt415c3VYvFI3QQq
	 SkHpyO2sfyIwg==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8F14B17E125C;
	Tue, 19 May 2026 19:29:35 +0200 (CEST)
Date: Tue, 19 May 2026 19:29:30 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Chia-I Wu <olvaffe@gmail.com>
Message-ID: <20260519192930.3873accb@fedora>
In-Reply-To: <CAPaKu7T7JZRmsS+D_3zFZtyhJk9mNXjL=xpAQ-UNGbm0vztyRg@mail.gmail.com>
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
	<20260519093955.448ff899@fedora>
	<8f0b1750-a853-4895-9672-73a75f6dbd84@arm.com>
	<CAPaKu7T7JZRmsS+D_3zFZtyhJk9mNXjL=xpAQ-UNGbm0vztyRg@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: A6ZVOVRNNLAQAWOFYWP3VPVWQ6EB7CD2
X-Message-ID-Hash: A6ZVOVRNNLAQAWOFYWP3VPVWQ6EB7CD2
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Ketil Johnsen <ketil.johnsen@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Marcin =?UTF-8?B?xZpsdXNhcno=?= <marcin.slusarz@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, lin
 ux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A6ZVOVRNNLAQAWOFYWP3VPVWQ6EB7CD2/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,arm.com:email,collabora.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: EE209583163
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAxOSBNYXkgMjAyNiAxMDowNzowMiAtMDcwMA0KQ2hpYS1JIFd1IDxvbHZhZmZlQGdt
YWlsLmNvbT4gd3JvdGU6DQoNCj4gT24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMTo0OeKAr0FNIEtl
dGlsIEpvaG5zZW4gPGtldGlsLmpvaG5zZW5AYXJtLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiAx
OS8wNS8yMDI2IDA5OjM5LCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6ICANCj4gPiA+IE9uIE1vbiwg
MTggTWF5IDIwMjYgMTc6MzY6NDAgLTA3MDANCj4gPiA+IENoaWEtSSBXdSA8b2x2YWZmZUBnbWFp
bC5jb20+IHdyb3RlOg0KPiA+ID4gIA0KPiA+ID4+IE9uIE1vbiwgTWF5IDE4LCAyMDI2IGF0IDEy
OjE24oCvQU0gQm9yaXMgQnJlemlsbG9uDQo+ID4gPj4gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJv
cmEuY29tPiB3cm90ZTogIA0KPiA+ID4+Pg0KPiA+ID4+PiBPbiBXZWQsIDEzIE1heSAyMDI2IDEy
OjMxOjMyIC0wNzAwDQo+ID4gPj4+IENoaWEtSSBXdSA8b2x2YWZmZUBnbWFpbC5jb20+IHdyb3Rl
Og0KPiA+ID4+PiAgDQo+ID4gPj4+PiBPbiBUdWUsIE1heSAxMiwgMjAyNiBhdCA4OjM54oCvQU0g
TGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+IHdyb3RlOiAgDQo+ID4gPj4+Pj4NCj4g
PiA+Pj4+PiBPbiBUdWUsIE1heSAxMiwgMjAyNiBhdCAwNDoxMToxMVBNICswMjAwLCBCb3JpcyBC
cmV6aWxsb24gd3JvdGU6ICANCj4gPiA+Pj4+Pj4gT24gVHVlLCAxMiBNYXkgMjAyNiAxNDo0Nzoy
NyArMDEwMA0KPiA+ID4+Pj4+PiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4gd3Jv
dGU6DQo+ID4gPj4+Pj4+ICANCj4gPiA+Pj4+Pj4+IE9uIFRodSwgTWF5IDA3LCAyMDI2IGF0IDAx
OjUzOjU2UE0gKzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZTogIA0KPiA+ID4+Pj4+Pj4+IE9u
IFRodSwgNyBNYXkgMjAyNiAxMTowMjoyNiArMDIwMA0KPiA+ID4+Pj4+Pj4+IE1hcmNpbiDFmmx1
c2FyeiA8bWFyY2luLnNsdXNhcnpAYXJtLmNvbT4gd3JvdGU6DQo+ID4gPj4+Pj4+Pj4gIA0KPiA+
ID4+Pj4+Pj4+PiBPbiBUdWUsIE1heSAwNSwgMjAyNiBhdCAwNjoxNToyM1BNICswMjAwLCBCb3Jp
cyBCcmV6aWxsb24gd3JvdGU6ICANCj4gPiA+Pj4+Pj4+Pj4+PiBAQCAtMjc3LDkgKzI4NiwyMSBA
QCBpbnQgcGFudGhvcl9kZXZpY2VfaW5pdChzdHJ1Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2KQ0K
PiA+ID4+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+ID4gPj4+
Pj4+Pj4+Pj4gICAgICB9DQo+ID4gPj4+Pj4+Pj4+Pj4NCj4gPiA+Pj4+Pj4+Pj4+PiArICAgLyog
SWYgYSBwcm90ZWN0ZWQgaGVhcCBuYW1lIGlzIHNwZWNpZmllZCBidXQgbm90IGZvdW5kLCBkZWZl
ciB0aGUgcHJvYmUgdW50aWwgY3JlYXRlZCAqLw0KPiA+ID4+Pj4+Pj4+Pj4+ICsgICBpZiAocHJv
dGVjdGVkX2hlYXBfbmFtZSAmJiBzdHJsZW4ocHJvdGVjdGVkX2hlYXBfbmFtZSkpIHsgIA0KPiA+
ID4+Pj4+Pj4+Pj4NCj4gPiA+Pj4+Pj4+Pj4+IERvIHdlIHJlYWxseSBuZWVkIHRoaXMgc3RybGVu
KCkgPiAwPyBXb24ndCBkbWFfaGVhcF9maW5kKCkgZmFpbCBpcyB0aGUNCj4gPiA+Pj4+Pj4+Pj4+
IG5hbWUgaXMgIiIgYWxyZWFkeT8gIA0KPiA+ID4+Pj4+Pj4+Pg0KPiA+ID4+Pj4+Pj4+PiBJZiBk
bWFfaGVhcF9maW5kKCkgd2lsbCBmYWlsLCB0aGVuIHRoZSB3aG9sZSBwcm9iZSB3aXRoIGZhaWwg
dG9vLg0KPiA+ID4+Pj4+Pj4+PiBUaGlzIGNoZWNrIHByZXZlbnRzIHRoYXQuICANCj4gPiA+Pj4+
Pj4+Pg0KPiA+ID4+Pj4+Pj4+IFllYWgsIHRoYXQncyBhbHNvIGEgcXVlc3Rpb25hYmxlIGRlc2ln
biBjaG9pY2UuIEkgbWVhbiwgd2UgY2FuDQo+ID4gPj4+Pj4+Pj4gY3VycmVudGx5IHByb2JlIGFu
ZCBib290IHRoZSBGVyBldmVuIHRob3VnaCB3ZSBuZXZlciBzZXR1cCB0aGUNCj4gPiA+Pj4+Pj4+
PiBwcm90ZWN0ZWQgRlcgc2VjdGlvbnMsIHNvIHdoeSBzaG91bGQgd2UgZGVmZXIgdGhlIHByb2Jl
IGhlcmU/IENhbid0IHdlDQo+ID4gPj4+Pj4+Pj4ganVzdCByZXRyeSB0aGUgbmV4dCB0aW1lIGEg
Z3JvdXAgd2l0aCB0aGUgcHJvdGVjdGVkIGJpdCBpcyBjcmVhdGVkIGFuZA0KPiA+ID4+Pj4+Pj4+
IGZhaWwgaWYgd2UgY2FuIGZpbmQgYSBwcm90ZWN0ZWQgaGVhcD8gIA0KPiA+ID4+Pj4+Pj4NCj4g
PiA+Pj4+Pj4+IFRoZSBwcm9ibGVtIHdlIGhhdmUgd2l0aCB0aGUgY3VycmVudCBmaXJtd2FyZSBp
cyB0aGF0IGl0IGRvZXMgYSBudW1iZXIgb2Ygc2V0dXAgc3RlcHMgYXQgImJvb3QiDQo+ID4gPj4+
Pj4+PiB0aW1lIG9ubHkuIE9uZSBvZiB0aGUgc3RlcHMgaXMgcHJlcGFyaW5nIGl0cyBpbnRlcm5h
bCBzdHJ1Y3R1cmVzIGZvciB3aGVuIGl0IGVudGVycyBwcm90ZWN0ZWQNCj4gPiA+Pj4+Pj4+IG1v
ZGUgYW5kIGl0IHN0b3JlcyB0aGVtIGluIHRoZSBidWZmZXIgcGFzc2VkIGluIGF0IGZpcm13YXJl
IGxvYWRpbmcuIFdlIGNhbm5vdCBsYXRlciBydW4gdGhlDQo+ID4gPj4+Pj4+PiBwcm9jZXNzIHdo
ZW4gd2UgaGF2ZSBhIGdyb3VwIHdpdGggcHJvdGVjdGVkIG1vZGUgc2V0LiAgDQo+ID4gPj4+Pj4+
DQo+ID4gPj4+Pj4+IE5vLCBidXQgd2UgY2FuIGZvcmNlIGEgZnVsbC9zbG93IHJlc2V0IGFuZCBo
YXZlIHRoYXQgdGhpbmcNCj4gPiA+Pj4+Pj4gcmUtaW5pdGlhbGl6ZWQsIGNhbid0IHdlPyBJIG1l
YW4sIHRoYXQncyBiYXNpY2FsbHkgd2hhdCB3ZSBkbyB3aGVuIGENCj4gPiA+Pj4+Pj4gZmFzdCBy
ZXNldCBmYWlsczogd2UgcmUtaW5pdGlhbGl6ZSBhbGwgdGhlIHNlY3Rpb25zIGFuZCByZXNldCBh
Z2FpbiwgYXQNCj4gPiA+Pj4+Pj4gd2hpY2ggcG9pbnQgdGhlIEZXIHNob3VsZCBzdGFydCBmcm9t
IGEgZnJlc2ggc3RhdGUsIGFuZCBiZSBhYmxlIHRvDQo+ID4gPj4+Pj4+IHByb3Blcmx5IGluaXRp
YWxpemUgdGhlIHByb3RlY3RlZC1yZWxhdGVkIHN0dWZmIGlmIHByb3RlY3RlZCBzZWN0aW9ucw0K
PiA+ID4+Pj4+PiBhcmUgcG9wdWxhdGVkLiBBbSBJIG1pc3Npbmcgc29tZXRoaW5nPyAgDQo+ID4g
Pj4+Pj4NCj4gPiA+Pj4+PiBSaWdodCwgd2UgY2FuIGRvIHRoYXQuIEZvciBzb21lIHJlYXNvbiBJ
IGtlZXAgYXNzb2NpYXRpbmcgdGhlIHJlc2V0IHdpdGggdGhlDQo+ID4gPj4+Pj4gZXJyb3IgaGFu
ZGxpbmcgYW5kIG5vdCB3aXRoICJub3JtYWwiIG9wZXJhdGlvbnMuICANCj4gPiA+Pj4+IEkga2lu
ZCBvZiBob3BlIHdlIGVuZCB1cCB3aXRoIGVpdGhlcg0KPiA+ID4+Pj4NCj4gPiA+Pj4+ICAgLSBw
YW50aG9yIGtub3dzIHRoZSBleGFjdCBoZWFwIHRvIHVzZSBhbmQgZmFpbHMgd2l0aCBFUFJPQkVf
REVGRVIgaWYNCj4gPiA+Pj4+IHRoZSBoZWFwIGlzIG1pc3NpbmcsIG9yDQo+ID4gPj4+PiAgIC0g
cGFudGhvciBnZXRzIGEgZG1hLWJ1ZiBmcm9tIHVzZXJzcGFjZSBhbmQgZG9lcyB0aGUgZnVsbCBy
ZXNldA0KPiA+ID4+Pj4gICAgIC0gdXNlcnNwYWNlIGFsc28gbmVlZHMgdG8gcHJvdmlkZSBhIGRt
YS1idWYgZm9yIGVhY2ggcHJvdGVjdGVkDQo+ID4gPj4+PiBncm91cCBmb3IgdGhlIHN1c3BlbmQg
YnVmZmVyDQo+ID4gPj4+Pg0KPiA+ID4+Pj4gdGhhbiBzb21ldGhpbmcgaW4tYmV0d2Vlbi4gVGhl
IGxhdHRlciBpcyBtb3JlIGFkLWhvYyBhbmQgYmFzaWNhbGx5DQo+ID4gPj4+PiBraWNrcyB0aGUg
aXNzdWUgdG8gdGhlIHVzZXJzcGFjZS4gIA0KPiA+ID4+Pg0KPiA+ID4+PiBJbmRlZWQsIHRoZSBz
ZWNvbmQgb3B0aW9uIGlzIG1vcmUgYWQtaG9jLCBidXQgd2hlbiB5b3UgdGhpbmsgYWJvdXQgaXQs
DQo+ID4gPj4+IHVzZXJzcGFjZSBoYXMgdG8gaGF2ZSB0aGlzIGtub3dsZWRnZSwgYmVjYXVzZSBp
dCBuZWVkcyB0byBrbm93IHRoZQ0KPiA+ID4+PiBkbWEtaGVhcCB0byB1c2UgZm9yIGJ1ZmZlciBh
bGxvY2F0aW9uIHRoYXQgY3Jvc3MgYSBkZXZpY2UgYm91bmRhcnkNCj4gPiA+Pj4gYW55d2F5LiBU
aGluayBhYm91dCBmcmFtZXMgcHJvZHVjZWQgYnkgYSB2aWRlbyBkZWNvZGVyLCBhbmQgY29tcG9z
aXRlZA0KPiA+ID4+PiBieSB0aGUgR1BVIGludG8gYSBwcm90ZWN0ZWQgc2Nhbm91dCBidWZmZXIg
dGhhdCdzIHBhc3NlZCB0byB0aGUgS01TDQo+ID4gPj4+IGRldmljZS4gV2h5IHdvdWxkIHRoZSBH
UFUgZHJpdmVyIGJlIHNvdXJjZSBvZiB0cnV0aCB3aGVuIGl0IGNvbWVzIHRvDQo+ID4gPj4+IGNo
b29zaW5nIHRoZSBoZWFwIHRvIHVzZSB0byBhbGxvY2F0ZSBwcm90ZWN0ZWQgYnVmZmVycyBmb3Ig
dGhlIHZpZGVvDQo+ID4gPj4+IGRlY29kZXIgb3IgdGhvc2UgdXNlZCBmb3IgdGhlIGRpc3BsYXk/
ICANCj4gPiA+PiBJIGRvbid0IHRoaW5rIHRoZSBHUFUgZHJpdmVyIGlzIGV2ZXIgdGhlIHNvdXJj
ZSBvZiB0cnV0aC4gSWYgdGhlDQo+ID4gPj4gc3lzdGVtIGludGVncmF0b3Igd2FudHMgdG8gc3Bl
Y2lmeSB0aGUgc291cmNlIG9mIHRydXRoIChTb1QpIGZyb20NCj4gPiA+PiBrZXJuZWwgc3BhY2Us
IHRoZXkgc2hvdWxkIHVzZSB0aGUgZGV2aWNlIHRyZWUgKG9yIG1vZHVsZSBwYXJhbXMgLw0KPiA+
ID4+IGNvbmZpZyBvcHRpb25zKS4gSWYgdGhleSB3YW50IHRvIHNwZWNpZnkgdGhlIFNvVCBpbiB1
c2Vyc3BhY2UsIHRoZW4gd2UNCj4gPiA+PiBkb24ndCByZWFsbHkgY2FyZSBob3cgaXQgaXMgZG9u
ZSBvdGhlciB0aGFuIHByb3ZpZGluZyBhbiBpb2N0bC4NCj4gPiA+PiBQYW50aG9yIGlzIGFsd2F5
cyBvbiB0aGUgcmVjZWl2aW5nIGVuZC4gIA0KPiA+ID4NCj4gPiA+IE9rYXksIHdlJ3JlIG9uIHRo
ZSBzYW1lIHBhZ2UgdGhlbi4NCj4gPiA+ICANCj4gPiA+Pg0KPiA+ID4+IElmIHdlIGRvbid0IHdh
bnQgdG8gZGVsYXkgdGhpcyBmdW5jdGlvbmFsaXR5LCBidXQgaXQgdGFrZXMgdGltZSB0bw0KPiA+
ID4+IGNvbnZlcmdlIG9uIFNvVCwgbWF5YmUgYSBzb2x1dGlvbiB0aGF0IGlzIG5vdCBhIGxvbmct
dGVybSBwcm9taXNlIGNhbg0KPiA+ID4+IHdvcms/IE9mIHRoZSBvcHRpb25zIG9uIHRoZSB0YWJs
ZSAoZHQsIG1vZHVsZSBwYXJhbXMsIGtjb25maWcgb3B0aW9ucywNCj4gPiA+PiBpb2N0bHMpLCBh
IGtjb25maWcgb3B0aW9uLCBwb3RlbnRpYWxseSBtYXJrZWQgYXMgZXhwZXJpbWVudGFsLCBzZWVt
cw0KPiA+ID4+IGxpa2UgYSBnb29kIGNhbmRpZGF0ZS4gIA0KPiA+ID4NCj4gPiA+IElmIFBhbnRo
b3IgaXMgb25seSBhIGNvbnN1bWVyLCBJIGFjdHVhbGx5IHRoaW5rIGl0J2QgYmUgZWFzaWVyIHRv
IGp1c3QNCj4gPiA+IGxldCB1c2Vyc3BhY2UgcGFzcyB0aGUgcHJvdGVjdGVkIEZXIHNlY3Rpb24g
YXMgYW4gaW1wb3J0ZWQgYnVmZmVyDQo+ID4gPiB0aHJvdWdoIGFuIGlvY3RsIGZvciBub3cuIEl0
IG1lYW5zIHdlIGRvbid0IG5lZWQgYW55IG9mIHRoZQ0KPiA+ID4gbW9kaWZpY2F0aW9ucyB0byB0
aGUgZG1hX2hlYXAgQVBJIGluIHRoaXMgc2VyaWVzLCBhbmQgdXNlcnNwYWNlIGlzIGZyZWUNCj4g
PiA+IHRvIGNob29zZSBpdHMgU29UIChlZnVzZSwgRFQsIC4uLikgYW5kIHBhc3MgdGhlIGluZm8g
YmFjayB0byBtZXNhL0dCTQ0KPiA+ID4gc29tZWhvdyAoZW52dmFyLCBkcmljb25mLCAuLi4pLiBU
aGUgb25seSB0aGluZyB3ZSBuZWVkIHRvIGVuc3VyZSBpcyBpZg0KPiA+ID4gbGF6eSBwcm90ZWN0
ZWQgRlcgc2VjdGlvbiBhbGxvY2F0aW9uIGlzIGdvaW5nIHRvIHdvcmssIGJ1dCBnaXZlbiB0aGUN
Cj4gPiA+IGN1cnJlbnQgY29kZSBwdXJlbHkgYW5kIHNpbXBseSBpZ25vcmVzIHRob3NlIHNlY3Rp
b25zLCBhbmQgdGhlIEZXIGlzDQo+ID4gPiBzdGlsbCBhYmxlIHRvIGJvb3QgYW5kIGFjdCBwcm9w
ZXJseSAoYXQgbGVhc3Qgb24gdjEwLXYxMyksIEknbSBwcmV0dHkNCj4gPiA+IGNvbmZpZGVudCB0
aGlzIGlzIG9rYXksIHVubGVzcyB0aGVyZSdzIHNvbWUgdHJpY2sgdGhlIE1DVSBjYW4gZG8gdG8N
Cj4gPiA+IGRldGVjdCB0aGF0IHRoZSBwcm90ZWN0ZWQgc2VjdGlvbiBpc24ndCBtYXBwZWQgKHdo
aWNoIEkgZG91YnQsIGJlY2F1c2UNCj4gPiA+IHRoZSBNQ1UgZG9lc24ndCBrbm93IGl0IGxpdmVz
IGJlaGluZCBhbiBNTVUpLiAgDQo+IEkgc2V0IHVwIE1NVSB0byBtYXAgbm9uLXByb3RlY3RlZCBt
ZW1vcnkgdG8gdGhlIHByb3RlY3RlZCBzZWN0aW9uIHRoZQ0KPiBvdGhlciBkYXkuIFRoZSBGVyBz
dGlsbCBib290ZWQgZmluZS4gSSBkaWRuJ3QgZ2V0IGFjY2VzcyB2aW9sYXRpb24NCj4gdW50aWwg
dGhlIEZXIGV4ZWN1dGVkIFBST1RfUkVHSU9OIGFuZCBwYW50aG9yIHJlcXVlc3RlZA0KPiBHTEJf
UFJPVE1fRU5URVIgaW4gcmVzcG9uc2UuDQoNCkFoLCB0aGFua3MgZm9yIHRlc3RpbmchIFdlIHN0
aWxsIGRvbid0IGhhdmUgYSBzZXR1cCB3aXRoIHByb3Blcg0KcHJvdGVjdGVkIGhlYXAsIGJ1dCB0
aGF0IHdhcyBvbiBteSBsaXN0IG9mIHRoaW5ncyB0byB0ZXN0Lg0KDQo+IA0KPiBUaGlzIHdhcyBv
biB2MTMsIGJ1dCBJIGFsc28gZG91YnQgaXQgd2lsbCBiZWNvbWUgYW4gaXNzdWUuIENhbiBBUk0g
aGVscCBjbGFyaWZ5Pw0KPiANCj4gPiA+DQo+ID4gPiBPZiBjb3Vyc2UsIG9uY2Ugd2UgaGF2ZSBh
IGNvbnNlbnN1cyBvbiBob3cgdG8gZGVzY3JpYmUgdGhpcyBpbiB0aGUgRFQsDQo+ID4gPiB3ZSBj
YW4gc3dpdGNoIFBhbnRob3Igb3ZlciB0byAicHJvdGVjdGVkIGRtYV9oZWFwIHNlbGVjdGlvbiB0
aHJvdWdoIERUIiwNCj4gPiA+IGFuZCByZWZsZWN0IHRoYXQgdGhyb3VnaCB0aGUgaW9jdGwgdGhh
dCBleHBvc2VzIHdoZXRoZXIgcHJvdGVjdGVkDQo+ID4gPiBzdXBwb3J0IGlzIHJlYWR5IG9yIG5v
dCAod291bGQgYmUgYSBERVZfUVVFUlkpLCBzdWNoIHRoYXQgdXNlcnNwYWNlIGNhbg0KPiA+ID4g
c2tpcCB0aGlzICJQUk9UTSBpbml0aWFsaXphdGlvbiIgc3RlcC4NCj4gPiA+DQo+ID4gPiBXZSdy
ZSB0YWxraW5nIGFib3V0IGFuIGV4dHJhIGlvY3RsIHRvIHNldCB0aG9zZSBidWZmZXJzLCBhbmQg
YQ0KPiA+ID4gREVWX1FVRVJZIHRvIHF1ZXJ5IHRoZSBzdGF0ZSAocmVhZHkgb3Igbm90KSwgdGhl
IHNpemUgb2YgdGhlIGdsb2JhbA0KPiA+ID4gcHJvdGVjdGVkIGJ1ZmZlciAocHJvdGVjdGVkIEZX
IHNlY3Rpb24pIGFuZCB0aGUgc2l6ZSBvZiB0aGUgcHJvdGVjdGVkDQo+ID4gPiBzdXNwZW5kIGJ1
ZmZlci4gVGhlIHByb3RlY3RlZCBzdXNwZW5kIGJ1ZmZlciB3b3VsZCBiZSBhbGxvY2F0ZWQgYW5k
DQo+ID4gPiBwYXNzZWQgYXQgZ3JvdXAgY3JlYXRpb24gdGltZSAoZXh0cmEgYXJnIHBhc3NlZCB0
byB0aGUgZXhpc3RpbmcNCj4gPiA+IEdST1VQX0NSRUFURSBpb2N0bCkuIFNvLCBvdmVyYWxsLCBJ
IGRvbid0IGNvbnNpZGVyIGl0IGEgaHVnZSBsaWFiaWxpdHkNCj4gPiA+IGluIHRlcm0gb2YgbWFp
bnRlbmFuY2UgY29zdC4gIA0KPiA+DQo+ID4gSWYgd2UgY2FuIGF2b2lkIHRoZSBkbWEtaGVhcCBj
aGFuZ2VzLCB0aGVuIHRoYXQgd291bGQgc3VyZWx5IGhlbHAhDQo+ID4gSSBjYW4gdHJ5IHRvIGlt
cGxlbWVudCB0aGlzIGluIHRoZSBuZXh0IHZlcnNpb24gdW5sZXNzIHNvbWVvbmUgZmluZHMgYQ0K
PiA+IHJlYXNvbiB3aHkgaXQgaXMgYSBiYWQgaWRlYS4gIA0KPiBZZWFoLCB0aGF0IHNvdW5kcyBn
b29kIHRvIG1lIHRvby4NCj4gDQo+IFdpbGwgdGhlIGV4dHJhIGlvY3RsIHJlcXVpcmUgcm9vdD8N
Cg0KVGhlIFBST1RNX0lOSVQgaW9jdGwgd2lsbCBjZXJ0YWlubHkgcmVxdWlyZSBoaWdoIHByaXZp
bGVnZQ0KQ0FQX1NZU188c29tZXRoaW5nPiwgZHVubm8geWV0IHdoYXQgdGhhdCA8c29tZXRoaW5n
PiB3b3VsZCBiZSB0aG91Z2guDQoNCj4gT24gYSBzeXN0ZW0gd2l0aCB0cnVlIHByb3RlY3RlZA0K
PiBtZW1vcnksIHRoZSBGVyBjYW5ub3Qgd3JpdGUgdG8gbm9uLXByb3RlY3RlZCBtZW1vcnkuIEl0
IHNlZW1zIG9rIHRvDQo+IGFsbG93IGFueSBjbGllbnQgdG8gbWFrZSB0aGUgaW9jdGwgY2FsbC4g
QnV0IG9uIHN5c3RlbXMgd2l0aG91dCB0cnVlDQo+IHByb3RlY3RlZCBtZW1vcnksIGl0IGNhbiBi
ZSBwcm9ibGVtYXRpYy4NCg0KWWVwLCBJIGFncmVlIHdlIHNob3VsZG4ndCBsZXQgcmFuZG9tIHVz
ZXJzIHByZXRlbmQgdGhleSBpbml0aWFsaXplZA0KcHJvdGVjdGVkIG1vZGUgaWYgdGhlIHN5c3Rl
bSBhcyBhIHdob2xlIGRvZXNuJ3QgaGF2ZSBwcm9wZXIgdGhlIHByb3Blcg0KYml0IGhvb2tlZCB1
cCB0byBzZXQgdGhhdCB1cC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
