Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id z/WBKpVJA2r+2wEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 17:39:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 29758523D37
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 17:39:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AAF6401AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 15:38:59 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 420B43EC66
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 15:38:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=G0XAPVjD;
	spf=pass (lists.linaro.org: domain of liviu.dudau@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=liviu.dudau@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F9DA2641
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 08:38:45 -0700 (PDT)
Received: from [192.168.0.1] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1C90E3F85F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 08:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1778600330; bh=bTW8PIkNq6aZUF6NF1FmasGVCIC4HDNHJXMvlerQOQM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G0XAPVjDwQnBADIOZI0g5Mj//crIJRbcNrdFr6iEP1KfQoLRPz87V78nqN0nU6XrN
	 QAi2Lk+rOa65B4Sgk/icI14+vH3d1wSl0BgbJrytnQSzteQ6RqeKHIhgst8Bf9KtWR
	 q8wrRKeB5J/mR9QNbStFnxUv6mkpluZ7007jzdJ0=
Date: Tue, 12 May 2026 16:38:18 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <agNJasayW8VCHTiU@e142607>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-5-ketil.johnsen@arm.com>
 <20260505181523.49a3d85c@fedora>
 <afxVIuVVPisBQ9p_@e129842.arm.com>
 <20260507135356.5428d50d@fedora>
 <agMvb_jeRsO7tSS-@e142607>
 <20260512161111.0cb7000e@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260512161111.0cb7000e@fedora>
X-Spamd-Bar: ---
Message-ID-Hash: ONFXLUG6QPTLHNXENLRLY55D65UBFWY2
X-Message-ID-Hash: ONFXLUG6QPTLHNXENLRLY55D65UBFWY2
X-MailFrom: liviu.dudau@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Marcin =?utf-8?Q?=C5=9Alusarz?= <marcin.slusarz@arm.com>, Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm
 -sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ONFXLUG6QPTLHNXENLRLY55D65UBFWY2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 29758523D37
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.950];
	FROM_NEQ_ENVFROM(0.00)[liviu.dudau@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gVHVlLCBNYXkgMTIsIDIwMjYgYXQgMDQ6MTE6MTFQTSArMDIwMCwgQm9yaXMgQnJlemlsbG9u
IHdyb3RlOg0KPiBPbiBUdWUsIDEyIE1heSAyMDI2IDE0OjQ3OjI3ICswMTAwDQo+IExpdml1IER1
ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPiB3cm90ZToNCj4gDQo+ID4gT24gVGh1LCBNYXkgMDcs
IDIwMjYgYXQgMDE6NTM6NTZQTSArMDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiA+ID4g
T24gVGh1LCA3IE1heSAyMDI2IDExOjAyOjI2ICswMjAwDQo+ID4gPiBNYXJjaW4gxZpsdXNhcnog
PG1hcmNpbi5zbHVzYXJ6QGFybS5jb20+IHdyb3RlOg0KPiA+ID4gICANCj4gPiA+ID4gT24gVHVl
LCBNYXkgMDUsIDIwMjYgYXQgMDY6MTU6MjNQTSArMDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3Rl
OiAgDQo+ID4gPiA+ID4gPiBAQCAtMjc3LDkgKzI4NiwyMSBAQCBpbnQgcGFudGhvcl9kZXZpY2Vf
aW5pdChzdHJ1Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2KQ0KPiA+ID4gPiA+ID4gIAkJCXJldHVy
biByZXQ7DQo+ID4gPiA+ID4gPiAgCX0NCj4gPiA+ID4gPiA+ICANCj4gPiA+ID4gPiA+ICsJLyog
SWYgYSBwcm90ZWN0ZWQgaGVhcCBuYW1lIGlzIHNwZWNpZmllZCBidXQgbm90IGZvdW5kLCBkZWZl
ciB0aGUgcHJvYmUgdW50aWwgY3JlYXRlZCAqLw0KPiA+ID4gPiA+ID4gKwlpZiAocHJvdGVjdGVk
X2hlYXBfbmFtZSAmJiBzdHJsZW4ocHJvdGVjdGVkX2hlYXBfbmFtZSkpIHsgICAgDQo+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gRG8gd2UgcmVhbGx5IG5lZWQgdGhpcyBzdHJsZW4oKSA+IDA/IFdvbid0
IGRtYV9oZWFwX2ZpbmQoKSBmYWlsIGlzIHRoZQ0KPiA+ID4gPiA+IG5hbWUgaXMgIiIgYWxyZWFk
eT8gICAgDQo+ID4gPiA+IA0KPiA+ID4gPiBJZiBkbWFfaGVhcF9maW5kKCkgd2lsbCBmYWlsLCB0
aGVuIHRoZSB3aG9sZSBwcm9iZSB3aXRoIGZhaWwgdG9vLg0KPiA+ID4gPiBUaGlzIGNoZWNrIHBy
ZXZlbnRzIHRoYXQuICANCj4gPiA+IA0KPiA+ID4gWWVhaCwgdGhhdCdzIGFsc28gYSBxdWVzdGlv
bmFibGUgZGVzaWduIGNob2ljZS4gSSBtZWFuLCB3ZSBjYW4NCj4gPiA+IGN1cnJlbnRseSBwcm9i
ZSBhbmQgYm9vdCB0aGUgRlcgZXZlbiB0aG91Z2ggd2UgbmV2ZXIgc2V0dXAgdGhlDQo+ID4gPiBw
cm90ZWN0ZWQgRlcgc2VjdGlvbnMsIHNvIHdoeSBzaG91bGQgd2UgZGVmZXIgdGhlIHByb2JlIGhl
cmU/IENhbid0IHdlDQo+ID4gPiBqdXN0IHJldHJ5IHRoZSBuZXh0IHRpbWUgYSBncm91cCB3aXRo
IHRoZSBwcm90ZWN0ZWQgYml0IGlzIGNyZWF0ZWQgYW5kDQo+ID4gPiBmYWlsIGlmIHdlIGNhbiBm
aW5kIGEgcHJvdGVjdGVkIGhlYXA/ICANCj4gPiANCj4gPiBUaGUgcHJvYmxlbSB3ZSBoYXZlIHdp
dGggdGhlIGN1cnJlbnQgZmlybXdhcmUgaXMgdGhhdCBpdCBkb2VzIGEgbnVtYmVyIG9mIHNldHVw
IHN0ZXBzIGF0ICJib290Ig0KPiA+IHRpbWUgb25seS4gT25lIG9mIHRoZSBzdGVwcyBpcyBwcmVw
YXJpbmcgaXRzIGludGVybmFsIHN0cnVjdHVyZXMgZm9yIHdoZW4gaXQgZW50ZXJzIHByb3RlY3Rl
ZA0KPiA+IG1vZGUgYW5kIGl0IHN0b3JlcyB0aGVtIGluIHRoZSBidWZmZXIgcGFzc2VkIGluIGF0
IGZpcm13YXJlIGxvYWRpbmcuIFdlIGNhbm5vdCBsYXRlciBydW4gdGhlDQo+ID4gcHJvY2VzcyB3
aGVuIHdlIGhhdmUgYSBncm91cCB3aXRoIHByb3RlY3RlZCBtb2RlIHNldC4NCj4gDQo+IE5vLCBi
dXQgd2UgY2FuIGZvcmNlIGEgZnVsbC9zbG93IHJlc2V0IGFuZCBoYXZlIHRoYXQgdGhpbmcNCj4g
cmUtaW5pdGlhbGl6ZWQsIGNhbid0IHdlPyBJIG1lYW4sIHRoYXQncyBiYXNpY2FsbHkgd2hhdCB3
ZSBkbyB3aGVuIGENCj4gZmFzdCByZXNldCBmYWlsczogd2UgcmUtaW5pdGlhbGl6ZSBhbGwgdGhl
IHNlY3Rpb25zIGFuZCByZXNldCBhZ2FpbiwgYXQNCj4gd2hpY2ggcG9pbnQgdGhlIEZXIHNob3Vs
ZCBzdGFydCBmcm9tIGEgZnJlc2ggc3RhdGUsIGFuZCBiZSBhYmxlIHRvDQo+IHByb3Blcmx5IGlu
aXRpYWxpemUgdGhlIHByb3RlY3RlZC1yZWxhdGVkIHN0dWZmIGlmIHByb3RlY3RlZCBzZWN0aW9u
cw0KPiBhcmUgcG9wdWxhdGVkLiBBbSBJIG1pc3Npbmcgc29tZXRoaW5nPw0KDQpSaWdodCwgd2Ug
Y2FuIGRvIHRoYXQuIEZvciBzb21lIHJlYXNvbiBJIGtlZXAgYXNzb2NpYXRpbmcgdGhlIHJlc2V0
IHdpdGggdGhlDQplcnJvciBoYW5kbGluZyBhbmQgbm90IHdpdGggIm5vcm1hbCIgb3BlcmF0aW9u
cy4NCg0KQmVzdCByZWdhcmRzLA0KTGl2aXUNCg0KDQotLSANCj09PT09PT09PT09PT09PT09PT09
DQp8IEkgd291bGQgbGlrZSB0byB8DQp8IGZpeCB0aGUgd29ybGQsICB8DQp8IGJ1dCB0aGV5J3Jl
IG5vdCB8DQp8IGdpdmluZyBtZSB0aGUgICB8DQogXCBzb3VyY2UgY29kZSEgIC8NCiAgLS0tLS0t
LS0tLS0tLS0tDQogICAgwq9cXyjjg4QpXy/Crw0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
