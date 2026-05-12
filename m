Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEPwL5YvA2qN1QEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 15:48:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 448C75219A8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 15:48:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26472402BB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 13:48:05 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id EE2893EC66
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 13:47:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=u+cNtWmT;
	spf=pass (lists.linaro.org: domain of liviu.dudau@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=liviu.dudau@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 233611655
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 06:47:49 -0700 (PDT)
Received: from [192.168.0.1] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2CD293F85F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 06:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1778593674; bh=AHvaIjAEownr1UuDMvzjOHmJ1x9P7IhUK8cJvIHHPdU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u+cNtWmTLJQv8XJSnYH2sGwF0mRjotB+/XORkf+dEUV0KqDUEqlxCoTowohQCmNYU
	 vvP/o6Uw/cKOZSO6iegm5w2Z0sLmj3qo8J6VqPv1kjS/wBip8C3ytIX7R3M3C5e7B2
	 E+PSF1lKa/pmubwsFB25+HVfobLbJBJo4yt+JdM8=
Date: Tue, 12 May 2026 14:47:27 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <agMvb_jeRsO7tSS-@e142607>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-5-ketil.johnsen@arm.com>
 <20260505181523.49a3d85c@fedora>
 <afxVIuVVPisBQ9p_@e129842.arm.com>
 <20260507135356.5428d50d@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260507135356.5428d50d@fedora>
X-Spamd-Bar: ---
Message-ID-Hash: TAL7G6734DHT7AQCHZZM47FQSOKPFWJM
X-Message-ID-Hash: TAL7G6734DHT7AQCHZZM47FQSOKPFWJM
X-MailFrom: liviu.dudau@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Marcin =?utf-8?Q?=C5=9Alusarz?= <marcin.slusarz@arm.com>, Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm
 -sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Florent Tomasin <florent.tomasin@arm.com>, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] drm/panthor: Add support for protected memory allocation in panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TAL7G6734DHT7AQCHZZM47FQSOKPFWJM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 448C75219A8
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
	NEURAL_HAM(-0.00)[-0.953];
	FROM_NEQ_ENVFROM(0.00)[liviu.dudau@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,arm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gVGh1LCBNYXkgMDcsIDIwMjYgYXQgMDE6NTM6NTZQTSArMDIwMCwgQm9yaXMgQnJlemlsbG9u
IHdyb3RlOg0KPiBPbiBUaHUsIDcgTWF5IDIwMjYgMTE6MDI6MjYgKzAyMDANCj4gTWFyY2luIMWa
bHVzYXJ6IDxtYXJjaW4uc2x1c2FyekBhcm0uY29tPiB3cm90ZToNCj4gDQo+ID4gT24gVHVlLCBN
YXkgMDUsIDIwMjYgYXQgMDY6MTU6MjNQTSArMDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0K
PiA+ID4gPiBAQCAtMjc3LDkgKzI4NiwyMSBAQCBpbnQgcGFudGhvcl9kZXZpY2VfaW5pdChzdHJ1
Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2KQ0KPiA+ID4gPiAgCQkJcmV0dXJuIHJldDsNCj4gPiA+
ID4gIAl9DQo+ID4gPiA+ICANCj4gPiA+ID4gKwkvKiBJZiBhIHByb3RlY3RlZCBoZWFwIG5hbWUg
aXMgc3BlY2lmaWVkIGJ1dCBub3QgZm91bmQsIGRlZmVyIHRoZSBwcm9iZSB1bnRpbCBjcmVhdGVk
ICovDQo+ID4gPiA+ICsJaWYgKHByb3RlY3RlZF9oZWFwX25hbWUgJiYgc3RybGVuKHByb3RlY3Rl
ZF9oZWFwX25hbWUpKSB7ICANCj4gPiA+IA0KPiA+ID4gRG8gd2UgcmVhbGx5IG5lZWQgdGhpcyBz
dHJsZW4oKSA+IDA/IFdvbid0IGRtYV9oZWFwX2ZpbmQoKSBmYWlsIGlzIHRoZQ0KPiA+ID4gbmFt
ZSBpcyAiIiBhbHJlYWR5PyAgDQo+ID4gDQo+ID4gSWYgZG1hX2hlYXBfZmluZCgpIHdpbGwgZmFp
bCwgdGhlbiB0aGUgd2hvbGUgcHJvYmUgd2l0aCBmYWlsIHRvby4NCj4gPiBUaGlzIGNoZWNrIHBy
ZXZlbnRzIHRoYXQuDQo+IA0KPiBZZWFoLCB0aGF0J3MgYWxzbyBhIHF1ZXN0aW9uYWJsZSBkZXNp
Z24gY2hvaWNlLiBJIG1lYW4sIHdlIGNhbg0KPiBjdXJyZW50bHkgcHJvYmUgYW5kIGJvb3QgdGhl
IEZXIGV2ZW4gdGhvdWdoIHdlIG5ldmVyIHNldHVwIHRoZQ0KPiBwcm90ZWN0ZWQgRlcgc2VjdGlv
bnMsIHNvIHdoeSBzaG91bGQgd2UgZGVmZXIgdGhlIHByb2JlIGhlcmU/IENhbid0IHdlDQo+IGp1
c3QgcmV0cnkgdGhlIG5leHQgdGltZSBhIGdyb3VwIHdpdGggdGhlIHByb3RlY3RlZCBiaXQgaXMg
Y3JlYXRlZCBhbmQNCj4gZmFpbCBpZiB3ZSBjYW4gZmluZCBhIHByb3RlY3RlZCBoZWFwPw0KDQpU
aGUgcHJvYmxlbSB3ZSBoYXZlIHdpdGggdGhlIGN1cnJlbnQgZmlybXdhcmUgaXMgdGhhdCBpdCBk
b2VzIGEgbnVtYmVyIG9mIHNldHVwIHN0ZXBzIGF0ICJib290Ig0KdGltZSBvbmx5LiBPbmUgb2Yg
dGhlIHN0ZXBzIGlzIHByZXBhcmluZyBpdHMgaW50ZXJuYWwgc3RydWN0dXJlcyBmb3Igd2hlbiBp
dCBlbnRlcnMgcHJvdGVjdGVkDQptb2RlIGFuZCBpdCBzdG9yZXMgdGhlbSBpbiB0aGUgYnVmZmVy
IHBhc3NlZCBpbiBhdCBmaXJtd2FyZSBsb2FkaW5nLiBXZSBjYW5ub3QgbGF0ZXIgcnVuIHRoZQ0K
cHJvY2VzcyB3aGVuIHdlIGhhdmUgYSBncm91cCB3aXRoIHByb3RlY3RlZCBtb2RlIHNldC4NCg0K
U28gdW5mb3J0dW5hdGVseSBhZGRpbmcgc3VwcG9ydCBmb3IgcHJvdGVjdGVkIG1vZGUgd2hlcmUg
dGhlIGhlYXAgbmFtZSBpcyBwcm92aWRlZCBtZWFucyB3ZQ0KaGF2ZSB0byB0cnkgb3VyIGJlc3Qg
dG8gc2V0IGl0IHVwIGF0IGJvb3QgdGltZSwgb3Igb3RoZXJ3aXNlIGRpc2FibGUgcHJvdGVjdGVk
IG1vZGUgc3VwcG9ydC4NCg0KQmVzdCByZWdhcmRzLA0KTGl2aXUNCg0KPiANCj4gPiBJJ20gbm90
IHN1cmUgd2h5IGl0J3MgbmVlZGVkIGF0IGFsbCwgYnV0IGlmDQo+ID4gaXQgaXMgcmVhbGx5IG5l
ZWRlZCwgdGhlbiBzL3N0cmxlbihwcm90ZWN0ZWRfaGVhcF9uYW1lKS9wcm90ZWN0ZWRfaGVhcF9u
YW1lWzBdLw0KPiA+IHdvdWxkIHNpbXBsaWZ5IHRoaXMuDQo+IA0KPiBJdCdzIG5vdCBzbyBtdWNo
IGFib3V0IGhvdyB5b3UgZG8gdGhlIHRlc3QsIGFuZCBtb3JlIGFib3V0IHRoZSBjYXNlDQo+IHlv
dSdyZSB0cnlpbmcgdG8gcHJvdGVjdCBhZ2FpbnN0LiBJIGd1ZXNzIGhlcmUgeW91IGFzc3VtZSB0
aGF0DQo+IHBhbnRob3IucHJvdGVjdGVkX2hlYXBfbmFtZT0iIiBtZWFucyAiSSBkb24ndCBoYXZl
IGEgcHJvdGVjdGVkIGhlYXAgZm9yDQo+IHlvdSIuIElmIGl0J3MgZGVlbWVkIGFjY2VwdGFibGUs
IHRoaXMgc2hvdWxkIG1vc3QgY2VydGFpbmx5IGJlDQo+IGRlc2NyaWJlZCBzb21ld2hlcmUuDQo+
IA0KPiA+IA0KPiA+ID4gPiArCQlwdGRldi0+cHJvdG0uaGVhcCA9IGRtYV9oZWFwX2ZpbmQocHJv
dGVjdGVkX2hlYXBfbmFtZSk7DQo+ID4gPiA+ICsJCWlmICghcHRkZXYtPnByb3RtLmhlYXApIHsN
Cj4gPiA+ID4gKwkJCWRybV93YXJuKCZwdGRldi0+YmFzZSwNCj4gPiA+ID4gKwkJCQkgIlByb3Rl
Y3RlZCBoZWFwIFwnJXNcJyBub3QgKHlldCkgYXZhaWxhYmxlIC0gZGVmZXJyaW5nIHByb2JlIiwN
Cj4gPiA+ID4gKwkJCQkgcHJvdGVjdGVkX2hlYXBfbmFtZSk7DQo+ID4gPiA+ICsJCQlyZXQgPSAt
RVBST0JFX0RFRkVSOw0KPiA+ID4gPiArCQkJZ290byBlcnJfcnBtX3B1dDsgIA0KPiA+ID4gDQo+
ID4gPiBJZiB5b3UgbW92ZSB0aGUgaGVhcCByZXRyaWV2YWwgYmVmb3JlIHRoZSBycG0gZW5hYmxl
bWVudCwgeW91IGNhbiBnZXQNCj4gPiA+IHJpZCBvZiB0aGlzIGdvdG8gZXJyX3JwbV9wdXQuDQo+
ID4gPiAgIA0KPiA+ID4gPiArCQl9DQo+ID4gPiA+ICsJfQ0KPiA+ID4gPiArDQo+ID4gPiA+ICAJ
cmV0ID0gcGFudGhvcl9od19pbml0KHB0ZGV2KTsNCj4gPiA+ID4gIAlpZiAocmV0KQ0KPiA+ID4g
PiAtCQlnb3RvIGVycl9ycG1fcHV0Ow0KPiA+ID4gPiArCQlnb3RvIGVycl9kbWFfaGVhcF9wdXQ7
DQo+ID4gPiA+ICANCj4gPiA+ID4gIAlyZXQgPSBwYW50aG9yX3B3cl9pbml0KHB0ZGV2KTsNCj4g
PiA+ID4gIAlpZiAocmV0KSAgDQo+IA0KDQotLSANCj09PT09PT09PT09PT09PT09PT09DQp8IEkg
d291bGQgbGlrZSB0byB8DQp8IGZpeCB0aGUgd29ybGQsICB8DQp8IGJ1dCB0aGV5J3JlIG5vdCB8
DQp8IGdpdmluZyBtZSB0aGUgICB8DQogXCBzb3VyY2UgY29kZSEgIC8NCiAgLS0tLS0tLS0tLS0t
LS0tDQogICAgwq9cXyjjg4QpXy/Crw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
