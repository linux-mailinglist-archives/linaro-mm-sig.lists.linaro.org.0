Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF9170EB9E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 04:56:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E453743C5D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 02:56:37 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 626553EC81
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 02:56:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=uxo9Q6dl;
	spf=pass (lists.linaro.org: domain of chenhuacai@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=chenhuacai@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0E9AE61A1D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 02:56:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D28AC4339E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 May 2023 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684896993;
	bh=E9N/sAfiWUA+ZElz5wXgXJ0URf+jkMc0VYEsIDumwIM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=uxo9Q6dlBJ19Ma0l5jISNnb0DCAgr8wVExorQUZeY9BHGIy/JoMjyFUBZcadP/QNz
	 Dw8Mw8x67cCWCEr/84MM5RmLcu4DnSLmlOY75H/DSWFD/P7ydmT+HehVauNG4E3AU9
	 J2g2500D3KT9/JOdJ+6pd9B6aXvF+KEhWWra88IrSyl71kA+KWhnsgGdz6RZd2OTOW
	 9HqOJ9xhxHVmRCMqpHt99rTkHepRnaf0QY1oZD0KhxjCe0hRb6QM+EJoxVP1XPqofU
	 0t1EZUklTeEaxkWgh3iVLdk5uXcJEZLI/nbN2NzBf+xR3RhFg+MNdGh/WQ33lmZr91
	 hthznWcHiSEGQ==
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-96fab30d1e1so119791966b.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 19:56:33 -0700 (PDT)
X-Gm-Message-State: AC+VfDwJu4U1JlcLXaYkctCxxnk+ev3eA83ZJB0NL2L6vBvKUAtlFq9x
	w/WNrl5y8OXBVIKxxMfL1I0rP3Rn0G+6Kke3p4Y=
X-Google-Smtp-Source: ACHHUZ6i9KR0riGnMcQYXxLMBszSuF2aNO1/uSx3dwZ0hU2V8tO6jzLEGgXBjYfrHlAWi77UzA9fDJpaJtyeOq1i32A=
X-Received: by 2002:a17:907:1ca7:b0:96f:ddaa:c30d with SMTP id
 nb39-20020a1709071ca700b0096fddaac30dmr9621163ejc.26.1684896991695; Tue, 23
 May 2023 19:56:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230520105718.325819-1-15330273260@189.cn> <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name> <73447e35-f4df-9871-6210-b7bf1a3f04fc@189.cn>
 <97fe7af2-0a93-3f28-db6e-40a9b0798d49@xen0n.name>
In-Reply-To: <97fe7af2-0a93-3f28-db6e-40a9b0798d49@xen0n.name>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Wed, 24 May 2023 10:56:19 +0800
X-Gmail-Original-Message-ID: <CAAhV-H5iRHFUgWZb2HdE7RdAw-bYdn0-xJTdq=eQexabjmn5_w@mail.gmail.com>
Message-ID: <CAAhV-H5iRHFUgWZb2HdE7RdAw-bYdn0-xJTdq=eQexabjmn5_w@mail.gmail.com>
To: WANG Xuerui <kernel@xen0n.name>
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com,lists.loongnix.cn,glider.be,vger.kernel.org,lists.freedesktop.org,redhat.com,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[renesas];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 626553EC81
X-Spamd-Bar: --
Message-ID-Hash: FFSI5JGXJ4A2II4TRJP3CYTFZLYQHILY
X-Message-ID-Hash: FFSI5JGXJ4A2II4TRJP3CYTFZLYQHILY
X-MailFrom: chenhuacai@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sui Jingfeng <15330273260@189.cn>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sui Jingfeng <suijingfeng@loongson.cn>, Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Emil Velikov <emil.l.velikov@gmail.com>, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, linaro-mm-sig@lists.linaro.org, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FFSI5JGXJ4A2II4TRJP3CYTFZLYQHILY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgMjMsIDIwMjMgYXQgNDoxNOKAr1BNIFdBTkcgWHVlcnVpIDxrZXJuZWxAeGVu
MG4ubmFtZT4gd3JvdGU6DQo+DQo+IE9uIDIwMjMvNS8yMiAxNjowMiwgU3VpIEppbmdmZW5nIHdy
b3RlOg0KPiA+IEhpLA0KPiA+DQo+ID4gT24gMjAyMy81LzIxIDIwOjIxLCBXQU5HIFh1ZXJ1aSB3
cm90ZToNCj4gPj4+IC0tLSAvZGV2L251bGwNCj4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9s
b29uZ3Nvbi9LY29uZmlnDQo+ID4+PiBAQCAtMCwwICsxLDE3IEBADQo+ID4+PiArIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0KPiA+Pj4gKw0KPiA+Pj4gK2NvbmZpZyBEUk1fTE9P
TkdTT04NCj4gPj4+ICsgICAgdHJpc3RhdGUgIkRSTSBzdXBwb3J0IGZvciBMb29uZ3NvbiBHcmFw
aGljcyINCj4gPj4+ICsgICAgZGVwZW5kcyBvbiBEUk0gJiYgUENJICYmIE1NVQ0KPiA+Pj4gKyAg
ICBzZWxlY3QgRFJNX0tNU19IRUxQRVINCj4gPj4+ICsgICAgc2VsZWN0IERSTV9UVE0NCj4gPj4+
ICsgICAgc2VsZWN0IEkyQw0KPiA+Pj4gKyAgICBzZWxlY3QgSTJDX0FMR09CSVQNCj4gPj4+ICsg
ICAgaGVscA0KPiA+Pj4gKyAgICAgIFRoaXMgaXMgYSBEUk0gZHJpdmVyIGZvciBMb29uZ3NvbiBH
cmFwaGljcywgaXQgbWF5IGluY2x1ZGluZw0KPiA+Pg0KPiA+PiBEcm9wICJpdCBtYXkiOyAiaW5j
bHVkaW5nIiBzaG91bGQgYmUgZW5vdWdoLg0KPiA+Pg0KPiA+ICdpdCBtYXknIGlzIG1vcmUgKnBy
ZWNpc2UqIGhlcmUsIGJlY2F1c2UgY3VycmVudGx5IHdlIGRvbid0IHNoaXAgd2l0aA0KPiA+IHRo
ZSBzdXBwb3J0IGZvciBsb29uZ3NvbiAySyBzZXJpZXMgU29DLg0KPiA+DQo+ID4gSSdtIHRyeSB0
byBiZSBwcmVjaXNlIGFzIGZhciBhcyBJIGNhbiwgd2UgYXZvaWQgbWFkZSB0aGlzIGRyaXZlciB0
b28NCj4gPiBsYXJnZSBieSBpZ25vcmUgbG9vbmdzb24gMksgc2VyaWVzIFNvQyB0ZW1wb3Jhcnku
DQo+DQo+IFRoYXQncyBhIGdvb2QgaWRlYSEgRm9yIG5vdyB0aGUgcGF0Y2ggaXMgc28gbGFyZ2Ug
dGhhdCBteSByZXZpZXcgcmVwbHkNCj4gaXMgc2FpZCB0byBiZSBkcm9wcGVkIGJ5IHRoZSBsaXN0
cy4gRm9jdXNpbmcgb24gb25lIGJ1bmNoIG9mIHNpbWlsYXINCj4gbW9kZWxzIGZpcnN0IHRoZW4g
YWRkaW5nIHN1cHBvcnQgZm9yIHRoZSByZXN0IG5vdC1zby1zaW1pbGFyIG1vZGVscyBpcw0KPiB2
ZXJ5IGZyaWVuZGx5IHRvd2FyZHMgdGhlIHJldmlld2luZyBwcm9jZXNzIGFuZCB3aWxsIGhlbHAg
Y29kZSBxdWFsaXR5IHRvby4NCkkgc3VnZ2VzdCBzcGxpdCB0aGUgTFMySyBwYXJ0cyB0byBhIHNl
cGFyYXRlIHBhdGNoLCBidXQga2VlcCBpdCBpbiB0aGUNCnNhbWUgc2VyaWVzIHRvIGdldCB0aGVt
IHVwc3RyZWFtZWQgdG9nZXRoZXIuDQoNCkh1YWNhaQ0KPg0KPiA+DQo+ID4+PiArICAgICAgTFM3
QTIwMDAsIExTN0ExMDAwLCBMUzJLMjAwMCBhbmQgTFMySzEwMDAgZXRjLiBMb29uZ3NvbiBMUzdB
DQo+ID4+PiArICAgICAgc2VyaWVzIGFyZSBicmlkZ2UgY2hpcHNldCwgd2hpbGUgTG9vbmdzb24g
TFMySyBzZXJpZXMgYXJlIFNvQy4NCj4gPj4+ICsNCj4gPj4+ICsgICAgICBJZiAiTSIgaXMgc2Vs
ZWN0ZWQsIHRoZSBtb2R1bGUgd2lsbCBiZSBjYWxsZWQgbG9vbmdzb24uDQo+ID4+DQo+ID4+IEp1
c3QgImxvb25nc29uIj8NCj4gPg0KPiA+IFllcywgIHdoZW4gY29tcGlsZSB0aGlzIGRyaXZlciBh
cyBtb2R1bGUsICBsb29uZ3Nvbi5rbyB3aWxsIGJlIGdlbmVyYXRlZC4NCj4gPg0KPiA+ICAgZHJt
IHJhZGVvbiBpcyBhbHNvIGRvaW5nIHNvLCBTZWUgZHJtL3JhZGVvbi9LY29uZmlnLg0KPiA+DQo+
ID4+IEkga25vdyBpdCdzIGxpa2UgdGhpcyBmb3IgYWdlcyAoYXQgbGVhc3QgZGF0aW5nIGJhY2sg
dG8gdGhlIE1JUFMgZGF5cykNCj4gPj4gYnV0IHlvdSByZWFsbHkgZG9uJ3Qgd2FudCB0byBpbXBs
eSBMb29uZ3NvbiBpcyBtYWlubHkgYSBHUFUgY29tcGFueS4NCj4gPj4gU29tZXRoaW5nIGxpa2Ug
Imxvb25nc29uX2RybSIgb3IgImxzZGMiIG9yICJnc2dwdSIgY291bGQgYmUgYmV0dGVyLg0KPiA+
DQo+ID4gTm8sIHRoZXNlIG5hbWUgbWF5IGhhdmUgYmFja3dhcmQgY29tcGF0aWJpbGl0eSBwcm9i
bGVtcy4NCj4gPg0KPiA+IERvd25zdHJlYW0gZHJpdmVyIGFscmVhZHkgdGFrZW4gdGhvc2UgbmFt
ZS4NCj4gPg0KPiA+IHVzZXJzcGFjZSBkcml2ZXIgbmVlZCB0byBkaWZmZXJlbnRpYXRlIHRoZW0g
d2hvIGlzIHdoby4NCj4NCj4gSU1PIHRoaXMgc2hvdWxkbid0IGJlIGEgcHJvYmxlbS4gTGV0IG1l
IHRyeSBleHBsYWluaW5nIHRoaXM6IGN1cnJlbnRseSwNCj4gdXBzdHJlYW0gLyB0aGUgIm5ldyB3
b3JsZCIgZG9lc24ndCBoYXZlIGFueSBzdXBwb3J0IGZvciB0aGlzIGRyaXZlciBhdA0KPiBhbGws
IHNvIGFueSBuYW1lIHdpbGwgd29yazsganVzdCB1c2Ugd2hhdGV2ZXIgaXMgYXBwcm9wcmlhdGUg
ZnJvbSBhbg0KPiB1cHN0cmVhbSdzIHBlcnNwZWN0aXZlLCB0aGVuIG1ha2UgdGhlIHVzZXJzcGFj
ZSBiaXRzIHJlY29nbml6ZSBib3RoDQo+IHZhcmlhbnRzLCBhbmQgeW91J2xsIGJlIGZpbmUuIEFu
ZCB0aGUgImV4aXN0aW5nIiB1c2Vyc3BhY2UgZHJpdmVycyBjYW4NCj4gYWxzbyBjYXJyeSB0aGUg
Y2hhbmdlLCBpdCdsbCBqdXN0IGJlIGEgYnJhbmNoIG5ldmVyIHRha2VuIGluIHRoYXQgc2V0dXAu
DQo+DQo+IFNvLCBJJ20gc3RpbGwgaW4gZmF2b3Igb2Yga2VlcGluZyB0aGUgdXBzdHJlYW0gImNs
ZWFuIiB3aXRob3V0IGR1YmlvdXMNCj4gbmFtZXMgbGlrZSB0aGlzIChiYXJlICJsb29uZ3NvbiIp
LiBXaGF0IGRvIHlvdSB0aGluayBhYm91dCBteSBzdWdnZXN0aW9uDQo+IGFib3ZlPw0KPg0KPiAt
LQ0KPiBXQU5HICJ4ZW4wbiIgWHVlcnVpDQo+DQo+IExpbnV4L0xvb25nQXJjaCBtYWlsaW5nIGxp
c3Q6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xvb25nYXJjaC8NCj4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
