Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JygtL6u+Tmp3TQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Jul 2026 23:18:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 422B972A77F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 08 Jul 2026 23:18:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=PJGfOVml;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1DE4040AC0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jul 2026 21:18:34 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 85BA23F72F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 21:18:23 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0A3B5600C3
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 21:18:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0FEF1F00AC4
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2026 21:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783545502;
	bh=XHlK26iT5OTlGmvdsQr6aTlcJ71q9tfgFUQl/PoXZWA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=PJGfOVmlbverv4ZMgHaYP/tLAJYKYzNMgXX6nBNzjMaexj9wEiFTIJ4o1l1sA2nlP
	 LL5Tkg3/gihJKhh5hM5fww+Rg3IZwNeXoQ05aYqL++fCeUD1LxnbWtDzI+Ff3m/9wL
	 7aoITsZChrUt6i7YWHK0fzT1iF6F91ecDxZYq2HCO6gvdwKpx3EWb/zKSmXLLsKpTI
	 CFeMIuacmaNrOz7B0CRm+uSOqxfnBuSaYxB2EgqzeZ43CB3+arWjDtgfMwMAnXCLi2
	 2BqBZr3KJNNinzlUJLwkElWzigcAq/C0CwKlnD74SVMdZMHTCWSk/KaTDiqVp4dPso
	 IuzO9AfarR6cg==
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-69a50b818c8so1921304a12.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Jul 2026 14:18:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpSG5HqQPPpNLZ6ZCck4enYaME3M8EzmvdtIVIMXWXGB3C55IhJS+RyvdP5lMSISjmFe6xuOSd4VGk970E+@lists.linaro.org
X-Gm-Message-State: AOJu0YytXmmlWfsLp8pJIlcVrXb+JWc41K4MQ08FAA/7ymIpbojl3gXn
	8J9wuSRwNBVu6ifoKfyx1meBHoijuhaH5XcsTbfSZvnUKtPeJR2pYJOlmSx3u+6O/yKPXbhB/4x
	5VY1RtIxli0Q5t5Nhm0V45W6qCPBDwQ==
X-Received: by 2002:a17:907:a286:b0:c15:b6bd:cbb8 with SMTP id
 a640c23a62f3a-c15ce121a12mr190425566b.50.1783545501322; Wed, 08 Jul 2026
 14:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260701-tegra-vpr-v3-0-d80f7b871bb4@nvidia.com>
 <20260701-tegra-vpr-v3-1-d80f7b871bb4@nvidia.com> <178293558945.1610040.13281502080616690110.robh@kernel.org>
 <akZde-8lFvf8rPji@orome>
In-Reply-To: <akZde-8lFvf8rPji@orome>
From: Rob Herring <robh@kernel.org>
Date: Wed, 8 Jul 2026 16:18:10 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJCMm-oL35COx=agY+mwRUMMnRvbUgzPr5Hy9uvcPk0Dg@mail.gmail.com>
X-Gm-Features: AUfX_mz5rhGcrunDpACqiF1Zhx-HBPPyHD0sxMJJ0YCYlPmg5dj7i6HAGao9icM
Message-ID: <CAL_JsqJCMm-oL35COx=agY+mwRUMMnRvbUgzPr5Hy9uvcPk0Dg@mail.gmail.com>
To: Thierry Reding <thierry.reding@kernel.org>
X-Spamd-Bar: ------
Message-ID-Hash: YBEBZYUNVNRNC3KOQH3TDRGI3VCKGKR4
X-Message-ID-Hash: YBEBZYUNVNRNC3KOQH3TDRGI3VCKGKR4
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian Borntraeger <borntraeger@linux.ibm.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, dri-devel@lists.freedesktop.org, David Hildenbrand <david@kernel.org>, Yury Norov <yury.norov@gmail.com>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Simona Vetter <simona@ffwll.ch>, linux-trace-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-mm@kvack.org, Russell King <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, David Airlie <airlied@gmail.com>, Vasily Gorbik <gor@linux.ibm.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, linaro-mm-sig@lists.linaro.org, Heiko Carstens <hca@linux.ibm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thierry Reding <treding@nvidia.com>, Maxime Ripard <mripard@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, John Stultz <jstultz@google.com>, Luca Ceresoli <
 luca.ceresoli@bootlin.com>, Vlastimil Babka <vbabka@kernel.org>, Brian Starkey <Brian.Starkey@arm.com>, Mikko Perttunen <mperttunen@nvidia.com>, Michal Hocko <mhocko@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Jonathan Hunter <jonathanh@nvidia.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, Suren Baghdasaryan <surenb@google.com>, linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org, devicetree@vger.kernel.org, "Liam R. Howlett" <liam@infradead.org>, linux-tegra@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Andrew Morton <akpm@linux-foundation.org>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Lorenzo Stoakes <ljs@kernel.org>, "T.J. Mercier" <tjmercier@google.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, iommu@lists.linux.dev, Mike Rapoport <rppt@kernel.org>, S
 ven Schnelle <svens@linux.ibm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/11] dt-bindings: reserved-memory: Document Tegra VPR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YBEBZYUNVNRNC3KOQH3TDRGI3VCKGKR4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linux.ibm.com,rasmusvillemoes.dk,lists.freedesktop.org,kernel.org,gmail.com,vger.kernel.org,arm.com,ffwll.ch,amd.com,kvack.org,armlinux.org.uk,collabora.com,lists.linaro.org,linaro.org,nvidia.com,google.com,bootlin.com,suse.com,goodmis.org,linux.intel.com,lists.infradead.org,infradead.org,suse.de,linux-foundation.org,efficios.com,lists.linux.dev];
	FORGED_RECIPIENTS(0.00)[m:thierry.reding@kernel.org,m:borntraeger@linux.ibm.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:david@kernel.org,m:yury.norov@gmail.com,m:linux-media@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:robin.murphy@arm.com,m:simona@ffwll.ch,m:linux-trace-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:christian.koenig@amd.com,m:linux-mm@kvack.org,m:linux@armlinux.org.uk,m:will@kernel.org,m:mhiramat@kernel.org,m:airlied@gmail.com,m:gor@linux.ibm.com,m:benjamin.gaignard@collabora.com,m:linaro-mm-sig@lists.linaro.org,m:hca@linux.ibm.com,m:sumit.semwal@linaro.org,m:treding@nvidia.com,m:mripard@kernel.org,m:thierry.reding@gmail.com,m:jstultz@google.com,m:luca.ceresoli@bootlin.com,m:vbabka@kernel.org,m:Brian.Starkey@arm.com,m:mperttunen@nvidia.com,m:mhocko@suse.com,m:rostedt@goodmis.org,m:jonathanh@nvidia.com,m:maarten.lankhorst@linux.intel.com,m:skomatineni@nvidia.com,m:surenb@google.com,m:linux-arm-kernel@lists.infradead.org,m:linux-s390@vger.ke
 rnel.org,m:devicetree@vger.kernel.org,m:liam@infradead.org,m:linux-tegra@vger.kernel.org,m:catalin.marinas@arm.com,m:conor+dt@kernel.org,m:tzimmermann@suse.de,m:akpm@linux-foundation.org,m:gerald.schaefer@linux.ibm.com,m:agordeev@linux.ibm.com,m:ljs@kernel.org,m:tjmercier@google.com,m:mathieu.desnoyers@efficios.com,m:iommu@lists.linux.dev,m:rppt@kernel.org,m:svens@linux.ibm.com,m:yurynorov@gmail.com,m:krzk@kernel.org,m:thierryreding@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_GT_50(0.00)[54];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,mail.gmail.com:mid,nvidia.com:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 422B972A77F

T24gVGh1LCBKdWwgMiwgMjAyNiBhdCA3OjU44oCvQU0gVGhpZXJyeSBSZWRpbmcgPHRoaWVycnku
cmVkaW5nQGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIEp1bCAwMSwgMjAyNiBhdCAw
Mjo1MzoxMFBNIC0wNTAwLCBSb2IgSGVycmluZyAoQXJtKSB3cm90ZToNCj4gPg0KPiA+IE9uIFdl
ZCwgMDEgSnVsIDIwMjYgMTg6MDg6MTIgKzAyMDAsIFRoaWVycnkgUmVkaW5nIHdyb3RlOg0KPiA+
ID4gRnJvbTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4NCj4gPiA+DQo+ID4g
PiBUaGUgVmlkZW8gUHJvdGVjdGlvbiBSZWdpb24gKFZQUikgZm91bmQgb24gTlZJRElBIFRlZ3Jh
IGNoaXBzIGlzIGENCj4gPiA+IHJlZ2lvbiBvZiBtZW1vcnkgdGhhdCBpcyBwcm90ZWN0ZWQgZnJv
bSBDUFUgYWNjZXNzZXMuIEl0IGlzIHVzZWQgdG8NCj4gPiA+IGRlY29kZSBhbmQgcGxheSBiYWNr
IERSTSBwcm90ZWN0ZWQgY29udGVudC4NCj4gPiA+DQo+ID4gPiBJdCBpcyBhIHN0YW5kYXJkIHJl
c2VydmVkIG1lbW9yeSByZWdpb24gdGhhdCBjYW4gZXhpc3QgaW4gdHdvIGZvcm1zOg0KPiA+ID4g
c3RhdGljIFZQUiB3aGVyZSB0aGUgYmFzZSBhZGRyZXNzIGFuZCBzaXplIGFyZSBmaXhlZCAodXNl
cyB0aGUgInJlZyINCj4gPiA+IHByb3BlcnR5IHRvIGRlc2NyaWJlIHRoZSBtZW1vcnkpIGFuZCBh
IHJlc2l6YWJsZSBWUFIgd2hlcmUgb25seSB0aGUNCj4gPiA+IHNpemUgaXMga25vd24gdXBmcm9u
dCBhbmQgdGhlIE9TIGNhbiBhbGxvY2F0ZSBpdCB3aGVyZXZlciBpdCBjYW4gYmUNCj4gPiA+IGFj
Y29tb2RhdGVkLg0KPiA+ID4NCj4gPiA+IFJldmlld2VkLWJ5OiBSb2IgSGVycmluZyAoQXJtKSA8
cm9iaEBrZXJuZWwub3JnPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBSZWRpbmcgPHRy
ZWRpbmdAbnZpZGlhLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gQ2hhbmdlcyBpbiB2MjoNCj4gPiA+
IC0gYWRkIGV4YW1wbGVzIGZvciBmaXhlZCBhbmQgcmVzaXphYmxlIFZQUg0KPiA+ID4gLS0tDQo+
ID4gPiAgLi4uL252aWRpYSx0ZWdyYS12aWRlby1wcm90ZWN0aW9uLXJlZ2lvbi55YW1sICAgICAg
fCA3NiArKysrKysrKysrKysrKysrKysrKysrDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDc2IGlu
c2VydGlvbnMoKykNCj4gPiA+DQo+ID4NCj4gPiBNeSBib3QgZm91bmQgZXJyb3JzIHJ1bm5pbmcg
J21ha2UgZHRfYmluZGluZ19jaGVjaycgb24geW91ciBwYXRjaDoNCj4gPg0KPiA+IHlhbWxsaW50
IHdhcm5pbmdzL2Vycm9yczoNCj4gPg0KPiA+IGR0c2NoZW1hL2R0YyB3YXJuaW5ncy9lcnJvcnM6
DQo+ID4gL2J1aWxkcy9yb2JoZXJyaW5nL2R0LXJldmlldy1jaS9saW51eC9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXJ2ZWQtbWVtb3J5L252aWRpYSx0ZWdyYS12aWRlby1w
cm90ZWN0aW9uLXJlZ2lvbi5leGFtcGxlLmR0YjogcHJvdGVjdGVkQDJhODAwMDAwMCAobnZpZGlh
LHRlZ3JhLXZpZGVvLXByb3RlY3Rpb24tcmVnaW9uKTogcmVnOiBbWzIsIDI4MTg1NzIyODhdLCBb
MCwgMTg3OTA0ODE5Ml1dIGlzIHRvbyBsb25nDQo+ID4gICAgICAgZnJvbSBzY2hlbWEgJGlkOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9yZXNlcnZlZC1tZW1vcnkvbnZpZGlhLHRlZ3Jh
LXZpZGVvLXByb3RlY3Rpb24tcmVnaW9uLnlhbWwNCj4gPiAvYnVpbGRzL3JvYmhlcnJpbmcvZHQt
cmV2aWV3LWNpL2xpbnV4L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZl
ZC1tZW1vcnkvbnZpZGlhLHRlZ3JhLXZpZGVvLXByb3RlY3Rpb24tcmVnaW9uLmV4YW1wbGUuZHRi
OiBwcm90ZWN0ZWRAMmE4MDAwMDAwIChudmlkaWEsdGVncmEtdmlkZW8tcHJvdGVjdGlvbi1yZWdp
b24pOiBVbmV2YWx1YXRlZCBwcm9wZXJ0aWVzIGFyZSBub3QgYWxsb3dlZCAoJ25vLW1hcCcsICdy
ZWcnIHdlcmUgdW5leHBlY3RlZCkNCj4gPiAgICAgICBmcm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Jlc2VydmVkLW1lbW9yeS9udmlkaWEsdGVncmEtdmlkZW8t
cHJvdGVjdGlvbi1yZWdpb24ueWFtbA0KPg0KPiBBbnkgaWRlYXMgd2h5IHRoYXQgc2Vjb25kIGVy
cm9yIHNob3dzIHVwPyBJdCB0dXJucyBvdXQgdGhhdCBpdCBnb2VzIGF3YXkNCj4gd2hlbiB0aGUg
Zmlyc3Qgb25lIGlzIGZpeGVkICh3aGljaCBhZG1pdHRlZGx5IGlzIGEgc3R1cGlkIG1pc3Rha2Up
LCBidXQNCj4gSSBzcGVudCBxdWl0ZSBhIGJpdCBvZiB0aW1lIGxvb2tpbmcgZm9yIGEgZml4IGJl
Zm9yZSByZWFsaXppbmcgdGhhdCBpdCdzDQo+IG9ubHkgYSBzaWRlLWVmZmVjdCBvZiB0aGUgZmly
c3QuDQoNCklmIGEgcHJvcGVydHkgZmFpbHMgdmFsaWRhdGlvbiBpbiBhIHJlZmVyZW5jZWQgc2No
ZW1hLCB0aGVuIGV2ZXJ5dGhpbmcNCmluIHRoYXQgcmVmZXJlbmNlZCBzY2hlbWEgaXMgY29uc2lk
ZXJlZCBub3QgZXZhbHVhdGVkLiBTbyB0aGVuDQp1bmV2YWx1YXRlZFByb3BlcnRpZXMgaXMgYXBw
bGllZCB0byB0aGUgcHJvcGVydGllcyBvbmx5IGluIHRoZQ0KcmVmZXJlbmNlZCBzY2hlbWEuIFRo
YXQncyB3aHkgJ25vLW1hcCcgaXMgYWxzbyB1bmV2YWx1YXRlZC4gSnVzdCBhDQpxdWlyayBvZiBo
b3cganNvbi1zY2hlbWEgd29ya3MuLi4NCg0KUm9iDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
