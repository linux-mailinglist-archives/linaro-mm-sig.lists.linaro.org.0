Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E1870F466
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 12:40:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E72504145F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 10:40:36 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id D60053E81F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 10:40:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=MsncBU0X;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.46) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-50c079eb705so267309a12.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 03:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1684924828; x=1687516828;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vSBx3Jy1mTVvH1DDifa+BTFAVrVdzMfrjrerJocMzTc=;
        b=MsncBU0Xz5NtTD5S78mXMEeC4K94W2pwnNzWeSZrGQG5dJS82huGUy3CeFMYH9IiDt
         uJrbvxQOo8WvI+Zx2GRQ6Z3AbzchyrDuGEXD5OdYlnDK9XhsxexvCXh09C24BvmE40dX
         9mvid7TkCoJwkRNQPQd8tZNSIFdp98fDgbtnY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684924828; x=1687516828;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vSBx3Jy1mTVvH1DDifa+BTFAVrVdzMfrjrerJocMzTc=;
        b=ZWCMSY/Ph9TwIBPc7cK7mGPICfdBEZONGbJI9/boc7ynqvpGWVRN5mj1TQPbnzd7T+
         uSWMJxUgEDF3+NpGeZjLygBDt8r5aB0OHNeyjOukIghsSrx+z2u4Fc3MY3nTaaoC6l3N
         QhsD3pFO0+kCPwByRUKhtodB7maWSwVoi3SUihavBHvAvlMFjLyTaFj0xDcGCg6aWI+P
         SZhblpNiFZ9A7gdciWwUR346sNNus7vEqnEoD8+xP9LsPaj34jWd/2yYScMpmJB0A7Yl
         or8dJjfcvtiimhZF6RB2fIZkeZwIpH8Od+Btp/Uh/ky278HGCPbvzk49xGKrwNnxCxNA
         gjAg==
X-Gm-Message-State: AC+VfDyl6yPZB7a1EDH2Cl17CkSi2RW4CCxdm+RTNJi3O4+F6t4zmN74
	sZS0JwrxMkeV+TqOznlUYlrHsg==
X-Google-Smtp-Source: ACHHUZ4KUw5NB3BOPHGF+oh7fuHhF9gCQe2opcFl/h4sFdwHa3h9ymnCb0ViPZg5quW6K3zoFzNnhA==
X-Received: by 2002:a17:906:72ce:b0:96f:56ab:c69b with SMTP id m14-20020a17090672ce00b0096f56abc69bmr1766954ejl.3.1684924827732;
        Wed, 24 May 2023 03:40:27 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id c25-20020a170906155900b0094f282fc29asm5554047ejd.207.2023.05.24.03.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 03:40:27 -0700 (PDT)
Date: Wed, 24 May 2023 12:40:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Oded Gabbay <ogabbay@kernel.org>
Message-ID: <ZG3pmSnUSc9oCtev@phenom.ffwll.local>
Mail-Followup-To: Oded Gabbay <ogabbay@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jeffrey Hugo <quic_jhugo@quicinc.com>,
	Alexandre Bailon <abailon@baylibre.com>, airlied@gmail.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, devicetree@vger.kernel.org,
	conor+dt@kernel.org, bero@baylibre.com, jstephan@baylibre.com,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org,
	robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
	nbelin@baylibre.com, krzysztof.kozlowski+dt@linaro.org,
	matthias.bgg@gmail.com, linux-media@vger.kernel.org,
	sumit.semwal@linaro.org, linux-arm-kernel@lists.infradead.org,
	angelogioacchino.delregno@collabora.com
References: <20230517145237.295461-1-abailon@baylibre.com>
 <d0807fe4-dba2-8244-f655-d04e80973572@quicinc.com>
 <7ha5xud3m7.fsf@baylibre.com>
 <CAFCwf10hNjGtEYDi24LREnMLRGT7mRECvqQMdZWv=-uA7YELYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf10hNjGtEYDi24LREnMLRGT7mRECvqQMdZWv=-uA7YELYg@mail.gmail.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[212.51.149.33:query timed out];
	RCPT_COUNT_TWELVE(0.00)[26];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[baylibre.com,quicinc.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,lists.infradead.org,linaro.org,collabora.com];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.46:from];
	R_SPF_NA(0.00)[no SPF record];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	REDIRECTOR_URL(0.00)[twitter.com];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D60053E81F
X-Spamd-Bar: -----
Message-ID-Hash: G7L4UZR6RCG3IQ4EVRRL5HGGVTEYMTIW
X-Message-ID-Hash: G7L4UZR6RCG3IQ4EVRRL5HGGVTEYMTIW
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kevin Hilman <khilman@baylibre.com>, Jeffrey Hugo <quic_jhugo@quicinc.com>, Alexandre Bailon <abailon@baylibre.com>, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, devicetree@vger.kernel.org, conor+dt@kernel.org, bero@baylibre.com, jstephan@baylibre.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org, linux-mediatek@lists.infradead.org, nbelin@baylibre.com, krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com, linux-media@vger.kernel.org, sumit.semwal@linaro.org, linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/7] Add a DRM driver to support AI Processing Unit (APU)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G7L4UZR6RCG3IQ4EVRRL5HGGVTEYMTIW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMjQsIDIwMjMgYXQgMDE6Mjc6MDBQTSArMDMwMCwgT2RlZCBHYWJiYXkgd3Jv
dGU6DQo+IE9uIFdlZCwgTWF5IDI0LCAyMDIzIGF0IDI6MzTigK9BTSBLZXZpbiBIaWxtYW4gPGto
aWxtYW5AYmF5bGlicmUuY29tPiB3cm90ZToNCj4gPg0KPiA+IEplZmZyZXkgSHVnbyA8cXVpY19q
aHVnb0BxdWljaW5jLmNvbT4gd3JpdGVzOg0KPiA+DQo+ID4gPiBPbiA1LzE3LzIwMjMgODo1MiBB
TSwgQWxleGFuZHJlIEJhaWxvbiB3cm90ZToNCj4gPiA+PiBUaGlzIGFkZHMgYSBEUk0gZHJpdmVy
IHRoYXQgaW1wbGVtZW50cyBjb21tdW5pY2F0aW9uIGJldHdlZW4gdGhlIENQVSBhbmQgYW4NCj4g
PiA+PiBBUFUuIFRoZSBkcml2ZXIgdGFyZ2V0IGVtYmVkZGVkIGRldmljZSB0aGF0IHVzdWFsbHkg
cnVuIGluZmVyZW5jZSB1c2luZyBzb21lDQo+ID4gPj4gcHJlYnVpbHQgbW9kZWxzLiBUaGUgZ29h
bCBpcyB0byBwcm92aWRlIGNvbW1vbiBpbmZyYXN0cnVjdHVyZSB0aGF0IGNvdWxkIGJlDQo+ID4g
Pj4gcmUtdXNlZCB0byBzdXBwb3J0IG1hbnkgYWNjZWxlcmF0b3JzLiBCb3RoIGtlcm5lbCwgdXNl
cnNwYWNlIGFuZCBmaXJtd2FyZSB0cmllcw0KPiA+ID4+IHRvIHVzZSBzdGFuZGFyZCBhbmQgZXhp
c3RpbmcgdG8gbGV2ZXJhZ2UgdGhlIGRldmVsb3BtZW50IGFuZCBtYWludGVuYW5jZSBlZmZvcnQu
DQo+ID4gPj4gVGhlIHNlcmllcyBpbXBsZW1lbnRzIHR3byBwbGF0Zm9ybSBkcml2ZXJzLCBvbmUg
Zm9yIHNpbXVsYXRpb24gYW5kIGFub3RoZXIgb25lIGZvcg0KPiA+ID4+IHRoZSBtdDgxODMgKGNv
bXBhdGlibGUgd2l0aCBtdDgzNjUpLg0KPiA+ID4NCj4gPiA+IFRoaXMgbG9va3MgbGlrZSB0aGUg
MyBleGlzdGluZyBBY2NlbCBkcml2ZXJzLiAgV2h5IGlzIHRoaXMgaW4gRFJNPw0KPiA+DQo+ID4g
WWVzLCB0aGlzIGJlbG9uZ3MgaW4gYWNjZWwuICBJIHRoaW5rIEFsZXggaGFkIHNvbWUgaXNzdWVz
IGFyb3VuZCB0aGUNCj4gPiBpbmZyYSBpbiBhY2NlbCB3aXRoIGRldmljZSBub2RlcyBub3QgYXBw
ZWFyaW5nL29wZW5pbmcgcHJvcGVybHksIGJ1dA0KPiA+IEknbGwgbGV0IGhpbSBjb21tZW50IHRo
ZXJlLiAgQnV0IGVpdGhlciB3YXksIHRoZSByaWdodCBhcHByb2FjaCBzaG91bGQNCj4gPiBiZSB0
byBmaXggYW55IGlzc3VlcyBpbiBhY2NlbCBhbmQgbW92ZSBpdCB0aGVyZS4NCj4gPg0KPiA+IFsu
Li5dDQo+ID4NCj4gPiA+PiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwdS9tdGssYXB1LWRy
bS55YW1sICB8ICAzOCArKw0KPiA+ID4+ICAgZHJpdmVycy9ncHUvZHJtL0tjb25maWcgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAyICsNCj4gPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9NYWtlZmls
ZSAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ID4gPj4gICBkcml2ZXJzL2dwdS9kcm0v
YXB1L0tjb25maWcgICAgICAgICAgICAgICAgICAgfCAgMjIgKw0KPiA+ID4+ICAgZHJpdmVycy9n
cHUvZHJtL2FwdS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgIHwgIDEwICsNCj4gPiA+PiAgIGRy
aXZlcnMvZ3B1L2RybS9hcHUvYXB1X2Rydi5jICAgICAgICAgICAgICAgICB8IDI4MiArKysrKysr
KysNCj4gPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9hcHUvYXB1X2dlbS5jICAgICAgICAgICAgICAg
ICB8IDIzMCArKysrKysrDQo+ID4gPj4gICBkcml2ZXJzL2dwdS9kcm0vYXB1L2FwdV9pbnRlcm5h
bC5oICAgICAgICAgICAgfCAyMDUgKysrKysrDQo+ID4gPj4gICBkcml2ZXJzL2dwdS9kcm0vYXB1
L2FwdV9zY2hlZC5jICAgICAgICAgICAgICAgfCA1OTIgKysrKysrKysrKysrKysrKysrDQo+ID4g
Pj4gICBkcml2ZXJzL2dwdS9kcm0vYXB1L3NpbXVfYXB1LmMgICAgICAgICAgICAgICAgfCAzMTMg
KysrKysrKysrDQo+ID4gPj4gICBpbmNsdWRlL3VhcGkvZHJtL2FwdV9kcm0uaCAgICAgICAgICAg
ICAgICAgICAgfCAgODEgKysrDQo+ID4gPg0KPiA+ID4gImFwdSIgc2VlbXMgdG9vIGdlbmVyaWMu
ICBXZSBhbHJlYWR5IGhhdmUgMyAiQUkgcHJvY2Vzc2luZyB1bml0cyIgb3Zlcg0KPiA+ID4gaW4g
ZHJpdmVycy9hY2NlbCBhbHJlYWR5Li4uDQo+ID4NCj4gPiBJbmRlZWQsIGl0IGlzIGdlbmVyaWMs
IGJ1dCB0aGF0J3Mga2luZCBvZiB0aGUgcG9pbnQgZm9yIHRoaXMgZHJpdmVyDQo+ID4gc2luY2Ug
aXQncyB0YXJnZXR0ZWQgYXQgZ2VuZXJhbGl6aW5nIHRoZSBpbnRlcmZhY2Ugd2l0aCAiQUkgcHJv
Y2Vzc2luZw0KPiA+IHVuaXRzIiBvbiBhIGdyb3dpbmcgbnVtYmVyIG9mIGVtYmVkZGVkIFNvQ3Mg
KEFSTSwgUklTQy1WLCBldGMuKSAgSW4NCj4gPiBhZGRpdGlvbiwgdGhlIGdlbmVyaWMgbmFtaW5n
IGlzIGludGVudGlvbmFsIGJlY2F1c2UgdGhlIGdvYWwgaXMgYmlnZ2VyDQo+ID4gdGhhbiB0aGUg
a2VybmVsIGFuZCBpcyB3b3JraW5nIHRvd2FyZHMgYSBnZW5lcmljLCBzaGFyZWQgImxpYkFQVSIN
Cj4gPiB1c2Vyc3BhY2VbMV0sIGJ1dCBhbHNvIGNvbW1vbiBmaXJtd2FyZSBmb3IgRFNQLXN0eWxl
IGluZmVyZW5jZSBlbmdpbmVzDQo+ID4gKGUuZy4gYW5hbGdvdXMgU291bmQgT3BlbiBGaXJtd2Fy
ZSBmb3IgYXVkaW8gRFNQcy4pDQo+ID4NCj4gPiBBcyB1c3VhbCwgdGhlIHZhcmlvdXMgU29DIHZl
bmRvcnMgdXNlIGRpZmZlcmVudCBuYW1lcyAoQVBVLCBOUFUsIE5ODQo+ID4gdW5pdCwgZXRjLikg
IGJ1dCB3ZSdkIGxpa2UgYSBnZW5lcmljIG5hbWUgZm9yIHRoZSBjbGFzcyBvZiBkZXZpY2VzDQo+
ID4gdGFyZ2V0dGVkIGJ5IHRoaXMgZHJpdmVyLiAgQW5kIHVuZm9ydHVuYXRlbHksIGl0IGxvb2tz
IGxpa2UgdGhlIGVxdWFsbHkNCj4gPiBnZW5lcmljICJWZXJzYXRpbGUgcHJvY2Vzc2luZyB1bml0
IiBpcyBhbHJlYWR5IHRha2VuIEludGVsJ3MNCj4gPiBkcml2ZXJzL2FjY2VsL2l2cHUuIDopDQo+
ID4NCj4gPiBNYXliZSBzaW5jZSB0aGlzIGlzIG1vcmUgYWJvdXQgZ2VuZXJhbGl6aW5nIHRoZSBp
bnRlcmZhY2UgYmV0d2VlbiB0aGUNCj4gPiBDUFUgcnVubmluZyBsaW51eCBhbmQgdGhlIEFQVSwg
d2hhdCBhYm91dCB0aGUgbmFtZSBhcHVfaWY/ICBCdXQgSSBndWVzcw0KPiA+IHRoYXQgYXBwbGll
cyB0byB0aGUgb3RoZXIgMyBkcml2ZXJzIGluIGRyaXZlcnMvYWNjZWxsIGFsc28uICBIbW1tLi4u
DQo+ID4NCj4gPiBOYW1pbmcgdGhpbmdzIGlzIGhhcmRbMl0sIHNvIHdlJ3JlIGRlZmluaXRseSBv
cGVuIHRvIG90aGVyIGlkZWFzLiAgQW55DQo+ID4gc3VnZ2VzdGlvbnM/DQo+IE1heWJlIG1vZGVs
IGl0IGFjY29yZGluZyB0byB0aGUgdGlueSBkcml2ZXIgaW4gZHJtIGRpc3BsYXkgPyBZb3UgY2Fu
DQo+IHRoZW4gY2FsbCBpdCB0aW55X2FwdSA6LSkNCj4gRGlzY2xvc3VyZTogSXQgd2FzIERhbmll
bCdzIHN1Z2dlc3Rpb24sIGhlIGNhbiBjaGltZSBpbiB3aXRoIG1vcmUNCj4gZGV0YWlscyBvbiB0
aGUgdGlueSBkcml2ZXIgY29uY2VwdC4NCg0KWWVhaCBzbyBtYXliZSBhIGJpdCBtb3JlIGRldGFp
bCBvbiBteSB0aG91Z2h0czoNCg0KRmlyc3QgdGhpcyBzbWVsbHMgbGlrZSBhIG5lZWQgYnlwYXNz
IG9mIHRoZSBlbnRpcmUgIndlIHdhbnQgb3BlbiB1c2Vyc3BhY2UNCmZvciBhY2NlbCBkcml2ZXJz
IiBydWxlLiBUaGUgcnVsZSBpc24ndCBxdWl0ZSBhIHN0cmljdCBhcyBmb3IgZHJtIGdwdQ0KZHJp
dmVycyAobm90IHN1cmUgd2UgZW5kZWQgdXAgZG9jdW1lbnRpbmcgZXhhY3RseSB3aGF0LCBidXQg
aWlyYyB0aGUNCmNvbnNlbnN1cyB3YXMgdGhhdCBmb3IgYnVpbGQtdGltZSBvbmx5IGRlcGVuZGVu
Y2llcyB3ZSdyZSBvayB3aXRoDQpkb3duc3RyZWFtIGNvbXBpbGVycyksIGJ1dCBpdCdzIHN0aWxs
IHRoZXJlLg0KDQpBbmQgYXQgbGVhc3QgZnJvbSBhIHF1aWNrIGxvb2sgYXB1LmtvIGFuZCBsaWJh
cHUganVzdCBsb29rIGxpa2UgYSBnZW5lcmljDQphY2NlbCBpbnRlcmZhY2UsIGFuZCB0aGF0J3Mg
bm90IGVub3VnaC4NCg0KRm9yIHRoZSBiaWcgdHJhaW5pbmcgZW5naW5lcyBpdCdzIG1vcmUgb3Ig
bGVzcyAiZW5vdWdoIHRvIHJ1biBweXRvcmNoLCBidXQNCml0IGNhbiBiZSByZWFsbHkgc2xvdyIs
IG5vdCBzdXJlIHdoYXQgdGhlIHJpZ2h0IHN0YW5kYXJkIGZvciB0aGVzZQ0KaW5mZXJlbmNlLW9u
bHkgZHJpdmVycyBzaG91bGQgYmUuDQoNClNvIHRoYXQncyB0aGUgZmlyc3QgcmVhc29uIHdoeSBJ
IGRvbid0IGxpa2UgdGhpcy4NCg0KVGhlIG90aGVyIGlzIHRoYXQgSSB0aGluayBpZiB3ZSBkbyBl
bmQgdXAgd2l0aCBhIHBpbGUgb2YgdGlueSBhY2NlbA0KZHJpdmVycywgd2Ugc2hvdWxkIHByb2Jh
Ymx5IGxvb2sgaW50byBzb21ldGhpbmcgbGlrZSBzaW1tcGxlZHJtIGZvciB0aGUNCnRpbnkgZGlz
cGxheSBkcml2ZXJzLiBQcm9iYWJseSBzdGlsbCBJUCBzcGVjaWZpYyBpb2N0bHMgKGF0IGxlYXN0
IG1vc3QpIHNvDQp0aGF0IElQIHNwZWNpZmljIGpvYiBrbm93cyBhbmQgYWxsIHRoYXQgYXJlIGVh
c3ksIGJ1dCB0aGVuIGp1c3QgcGFzcyB0byBhDQpmcmFtZXdvcmsgdGhhdCBzaW1wbGlmaWVzIGEg
ZHJtIGdlbSBkcml2ZXIgdG8gIndyaXRlIHB0ZXMiIGFuZCAicnVuIGpvYiINCmNhbGxiYWNrLCBt
YXliZSB3aXRoIGFuIG9wdGlvbmFsICJjcmVhdGUvZGVzdHJveSB2bS9jdHgiIGZvciBodyB3aGlj
aCBjYW4NCmRvIHRoYXQuDQoNClNvIG1heWJlIHdlIGVuZCB1cCB3aXRoIGEgZHJpdmVycy9hY2Nl
bC90aW55IGFuZCBhIGJ1bmNoIG1vcmUgaGVscGVycw0KYXJvdW5kIHRoZSBleGlzdGluZyBnZW0g
b25lcy4gVGhlIHJ1bGUgd2UgaGF2ZSBmb3IgZHJtL3RpbnkgaXMgIjEgZmlsZSwNCmxlc3MgdGhh
biAxa2xvYyIsIGFuZCB0aGVyZSdzIGEgYnVuY2ggb2YgdGhlbS4gSSBkbyB0aGluayB3ZSBjYW4g
YWNoaWV2ZQ0KdGhlIHNhbWUgZm9yIHRpbnkgYWNjZWwgaW5mZXJlbmNlIGVuZ2luZXMgKGJ1dCBp
dCdzIHN0aWxsIGEgYml0IGEgcm9hZCkuDQpNYXliZSB0aW55IGFjY2VsIGlzIG1vcmUgbGlrZSAi
bGVzcyB0aGFuIDVrbG9jIiBzaW5jZSB5b3UgbmVlZCBhIGJpdCBtb3JlDQpnbHVlIGZvciB0aGUg
ZHJpdmVyIHNwZWNpZmljIGlvY3RsIHN0dWZmIC0gbWF5YmUgdGhhdCdzIG9ubHkgbmVlZGVkIGZv
cg0KdGhlIHN1Ym1pdCBpb2N0bCwgbWF5YmUgYWxzbyBmb3IgYnVmZmVyIG1hcC91bm1hcCBhbmQg
Y3JlYXRpb24uDQoNCkFsc28gbm90ZSB0aGF0IHRoZXJlJ3MgYW4gZW50aXJlIHBpbGUgb2YgaW4t
ZmxpZ2h0IHdvcmsgZm9yIGFkZGluZyBuZXcNCmhlbHBlcnMgdG8gdGhlIGdlbSB3b3JsZCB0byBt
YWtlIHRoaXMgYWxsIGVhc2llci4gT25jZSB3ZSBoYXZlIGdwdXZhIGFuZA0KZXhlYyBoZWxwZXJz
IHRoZXJlIG5vdCBtdWNoIGdsdWUgbGVmdCB0byB0aWUgaXQgYWxsIHRvZ2V0aGVyIHdpdGggdGhl
DQpzY2hlZHVsZXIuDQoNCkJ1dCB0aGUgcmVhbCBjcnV4IGlzIHRoYXQgYW4gYWNjZWwgaW5mZXJl
bmNlIGRyaXZlciByZWFsbHkgbmVlZHMgdG8gaGF2ZQ0KZW5vdWdoIHVzZXJzcGFjZSB0byBkbyBh
biBhY3R1YWwgaW5mZXJlbmNlIGpvYiB3aXRoIHNvbWUNCmFuZHJvaWQvY3Jvcy93aGF0ZXZlciBm
cmFtZXdvcmsgZm9yIGluZmVyZW5jZSAodGhlcmUncyBqdXN0IHRvbyBtYW55KS4NCi1EYW5pZWwN
Cg0KPiBPZGVkDQo+IA0KPiA+DQo+ID4gS2V2aW4NCj4gPg0KPiA+IFsxXSBodHRwczovL2dpdGxh
Yi5iYXlsaWJyZS5jb20vYmF5bGlicmUvbGliYXB1L2xpYmFwdQ0KPiA+DQo+ID4gWzJdDQo+ID4g
IlRoZXJlIGFyZSAyIGhhcmQgcHJvYmxlbXMgaW4gY29tcHV0ZXIgc2NpZW5jZTogY2FjaGUgaW52
YWxpZGF0aW9uLA0KPiA+ICBuYW1pbmcgdGhpbmdzIGFuZCBvZmYtYnktMSBlcnJvcnMuIg0KPiA+
ICAtLSBodHRwczovL3R3aXR0ZXIuY29tL3NlY3JldEdlZWsvc3RhdHVzLzcyNjk5OTc4NjgNCj4g
Pg0KDQotLSANCkRhbmllbCBWZXR0ZXINClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3Jh
dGlvbg0KaHR0cDovL2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
