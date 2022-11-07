Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C3961FB44
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Nov 2022 18:26:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 601593F5F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Nov 2022 17:26:21 +0000 (UTC)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by lists.linaro.org (Postfix) with ESMTPS id 752E33F5D6
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Nov 2022 17:26:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=aigTDkQo;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.166.179) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-il1-f179.google.com with SMTP id bp12so4883172ilb.9
        for <linaro-mm-sig@lists.linaro.org>; Mon, 07 Nov 2022 09:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k05Y4e+PrHzSfY5WD7UasfT68aLf+beRaOmVJAx50IE=;
        b=aigTDkQoIrZ5du6qge/d6nU8XEtnOQxQGbL3jhraCwqwWSZTnNbLNTpEqxU68U6tqz
         dT7IR3PAOIU4mgnAoPDn37z3q9yYgeFFX+uYApeVR69MSmpm3kFyqRjh7+MlJpUiBvhf
         qt3+8nXCBsc8ZVaoQNdO/n7ydEFoq3KzLvkRg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k05Y4e+PrHzSfY5WD7UasfT68aLf+beRaOmVJAx50IE=;
        b=hR7TrTPQ1agcYCRd9MjbK6nPTfnca5Uloga4K3hgJkSFalihJRXuK0lJMcUmFKKoy2
         LfQghJkRdQRjbozUPKGNL6C2M5wiQCnNzvWILXK0U4yW7HjNG0JC2YQMEEMupBEPZgGE
         rIhuO5SluBWq+AHrwYxcV1JuGACStqOa2KsM7TQNOiiIdehqVlwYZ/fdmusMaF1divG6
         athHXamlb83LoAgmijlcZS4Qdm+VInQsyCeQ/vh7zbqpDrgZBvxMnxdFGkhjnbHi3gYV
         2z38PL/Q46XBWTtx03GwNubz5H3JFhRPJRO8RHWQXMxrQoWJvchS5TwDlKBWw+vC7jgV
         JYGw==
X-Gm-Message-State: ACrzQf2v/a5iDYVHXfZHsrWmvggkGdtko7zRM1rcEk3VLpLPkprkeL3x
	1/UMrPerAX8HZfHU/GBxbZ+igWegQBk4Rsdz6jI6wg==
X-Google-Smtp-Source: AMsMyM7TUXJXcis8PmcF9tz+mPP8pp0mnUv/KZmZclnSef+BAXAmZIP+VqDuAGl+a0+0RYzgd/QOqiORrMVMDd6y2JE=
X-Received: by 2002:a92:d681:0:b0:2ff:573c:8d44 with SMTP id
 p1-20020a92d681000000b002ff573c8d44mr29932067iln.203.1667841961903; Mon, 07
 Nov 2022 09:26:01 -0800 (PST)
MIME-Version: 1.0
References: <20221017172229.42269-1-dmitry.osipenko@collabora.com> <20221017172229.42269-19-dmitry.osipenko@collabora.com>
In-Reply-To: <20221017172229.42269-19-dmitry.osipenko@collabora.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 7 Nov 2022 18:25:50 +0100
Message-ID: <CAKMK7uFFwTfNYT2BrubYvUMrH4fEmtF=yJshUck3-gKYLGqxCg@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 752E33F5D6
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[daniel@ffwll.ch,daniel.vetter@ffwll.ch];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_NEQ_ENVFROM(0.00)[daniel@ffwll.ch,daniel.vetter@ffwll.ch];
	R_SPF_NA(0.00)[no SPF record];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.179:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	FREEMAIL_CC(0.00)[linux.ie,redhat.com,chromium.org,gmail.com,collabora.com,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.linux-foundation.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ffwll.ch:dkim,ffwll.ch:url];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_GT_50(0.00)[51];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: B3U62AZZX2WIJHTNH3632T2C2GJHCVBN
X-Message-ID-Hash: B3U62AZZX2WIJHTNH3632T2C2GJHCVBN
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Qiang Yu <yuq82
 5@gmail.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>, Ruhl Michael J <michael.j.ruhl@intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 18/21] dma-buf: Move dma_buf_mmap() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B3U62AZZX2WIJHTNH3632T2C2GJHCVBN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAxNyBPY3QgMjAyMiBhdCAxOToyNSwgRG1pdHJ5IE9zaXBlbmtvDQo8ZG1pdHJ5Lm9z
aXBlbmtvQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPg0KPiBNb3ZlIGRtYV9idWZfbW1hcCgpIGZ1
bmN0aW9uIHRvIHRoZSBkeW5hbWljIGxvY2tpbmcgc3BlY2lmaWNhdGlvbiBieQ0KPiB0YWtpbmcg
dGhlIHJlc2VydmF0aW9uIGxvY2suIE5laXRoZXIgb2YgdGhlIHRvZGF5J3MgZHJpdmVycyB0YWtl
IHRoZQ0KPiByZXNlcnZhdGlvbiBsb2NrIHdpdGhpbiB0aGUgbW1hcCgpIGNhbGxiYWNrLCBoZW5j
ZSBpdCdzIHNhZmUgdG8gZW5mb3JjZQ0KPiB0aGUgbG9ja2luZy4NCj4NCj4gQWNrZWQtYnk6IFN1
bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+IEFja2VkLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IERt
aXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQoNCkp1c3Qgbm90
aWNlZCB0aGlzIHdoaWxlIHJlYWRpbmcgY29kZSAuLi4gdGhpcyBwYXRjaCBzZWVtcyB0byBoYXZl
DQptaXNzZWQgZG1hX2J1Zl9tbWFwX2ludGVybmFsKCk/DQoNCk1pZ2h0IGJlIGdvb2QgaWYgYXQg
bGVhc3Qgc29tZSBkcml2ZXJzIGdhaW4gYSBkbWFfcmVzdl9hc3NlcnRfaGVsZCBpbg0KdGhhdCBw
YXRoIHRvIG1ha2Ugc3VyZSB3ZSdyZSBub3QgcXVpdGUgdGhpcyBiYWQsIHRvZ2V0aGVyIHdpdGgg
Zml4aW5nDQp0aGlzIGlzc3VlLg0KLURhbmllbA0KDQo+IC0tLQ0KPiAgZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYyB8IDggKysrKysrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IGY1NGM2NDlmOTIyYS4u
ZjE0OWIzODRmNGRkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+
ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gQEAgLTEzOTAsNiArMTM5MCw4IEBA
IEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MsIERNQV9CVUYpOw0K
PiAgaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qgdm1fYXJl
YV9zdHJ1Y3QgKnZtYSwNCj4gICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIHBnb2ZmKQ0K
PiAgew0KPiArICAgICAgIGludCByZXQ7DQo+ICsNCj4gICAgICAgICBpZiAoV0FSTl9PTighZG1h
YnVmIHx8ICF2bWEpKQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+DQo+IEBA
IC0xNDEwLDcgKzE0MTIsMTEgQEAgaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1h
YnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwNCj4gICAgICAgICB2bWFfc2V0X2ZpbGUo
dm1hLCBkbWFidWYtPmZpbGUpOw0KPiAgICAgICAgIHZtYS0+dm1fcGdvZmYgPSBwZ29mZjsNCj4N
Cj4gLSAgICAgICByZXR1cm4gZG1hYnVmLT5vcHMtPm1tYXAoZG1hYnVmLCB2bWEpOw0KPiArICAg
ICAgIGRtYV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCBOVUxMKTsNCj4gKyAgICAgICByZXQgPSBk
bWFidWYtPm9wcy0+bW1hcChkbWFidWYsIHZtYSk7DQo+ICsgICAgICAgZG1hX3Jlc3ZfdW5sb2Nr
KGRtYWJ1Zi0+cmVzdik7DQo+ICsNCj4gKyAgICAgICByZXR1cm4gcmV0Ow0KPiAgfQ0KPiAgRVhQ
T1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9tbWFwLCBETUFfQlVGKTsNCj4NCj4gLS0NCj4gMi4z
Ny4zDQo+DQoNCg0KLS0gDQpEYW5pZWwgVmV0dGVyDQpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwg
Q29ycG9yYXRpb24NCmh0dHA6Ly9ibG9nLmZmd2xsLmNoDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
