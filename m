Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAB070F425
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 12:27:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 876964145C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 10:27:34 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id D6232413FC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 10:27:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ou3dXMmm;
	spf=pass (lists.linaro.org: domain of ogabbay@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=ogabbay@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 80B9D63BF1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 10:27:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 847CAC433A0
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 10:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684924048;
	bh=Ru0fWfqqlX6KQv5nM4MMh2953U7nWaI2cFpOL79ZxOU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ou3dXMmmPknNr2EpgEOhpDzxeenu+FqECpv0vDlyeCIAqxkkvc8omfRowZI9qL48y
	 qNboz4BBDS0oAYCxUfsAjuUpmemUoTPXEe4GkBjgypmE3BTYcgI2CvjvOIpvX5PV+j
	 JcdFpPZhd58XXhMkyxR4poMWU0nEkvRzm7yrIZ3/2LAzZoOnGAB30mjep9cIH4lz0x
	 DwNb/vZTUGgA44zsH8NtXvrLWGDSeUyPbrb4CkFeUE9oKfS4yHu6pFV4i9nMHIf8Cs
	 uNTd7+kDg2Txb8WPRjbfDLH+dnxZBEu5pmUV3H7f9zDLUxWvV9S/dZih7PQoDz4PpF
	 gXGrI5yvj9X9g==
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-561deaad117so10695717b3.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 03:27:28 -0700 (PDT)
X-Gm-Message-State: AC+VfDwV8aD0ZW0v6RUhN6N/sdSmGeFV1oQHhL97nKCFE52InLfIYrkr
	j2SsjQFPJh6f1YIEG6kNEFJW1tQdLwEsDs31mqY=
X-Google-Smtp-Source: ACHHUZ5blUe2/ANdrbIUSBlAoc9jfa/cZWRA1ZwikgWcjIP8zS77ACL+X48iAferYBWCpvxnTrwKVSnp1f7b/AK/qBY=
X-Received: by 2002:a0d:fa82:0:b0:55a:18c0:daba with SMTP id
 k124-20020a0dfa82000000b0055a18c0dabamr17616723ywf.50.1684924047318; Wed, 24
 May 2023 03:27:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230517145237.295461-1-abailon@baylibre.com> <d0807fe4-dba2-8244-f655-d04e80973572@quicinc.com>
 <7ha5xud3m7.fsf@baylibre.com>
In-Reply-To: <7ha5xud3m7.fsf@baylibre.com>
From: Oded Gabbay <ogabbay@kernel.org>
Date: Wed, 24 May 2023 13:27:00 +0300
X-Gmail-Original-Message-ID: <CAFCwf10hNjGtEYDi24LREnMLRGT7mRECvqQMdZWv=-uA7YELYg@mail.gmail.com>
Message-ID: <CAFCwf10hNjGtEYDi24LREnMLRGT7mRECvqQMdZWv=-uA7YELYg@mail.gmail.com>
To: Kevin Hilman <khilman@baylibre.com>
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	REDIRECTOR_URL(0.00)[twitter.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[quicinc.com,baylibre.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,lists.infradead.org,linaro.org,collabora.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D6232413FC
X-Spamd-Bar: ------
Message-ID-Hash: K7NQR2TVIEB2THGXCBVLXM5Q4CS5O5FU
X-Message-ID-Hash: K7NQR2TVIEB2THGXCBVLXM5Q4CS5O5FU
X-MailFrom: ogabbay@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jeffrey Hugo <quic_jhugo@quicinc.com>, Alexandre Bailon <abailon@baylibre.com>, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, devicetree@vger.kernel.org, conor+dt@kernel.org, bero@baylibre.com, jstephan@baylibre.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org, linux-mediatek@lists.infradead.org, nbelin@baylibre.com, krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com, linux-media@vger.kernel.org, sumit.semwal@linaro.org, linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/7] Add a DRM driver to support AI Processing Unit (APU)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K7NQR2TVIEB2THGXCBVLXM5Q4CS5O5FU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMjQsIDIwMjMgYXQgMjozNOKAr0FNIEtldmluIEhpbG1hbiA8a2hpbG1hbkBi
YXlsaWJyZS5jb20+IHdyb3RlOg0KPg0KPiBKZWZmcmV5IEh1Z28gPHF1aWNfamh1Z29AcXVpY2lu
Yy5jb20+IHdyaXRlczoNCj4NCj4gPiBPbiA1LzE3LzIwMjMgODo1MiBBTSwgQWxleGFuZHJlIEJh
aWxvbiB3cm90ZToNCj4gPj4gVGhpcyBhZGRzIGEgRFJNIGRyaXZlciB0aGF0IGltcGxlbWVudHMg
Y29tbXVuaWNhdGlvbiBiZXR3ZWVuIHRoZSBDUFUgYW5kIGFuDQo+ID4+IEFQVS4gVGhlIGRyaXZl
ciB0YXJnZXQgZW1iZWRkZWQgZGV2aWNlIHRoYXQgdXN1YWxseSBydW4gaW5mZXJlbmNlIHVzaW5n
IHNvbWUNCj4gPj4gcHJlYnVpbHQgbW9kZWxzLiBUaGUgZ29hbCBpcyB0byBwcm92aWRlIGNvbW1v
biBpbmZyYXN0cnVjdHVyZSB0aGF0IGNvdWxkIGJlDQo+ID4+IHJlLXVzZWQgdG8gc3VwcG9ydCBt
YW55IGFjY2VsZXJhdG9ycy4gQm90aCBrZXJuZWwsIHVzZXJzcGFjZSBhbmQgZmlybXdhcmUgdHJp
ZXMNCj4gPj4gdG8gdXNlIHN0YW5kYXJkIGFuZCBleGlzdGluZyB0byBsZXZlcmFnZSB0aGUgZGV2
ZWxvcG1lbnQgYW5kIG1haW50ZW5hbmNlIGVmZm9ydC4NCj4gPj4gVGhlIHNlcmllcyBpbXBsZW1l
bnRzIHR3byBwbGF0Zm9ybSBkcml2ZXJzLCBvbmUgZm9yIHNpbXVsYXRpb24gYW5kIGFub3RoZXIg
b25lIGZvcg0KPiA+PiB0aGUgbXQ4MTgzIChjb21wYXRpYmxlIHdpdGggbXQ4MzY1KS4NCj4gPg0K
PiA+IFRoaXMgbG9va3MgbGlrZSB0aGUgMyBleGlzdGluZyBBY2NlbCBkcml2ZXJzLiAgV2h5IGlz
IHRoaXMgaW4gRFJNPw0KPg0KPiBZZXMsIHRoaXMgYmVsb25ncyBpbiBhY2NlbC4gIEkgdGhpbmsg
QWxleCBoYWQgc29tZSBpc3N1ZXMgYXJvdW5kIHRoZQ0KPiBpbmZyYSBpbiBhY2NlbCB3aXRoIGRl
dmljZSBub2RlcyBub3QgYXBwZWFyaW5nL29wZW5pbmcgcHJvcGVybHksIGJ1dA0KPiBJJ2xsIGxl
dCBoaW0gY29tbWVudCB0aGVyZS4gIEJ1dCBlaXRoZXIgd2F5LCB0aGUgcmlnaHQgYXBwcm9hY2gg
c2hvdWxkDQo+IGJlIHRvIGZpeCBhbnkgaXNzdWVzIGluIGFjY2VsIGFuZCBtb3ZlIGl0IHRoZXJl
Lg0KPg0KPiBbLi4uXQ0KPg0KPiA+PiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwdS9tdGss
YXB1LWRybS55YW1sICB8ICAzOCArKw0KPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9LY29uZmlnICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgMiArDQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL01ha2Vm
aWxlICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsNCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0v
YXB1L0tjb25maWcgICAgICAgICAgICAgICAgICAgfCAgMjIgKw0KPiA+PiAgIGRyaXZlcnMvZ3B1
L2RybS9hcHUvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICAxMCArDQo+ID4+ICAgZHJpdmVy
cy9ncHUvZHJtL2FwdS9hcHVfZHJ2LmMgICAgICAgICAgICAgICAgIHwgMjgyICsrKysrKysrKw0K
PiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9hcHUvYXB1X2dlbS5jICAgICAgICAgICAgICAgICB8IDIz
MCArKysrKysrDQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2FwdS9hcHVfaW50ZXJuYWwuaCAgICAg
ICAgICAgIHwgMjA1ICsrKysrKw0KPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9hcHUvYXB1X3NjaGVk
LmMgICAgICAgICAgICAgICB8IDU5MiArKysrKysrKysrKysrKysrKysNCj4gPj4gICBkcml2ZXJz
L2dwdS9kcm0vYXB1L3NpbXVfYXB1LmMgICAgICAgICAgICAgICAgfCAzMTMgKysrKysrKysrDQo+
ID4+ICAgaW5jbHVkZS91YXBpL2RybS9hcHVfZHJtLmggICAgICAgICAgICAgICAgICAgIHwgIDgx
ICsrKw0KPiA+DQo+ID4gImFwdSIgc2VlbXMgdG9vIGdlbmVyaWMuICBXZSBhbHJlYWR5IGhhdmUg
MyAiQUkgcHJvY2Vzc2luZyB1bml0cyIgb3Zlcg0KPiA+IGluIGRyaXZlcnMvYWNjZWwgYWxyZWFk
eS4uLg0KPg0KPiBJbmRlZWQsIGl0IGlzIGdlbmVyaWMsIGJ1dCB0aGF0J3Mga2luZCBvZiB0aGUg
cG9pbnQgZm9yIHRoaXMgZHJpdmVyDQo+IHNpbmNlIGl0J3MgdGFyZ2V0dGVkIGF0IGdlbmVyYWxp
emluZyB0aGUgaW50ZXJmYWNlIHdpdGggIkFJIHByb2Nlc3NpbmcNCj4gdW5pdHMiIG9uIGEgZ3Jv
d2luZyBudW1iZXIgb2YgZW1iZWRkZWQgU29DcyAoQVJNLCBSSVNDLVYsIGV0Yy4pICBJbg0KPiBh
ZGRpdGlvbiwgdGhlIGdlbmVyaWMgbmFtaW5nIGlzIGludGVudGlvbmFsIGJlY2F1c2UgdGhlIGdv
YWwgaXMgYmlnZ2VyDQo+IHRoYW4gdGhlIGtlcm5lbCBhbmQgaXMgd29ya2luZyB0b3dhcmRzIGEg
Z2VuZXJpYywgc2hhcmVkICJsaWJBUFUiDQo+IHVzZXJzcGFjZVsxXSwgYnV0IGFsc28gY29tbW9u
IGZpcm13YXJlIGZvciBEU1Atc3R5bGUgaW5mZXJlbmNlIGVuZ2luZXMNCj4gKGUuZy4gYW5hbGdv
dXMgU291bmQgT3BlbiBGaXJtd2FyZSBmb3IgYXVkaW8gRFNQcy4pDQo+DQo+IEFzIHVzdWFsLCB0
aGUgdmFyaW91cyBTb0MgdmVuZG9ycyB1c2UgZGlmZmVyZW50IG5hbWVzIChBUFUsIE5QVSwgTk4N
Cj4gdW5pdCwgZXRjLikgIGJ1dCB3ZSdkIGxpa2UgYSBnZW5lcmljIG5hbWUgZm9yIHRoZSBjbGFz
cyBvZiBkZXZpY2VzDQo+IHRhcmdldHRlZCBieSB0aGlzIGRyaXZlci4gIEFuZCB1bmZvcnR1bmF0
ZWx5LCBpdCBsb29rcyBsaWtlIHRoZSBlcXVhbGx5DQo+IGdlbmVyaWMgIlZlcnNhdGlsZSBwcm9j
ZXNzaW5nIHVuaXQiIGlzIGFscmVhZHkgdGFrZW4gSW50ZWwncw0KPiBkcml2ZXJzL2FjY2VsL2l2
cHUuIDopDQo+DQo+IE1heWJlIHNpbmNlIHRoaXMgaXMgbW9yZSBhYm91dCBnZW5lcmFsaXppbmcg
dGhlIGludGVyZmFjZSBiZXR3ZWVuIHRoZQ0KPiBDUFUgcnVubmluZyBsaW51eCBhbmQgdGhlIEFQ
VSwgd2hhdCBhYm91dCB0aGUgbmFtZSBhcHVfaWY/ICBCdXQgSSBndWVzcw0KPiB0aGF0IGFwcGxp
ZXMgdG8gdGhlIG90aGVyIDMgZHJpdmVycyBpbiBkcml2ZXJzL2FjY2VsbCBhbHNvLiAgSG1tbS4u
Lg0KPg0KPiBOYW1pbmcgdGhpbmdzIGlzIGhhcmRbMl0sIHNvIHdlJ3JlIGRlZmluaXRseSBvcGVu
IHRvIG90aGVyIGlkZWFzLiAgQW55DQo+IHN1Z2dlc3Rpb25zPw0KTWF5YmUgbW9kZWwgaXQgYWNj
b3JkaW5nIHRvIHRoZSB0aW55IGRyaXZlciBpbiBkcm0gZGlzcGxheSA/IFlvdSBjYW4NCnRoZW4g
Y2FsbCBpdCB0aW55X2FwdSA6LSkNCkRpc2Nsb3N1cmU6IEl0IHdhcyBEYW5pZWwncyBzdWdnZXN0
aW9uLCBoZSBjYW4gY2hpbWUgaW4gd2l0aCBtb3JlDQpkZXRhaWxzIG9uIHRoZSB0aW55IGRyaXZl
ciBjb25jZXB0Lg0KT2RlZA0KDQo+DQo+IEtldmluDQo+DQo+IFsxXSBodHRwczovL2dpdGxhYi5i
YXlsaWJyZS5jb20vYmF5bGlicmUvbGliYXB1L2xpYmFwdQ0KPg0KPiBbMl0NCj4gIlRoZXJlIGFy
ZSAyIGhhcmQgcHJvYmxlbXMgaW4gY29tcHV0ZXIgc2NpZW5jZTogY2FjaGUgaW52YWxpZGF0aW9u
LA0KPiAgbmFtaW5nIHRoaW5ncyBhbmQgb2ZmLWJ5LTEgZXJyb3JzLiINCj4gIC0tIGh0dHBzOi8v
dHdpdHRlci5jb20vc2VjcmV0R2Vlay9zdGF0dXMvNzI2OTk5Nzg2OA0KPg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
