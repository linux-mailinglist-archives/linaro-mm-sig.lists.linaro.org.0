Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEwuO0VBDGq4bwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:53:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B3F57CECB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:53:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62771401E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:53:56 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 343CC40501
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 08:49:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=UHWhEtQu;
	spf=pass (lists.linaro.org: domain of ketil.johnsen@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=ketil.johnsen@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61AF234FC;
	Tue, 19 May 2026 01:49:38 -0700 (PDT)
Received: from [10.57.24.124] (unknown [10.57.24.124])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E89C3F85F;
	Tue, 19 May 2026 01:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1779180583; bh=2ItcKLOHuYuo+5+zg3nAK5dtbbWOEusz4M2dKNduT5Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UHWhEtQu0+j3+QsOWr2nLpXICsL3AQVNq2V7x/fb/XyRGPAKRbuSINGm0ljae0+i8
	 9z42OdtXMowoLE3td48keL3MFMfcrE2qLP+5ACkvZROnd4D2JJ9PLo2A8+sjpZLK8t
	 k19/XatDyTfkXHKjdvr06k8CRJ9nVozmozjNf8GY=
Message-ID: <8f0b1750-a853-4895-9672-73a75f6dbd84@arm.com>
Date: Tue, 19 May 2026 10:49:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Chia-I Wu <olvaffe@gmail.com>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-5-ketil.johnsen@arm.com>
 <20260505181523.49a3d85c@fedora> <afxVIuVVPisBQ9p_@e129842.arm.com>
 <20260507135356.5428d50d@fedora> <agMvb_jeRsO7tSS-@e142607>
 <20260512161111.0cb7000e@fedora> <agNJasayW8VCHTiU@e142607>
 <CAPaKu7QC7FdjL6m_OSb+E5aYKs6bmT-9DAHc5PC=XctCmRph2Q@mail.gmail.com>
 <20260518091650.5a7a4f4a@fedora>
 <CAPaKu7R9ET767qc3eppBUfG2RAeyrg7E-gE0turgp-u_FU4+Vg@mail.gmail.com>
 <20260519093955.448ff899@fedora>
Content-Language: en-US
From: Ketil Johnsen <ketil.johnsen@arm.com>
In-Reply-To: <20260519093955.448ff899@fedora>
X-Spamd-Bar: ---
X-MailFrom: ketil.johnsen@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GG66GTPGMRFLX7HTLHBRTBACGNGUWTQL
X-Message-ID-Hash: GG66GTPGMRFLX7HTLHBRTBACGNGUWTQL
X-Mailman-Approved-At: Tue, 19 May 2026 10:50:28 +0000
CC: Liviu Dudau <liviu.dudau@arm.com>, =?UTF-8?Q?Marcin_=C5=9Alusarz?= <marcin.slusarz@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-s
 ig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GG66GTPGMRFLX7HTLHBRTBACGNGUWTQL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[collabora.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	DKIM_TRACE(0.00)[arm.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ketil.johnsen@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,arm.com:mid,arm.com:email,collabora.com:email]
X-Rspamd-Queue-Id: 51B3F57CECB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMTkvMDUvMjAyNiAwOTozOSwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiBPbiBNb24sIDE4
IE1heSAyMDI2IDE3OjM2OjQwIC0wNzAwDQo+IENoaWEtSSBXdSA8b2x2YWZmZUBnbWFpbC5jb20+
IHdyb3RlOg0KPiANCj4+IE9uIE1vbiwgTWF5IDE4LCAyMDI2IGF0IDEyOjE24oCvQU0gQm9yaXMg
QnJlemlsbG9uDQo+PiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPj4+
DQo+Pj4gT24gV2VkLCAxMyBNYXkgMjAyNiAxMjozMTozMiAtMDcwMA0KPj4+IENoaWEtSSBXdSA8
b2x2YWZmZUBnbWFpbC5jb20+IHdyb3RlOg0KPj4+ICAgDQo+Pj4+IE9uIFR1ZSwgTWF5IDEyLCAy
MDI2IGF0IDg6MznigK9BTSBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4gd3JvdGU6
DQo+Pj4+Pg0KPj4+Pj4gT24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgMDQ6MTE6MTFQTSArMDIwMCwg
Qm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPj4+Pj4+IE9uIFR1ZSwgMTIgTWF5IDIwMjYgMTQ6NDc6
MjcgKzAxMDANCj4+Pj4+PiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4gd3JvdGU6
DQo+Pj4+Pj4gICANCj4+Pj4+Pj4gT24gVGh1LCBNYXkgMDcsIDIwMjYgYXQgMDE6NTM6NTZQTSAr
MDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPj4+Pj4+Pj4gT24gVGh1LCA3IE1heSAyMDI2
IDExOjAyOjI2ICswMjAwDQo+Pj4+Pj4+PiBNYXJjaW4gxZpsdXNhcnogPG1hcmNpbi5zbHVzYXJ6
QGFybS5jb20+IHdyb3RlOg0KPj4+Pj4+Pj4gICANCj4+Pj4+Pj4+PiBPbiBUdWUsIE1heSAwNSwg
MjAyNiBhdCAwNjoxNToyM1BNICswMjAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6DQo+Pj4+Pj4+
Pj4+PiBAQCAtMjc3LDkgKzI4NiwyMSBAQCBpbnQgcGFudGhvcl9kZXZpY2VfaW5pdChzdHJ1Y3Qg
cGFudGhvcl9kZXZpY2UgKnB0ZGV2KQ0KPj4+Pj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAg
cmV0dXJuIHJldDsNCj4+Pj4+Pj4+Pj4+ICAgICAgfQ0KPj4+Pj4+Pj4+Pj4NCj4+Pj4+Pj4+Pj4+
ICsgICAvKiBJZiBhIHByb3RlY3RlZCBoZWFwIG5hbWUgaXMgc3BlY2lmaWVkIGJ1dCBub3QgZm91
bmQsIGRlZmVyIHRoZSBwcm9iZSB1bnRpbCBjcmVhdGVkICovDQo+Pj4+Pj4+Pj4+PiArICAgaWYg
KHByb3RlY3RlZF9oZWFwX25hbWUgJiYgc3RybGVuKHByb3RlY3RlZF9oZWFwX25hbWUpKSB7DQo+
Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+IERvIHdlIHJlYWxseSBuZWVkIHRoaXMgc3RybGVuKCkgPiAw
PyBXb24ndCBkbWFfaGVhcF9maW5kKCkgZmFpbCBpcyB0aGUNCj4+Pj4+Pj4+Pj4gbmFtZSBpcyAi
IiBhbHJlYWR5Pw0KPj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4gSWYgZG1hX2hlYXBfZmluZCgpIHdpbGwg
ZmFpbCwgdGhlbiB0aGUgd2hvbGUgcHJvYmUgd2l0aCBmYWlsIHRvby4NCj4+Pj4+Pj4+PiBUaGlz
IGNoZWNrIHByZXZlbnRzIHRoYXQuDQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gWWVhaCwgdGhhdCdzIGFs
c28gYSBxdWVzdGlvbmFibGUgZGVzaWduIGNob2ljZS4gSSBtZWFuLCB3ZSBjYW4NCj4+Pj4+Pj4+
IGN1cnJlbnRseSBwcm9iZSBhbmQgYm9vdCB0aGUgRlcgZXZlbiB0aG91Z2ggd2UgbmV2ZXIgc2V0
dXAgdGhlDQo+Pj4+Pj4+PiBwcm90ZWN0ZWQgRlcgc2VjdGlvbnMsIHNvIHdoeSBzaG91bGQgd2Ug
ZGVmZXIgdGhlIHByb2JlIGhlcmU/IENhbid0IHdlDQo+Pj4+Pj4+PiBqdXN0IHJldHJ5IHRoZSBu
ZXh0IHRpbWUgYSBncm91cCB3aXRoIHRoZSBwcm90ZWN0ZWQgYml0IGlzIGNyZWF0ZWQgYW5kDQo+
Pj4+Pj4+PiBmYWlsIGlmIHdlIGNhbiBmaW5kIGEgcHJvdGVjdGVkIGhlYXA/DQo+Pj4+Pj4+DQo+
Pj4+Pj4+IFRoZSBwcm9ibGVtIHdlIGhhdmUgd2l0aCB0aGUgY3VycmVudCBmaXJtd2FyZSBpcyB0
aGF0IGl0IGRvZXMgYSBudW1iZXIgb2Ygc2V0dXAgc3RlcHMgYXQgImJvb3QiDQo+Pj4+Pj4+IHRp
bWUgb25seS4gT25lIG9mIHRoZSBzdGVwcyBpcyBwcmVwYXJpbmcgaXRzIGludGVybmFsIHN0cnVj
dHVyZXMgZm9yIHdoZW4gaXQgZW50ZXJzIHByb3RlY3RlZA0KPj4+Pj4+PiBtb2RlIGFuZCBpdCBz
dG9yZXMgdGhlbSBpbiB0aGUgYnVmZmVyIHBhc3NlZCBpbiBhdCBmaXJtd2FyZSBsb2FkaW5nLiBX
ZSBjYW5ub3QgbGF0ZXIgcnVuIHRoZQ0KPj4+Pj4+PiBwcm9jZXNzIHdoZW4gd2UgaGF2ZSBhIGdy
b3VwIHdpdGggcHJvdGVjdGVkIG1vZGUgc2V0Lg0KPj4+Pj4+DQo+Pj4+Pj4gTm8sIGJ1dCB3ZSBj
YW4gZm9yY2UgYSBmdWxsL3Nsb3cgcmVzZXQgYW5kIGhhdmUgdGhhdCB0aGluZw0KPj4+Pj4+IHJl
LWluaXRpYWxpemVkLCBjYW4ndCB3ZT8gSSBtZWFuLCB0aGF0J3MgYmFzaWNhbGx5IHdoYXQgd2Ug
ZG8gd2hlbiBhDQo+Pj4+Pj4gZmFzdCByZXNldCBmYWlsczogd2UgcmUtaW5pdGlhbGl6ZSBhbGwg
dGhlIHNlY3Rpb25zIGFuZCByZXNldCBhZ2FpbiwgYXQNCj4+Pj4+PiB3aGljaCBwb2ludCB0aGUg
Rlcgc2hvdWxkIHN0YXJ0IGZyb20gYSBmcmVzaCBzdGF0ZSwgYW5kIGJlIGFibGUgdG8NCj4+Pj4+
PiBwcm9wZXJseSBpbml0aWFsaXplIHRoZSBwcm90ZWN0ZWQtcmVsYXRlZCBzdHVmZiBpZiBwcm90
ZWN0ZWQgc2VjdGlvbnMNCj4+Pj4+PiBhcmUgcG9wdWxhdGVkLiBBbSBJIG1pc3Npbmcgc29tZXRo
aW5nPw0KPj4+Pj4NCj4+Pj4+IFJpZ2h0LCB3ZSBjYW4gZG8gdGhhdC4gRm9yIHNvbWUgcmVhc29u
IEkga2VlcCBhc3NvY2lhdGluZyB0aGUgcmVzZXQgd2l0aCB0aGUNCj4+Pj4+IGVycm9yIGhhbmRs
aW5nIGFuZCBub3Qgd2l0aCAibm9ybWFsIiBvcGVyYXRpb25zLg0KPj4+PiBJIGtpbmQgb2YgaG9w
ZSB3ZSBlbmQgdXAgd2l0aCBlaXRoZXINCj4+Pj4NCj4+Pj4gICAtIHBhbnRob3Iga25vd3MgdGhl
IGV4YWN0IGhlYXAgdG8gdXNlIGFuZCBmYWlscyB3aXRoIEVQUk9CRV9ERUZFUiBpZg0KPj4+PiB0
aGUgaGVhcCBpcyBtaXNzaW5nLCBvcg0KPj4+PiAgIC0gcGFudGhvciBnZXRzIGEgZG1hLWJ1ZiBm
cm9tIHVzZXJzcGFjZSBhbmQgZG9lcyB0aGUgZnVsbCByZXNldA0KPj4+PiAgICAgLSB1c2Vyc3Bh
Y2UgYWxzbyBuZWVkcyB0byBwcm92aWRlIGEgZG1hLWJ1ZiBmb3IgZWFjaCBwcm90ZWN0ZWQNCj4+
Pj4gZ3JvdXAgZm9yIHRoZSBzdXNwZW5kIGJ1ZmZlcg0KPj4+Pg0KPj4+PiB0aGFuIHNvbWV0aGlu
ZyBpbi1iZXR3ZWVuLiBUaGUgbGF0dGVyIGlzIG1vcmUgYWQtaG9jIGFuZCBiYXNpY2FsbHkNCj4+
Pj4ga2lja3MgdGhlIGlzc3VlIHRvIHRoZSB1c2Vyc3BhY2UuDQo+Pj4NCj4+PiBJbmRlZWQsIHRo
ZSBzZWNvbmQgb3B0aW9uIGlzIG1vcmUgYWQtaG9jLCBidXQgd2hlbiB5b3UgdGhpbmsgYWJvdXQg
aXQsDQo+Pj4gdXNlcnNwYWNlIGhhcyB0byBoYXZlIHRoaXMga25vd2xlZGdlLCBiZWNhdXNlIGl0
IG5lZWRzIHRvIGtub3cgdGhlDQo+Pj4gZG1hLWhlYXAgdG8gdXNlIGZvciBidWZmZXIgYWxsb2Nh
dGlvbiB0aGF0IGNyb3NzIGEgZGV2aWNlIGJvdW5kYXJ5DQo+Pj4gYW55d2F5LiBUaGluayBhYm91
dCBmcmFtZXMgcHJvZHVjZWQgYnkgYSB2aWRlbyBkZWNvZGVyLCBhbmQgY29tcG9zaXRlZA0KPj4+
IGJ5IHRoZSBHUFUgaW50byBhIHByb3RlY3RlZCBzY2Fub3V0IGJ1ZmZlciB0aGF0J3MgcGFzc2Vk
IHRvIHRoZSBLTVMNCj4+PiBkZXZpY2UuIFdoeSB3b3VsZCB0aGUgR1BVIGRyaXZlciBiZSBzb3Vy
Y2Ugb2YgdHJ1dGggd2hlbiBpdCBjb21lcyB0bw0KPj4+IGNob29zaW5nIHRoZSBoZWFwIHRvIHVz
ZSB0byBhbGxvY2F0ZSBwcm90ZWN0ZWQgYnVmZmVycyBmb3IgdGhlIHZpZGVvDQo+Pj4gZGVjb2Rl
ciBvciB0aG9zZSB1c2VkIGZvciB0aGUgZGlzcGxheT8NCj4+IEkgZG9uJ3QgdGhpbmsgdGhlIEdQ
VSBkcml2ZXIgaXMgZXZlciB0aGUgc291cmNlIG9mIHRydXRoLiBJZiB0aGUNCj4+IHN5c3RlbSBp
bnRlZ3JhdG9yIHdhbnRzIHRvIHNwZWNpZnkgdGhlIHNvdXJjZSBvZiB0cnV0aCAoU29UKSBmcm9t
DQo+PiBrZXJuZWwgc3BhY2UsIHRoZXkgc2hvdWxkIHVzZSB0aGUgZGV2aWNlIHRyZWUgKG9yIG1v
ZHVsZSBwYXJhbXMgLw0KPj4gY29uZmlnIG9wdGlvbnMpLiBJZiB0aGV5IHdhbnQgdG8gc3BlY2lm
eSB0aGUgU29UIGluIHVzZXJzcGFjZSwgdGhlbiB3ZQ0KPj4gZG9uJ3QgcmVhbGx5IGNhcmUgaG93
IGl0IGlzIGRvbmUgb3RoZXIgdGhhbiBwcm92aWRpbmcgYW4gaW9jdGwuDQo+PiBQYW50aG9yIGlz
IGFsd2F5cyBvbiB0aGUgcmVjZWl2aW5nIGVuZC4NCj4gDQo+IE9rYXksIHdlJ3JlIG9uIHRoZSBz
YW1lIHBhZ2UgdGhlbi4NCj4gDQo+Pg0KPj4gSWYgd2UgZG9uJ3Qgd2FudCB0byBkZWxheSB0aGlz
IGZ1bmN0aW9uYWxpdHksIGJ1dCBpdCB0YWtlcyB0aW1lIHRvDQo+PiBjb252ZXJnZSBvbiBTb1Qs
IG1heWJlIGEgc29sdXRpb24gdGhhdCBpcyBub3QgYSBsb25nLXRlcm0gcHJvbWlzZSBjYW4NCj4+
IHdvcms/IE9mIHRoZSBvcHRpb25zIG9uIHRoZSB0YWJsZSAoZHQsIG1vZHVsZSBwYXJhbXMsIGtj
b25maWcgb3B0aW9ucywNCj4+IGlvY3RscyksIGEga2NvbmZpZyBvcHRpb24sIHBvdGVudGlhbGx5
IG1hcmtlZCBhcyBleHBlcmltZW50YWwsIHNlZW1zDQo+PiBsaWtlIGEgZ29vZCBjYW5kaWRhdGUu
DQo+IA0KPiBJZiBQYW50aG9yIGlzIG9ubHkgYSBjb25zdW1lciwgSSBhY3R1YWxseSB0aGluayBp
dCdkIGJlIGVhc2llciB0byBqdXN0DQo+IGxldCB1c2Vyc3BhY2UgcGFzcyB0aGUgcHJvdGVjdGVk
IEZXIHNlY3Rpb24gYXMgYW4gaW1wb3J0ZWQgYnVmZmVyDQo+IHRocm91Z2ggYW4gaW9jdGwgZm9y
IG5vdy4gSXQgbWVhbnMgd2UgZG9uJ3QgbmVlZCBhbnkgb2YgdGhlDQo+IG1vZGlmaWNhdGlvbnMg
dG8gdGhlIGRtYV9oZWFwIEFQSSBpbiB0aGlzIHNlcmllcywgYW5kIHVzZXJzcGFjZSBpcyBmcmVl
DQo+IHRvIGNob29zZSBpdHMgU29UIChlZnVzZSwgRFQsIC4uLikgYW5kIHBhc3MgdGhlIGluZm8g
YmFjayB0byBtZXNhL0dCTQ0KPiBzb21laG93IChlbnZ2YXIsIGRyaWNvbmYsIC4uLikuIFRoZSBv
bmx5IHRoaW5nIHdlIG5lZWQgdG8gZW5zdXJlIGlzIGlmDQo+IGxhenkgcHJvdGVjdGVkIEZXIHNl
Y3Rpb24gYWxsb2NhdGlvbiBpcyBnb2luZyB0byB3b3JrLCBidXQgZ2l2ZW4gdGhlDQo+IGN1cnJl
bnQgY29kZSBwdXJlbHkgYW5kIHNpbXBseSBpZ25vcmVzIHRob3NlIHNlY3Rpb25zLCBhbmQgdGhl
IEZXIGlzDQo+IHN0aWxsIGFibGUgdG8gYm9vdCBhbmQgYWN0IHByb3Blcmx5IChhdCBsZWFzdCBv
biB2MTAtdjEzKSwgSSdtIHByZXR0eQ0KPiBjb25maWRlbnQgdGhpcyBpcyBva2F5LCB1bmxlc3Mg
dGhlcmUncyBzb21lIHRyaWNrIHRoZSBNQ1UgY2FuIGRvIHRvDQo+IGRldGVjdCB0aGF0IHRoZSBw
cm90ZWN0ZWQgc2VjdGlvbiBpc24ndCBtYXBwZWQgKHdoaWNoIEkgZG91YnQsIGJlY2F1c2UNCj4g
dGhlIE1DVSBkb2Vzbid0IGtub3cgaXQgbGl2ZXMgYmVoaW5kIGFuIE1NVSkuDQo+IA0KPiBPZiBj
b3Vyc2UsIG9uY2Ugd2UgaGF2ZSBhIGNvbnNlbnN1cyBvbiBob3cgdG8gZGVzY3JpYmUgdGhpcyBp
biB0aGUgRFQsDQo+IHdlIGNhbiBzd2l0Y2ggUGFudGhvciBvdmVyIHRvICJwcm90ZWN0ZWQgZG1h
X2hlYXAgc2VsZWN0aW9uIHRocm91Z2ggRFQiLA0KPiBhbmQgcmVmbGVjdCB0aGF0IHRocm91Z2gg
dGhlIGlvY3RsIHRoYXQgZXhwb3NlcyB3aGV0aGVyIHByb3RlY3RlZA0KPiBzdXBwb3J0IGlzIHJl
YWR5IG9yIG5vdCAod291bGQgYmUgYSBERVZfUVVFUlkpLCBzdWNoIHRoYXQgdXNlcnNwYWNlIGNh
bg0KPiBza2lwIHRoaXMgIlBST1RNIGluaXRpYWxpemF0aW9uIiBzdGVwLg0KPiANCj4gV2UncmUg
dGFsa2luZyBhYm91dCBhbiBleHRyYSBpb2N0bCB0byBzZXQgdGhvc2UgYnVmZmVycywgYW5kIGEN
Cj4gREVWX1FVRVJZIHRvIHF1ZXJ5IHRoZSBzdGF0ZSAocmVhZHkgb3Igbm90KSwgdGhlIHNpemUg
b2YgdGhlIGdsb2JhbA0KPiBwcm90ZWN0ZWQgYnVmZmVyIChwcm90ZWN0ZWQgRlcgc2VjdGlvbikg
YW5kIHRoZSBzaXplIG9mIHRoZSBwcm90ZWN0ZWQNCj4gc3VzcGVuZCBidWZmZXIuIFRoZSBwcm90
ZWN0ZWQgc3VzcGVuZCBidWZmZXIgd291bGQgYmUgYWxsb2NhdGVkIGFuZA0KPiBwYXNzZWQgYXQg
Z3JvdXAgY3JlYXRpb24gdGltZSAoZXh0cmEgYXJnIHBhc3NlZCB0byB0aGUgZXhpc3RpbmcNCj4g
R1JPVVBfQ1JFQVRFIGlvY3RsKS4gU28sIG92ZXJhbGwsIEkgZG9uJ3QgY29uc2lkZXIgaXQgYSBo
dWdlIGxpYWJpbGl0eQ0KPiBpbiB0ZXJtIG9mIG1haW50ZW5hbmNlIGNvc3QuDQoNCklmIHdlIGNh
biBhdm9pZCB0aGUgZG1hLWhlYXAgY2hhbmdlcywgdGhlbiB0aGF0IHdvdWxkIHN1cmVseSBoZWxw
IQ0KSSBjYW4gdHJ5IHRvIGltcGxlbWVudCB0aGlzIGluIHRoZSBuZXh0IHZlcnNpb24gdW5sZXNz
IHNvbWVvbmUgZmluZHMgYSANCnJlYXNvbiB3aHkgaXQgaXMgYSBiYWQgaWRlYS4NCg0KPj4+PiBG
b3IgdGhlIGZvcm1lciwgZXhwcmVzc2luZyB0aGUgcmVsYXRpb24gaW4gRFQgc2VlbXMgdG8gYmUg
dGhlIGJlc3QsDQo+Pj4+IGJ1dCBvbmx5IGlmIHBvc3NpYmxlIDotKS4gT3RoZXJ3aXNlLCBhIGtj
b25maWcgb3B0aW9uIChpbnN0ZWFkIG9mDQo+Pj4+IG1vZHVsZSBwYXJhbSkgc2hvdWxkIGJlIGVh
c2llciB0byB3b3JrIHdpdGguDQo+Pj4+DQo+Pj4+IExvb2tpbmcgYXQgdGhlIHVzZXJzcGFjZSBp
bXBsZW1lbnRhdGlvbiwgY2FuIHdlIGFsc28gaGF2ZSBhbiBwYW50aG9yDQo+Pj4+IGlvY3RsIHRv
IHJldHVybiB0aGUgaGVhcCB0byB1c2Vyc3BhY2U/DQo+Pj4NCj4+PiBZZXMsIGl0J3Mgc29tZXRo
aW5nIHdlIGNhbiBhZGQsIGJ1dCBhZ2FpbiwgSSdtIHF1ZXN0aW9uaW5nIHRoZQ0KPj4+IHVzZWZ1
bG5lc3Mgb2YgdGhpczogaG93IGNhbiB3ZSBlbnN1cmUgdGhlIGhlYXAgdXNlZCBieSBwYW50aG9y
IHRvDQo+Pj4gYWxsb2NhdGUgaXRzIHByb3RlY3RlZCBGVyBidWZmZXJzIGlzIHN1aXRhYmxlIGZv
ciBzY2Fub3V0IGJ1ZmZlcnMNCj4+PiAoYnVmZmVycyB0aGF0IGNhbiBiZSB1c2VkIGJ5IGRpc3Bs
YXkgZHJpdmVycykuIFRoZXJlIG5lZWRzIHRvIGJlIGEgZ2x1ZQ0KPj4+IGxlYXZpbmcgaW4gdXNl
cnNsYW5kIGFuZCB0YWtpbmcgdGhlIGRlY2lzaW9uLCBhbmQgSSdtIG5vdCB0b28gc3VyZQ0KPj4+
IHRydXN0aW5nIGFueSBvZiB0aGUgY29tcG9uZW50IGluIHRoZSBjaGFpbiAodmRlYywgZ3B1LCBk
aXNwbGF5KSBpcyB0aGUNCj4+PiByaWdodCB0aGluZyB0byBkby4NCj4+IFRoZSBoZWFwIHJldHVy
bmVkIGJ5IHBhbnRob3IgaXMgb25seSBmb3IgcGFuZnJvc3QvcGFudmsuIEl0IHNheXMNCj4+IG5v
dGhpbmcgYWJvdXQgY29tcGF0aWJpbGl0eSB3aXRoIG90aGVyIGNvbXBvbmVudHMgb24gdGhlIHN5
c3RlbS4NCj4gDQo+IE9rYXksIGlmIGl0J3MgdXNlZCBvbmx5IGZvciBpbnRlcm5hbCBidWZmZXJz
LCBJIGd1ZXNzIHRoYXQncyBmaW5lLg0KDQotLQ0KS2V0aWwNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
