Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEF2A839C6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Apr 2025 08:50:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F21CE459B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Apr 2025 06:50:06 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	by lists.linaro.org (Postfix) with ESMTPS id D4D6344B31
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Apr 2025 06:49:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=EajlvdCw;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.42 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-2cc89c59cc0so938473fac.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Apr 2025 23:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744267791; x=1744872591; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FpF7wEE+1cJWx9zAtKf9QlygCmnNGJM9CNsxuBDedRk=;
        b=EajlvdCwrew61H4HXQdpjGKiJYrBtfA8H/28VUFanUukrWHuvWAQ2oq8iRA+hC7iYz
         uOisSe1jNX53nSSp4VNpsc7j5pbCuTtytSdwFYSuxC+0QeX3yGimdceM/cmesFNj1ovA
         SjPMWBfSb9tKGYPKlwny9jjt5XvC0kOmxKKjakmgc75O1eMmdRzUkFm9SD9wNJ0lhLv7
         UIDK0FSIoX2Y0cFJ4gKvhA34+LJkg5p+N49x9DgSqJRtiV61LKpLNOVkEB0BAMN03m2g
         zoh4tgDu6f3DEYU2xQN6wym64rhe9Eam6P5My306DliFJexCSUOcBFcWlBO5bbYFRwat
         pEOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744267791; x=1744872591;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FpF7wEE+1cJWx9zAtKf9QlygCmnNGJM9CNsxuBDedRk=;
        b=mY7jeCUURe0oilPoMHP8XBG3e7+39oMFfpF2Dp/Bt8/ZigxWJgT+IUMdj5keC6VtmV
         7aJq7tCKUpTH0DjTuYSQCvfMDTkRFu/0HvRQP6bkEKpMkERFo9Mjz7/A57dmWHUu2KS2
         FOrE8U0YbBcqi8eJnjrmSqd0TdDZC3xLvndjN+z7Muh4hTFJuy9R+LlJTLEB9GkQL5SO
         ilRj2XFf4eXci4GRUtAFN//JpXaTxgt981hQYNKnFwGhjNtQm6KGCBGR9noSd6YDF0rN
         80LuUWv0FyTmQadSwGtPvoe8Sa36U0TLNPsIV9jHFnje9kPO6oJ8BcgKy36ry6Nfcu/h
         gRRg==
X-Forwarded-Encrypted: i=1; AJvYcCXOA4BG4c7hUH4zMMDQxXvvBE4FkoxfWsVX0gpjux5t0p7qDcNNM/ai8IpMtONpFTQ053e/pn2Dq2SmsnKb@lists.linaro.org
X-Gm-Message-State: AOJu0YyD5lVzCtfunM9fyuHIfodqHOY8zXLmN0s1h8v630j/LcZmigWC
	VdTYtZf6s5qR3f+qJT20qXS8bqgNpTGsL+7X5kM+Ay7MQPROK01lmYSNhVtTDqcorRAnOr/d9Xz
	GmuzLxt6TsnaVnf9eph72XqpS7CVUeZE80KCys4bU
X-Gm-Gg: ASbGncvUFfeF5KF3sfCYq/RUr4X5wOvOZJEy63uKXGJZ1IVUY1GSNoSDWD2RP+R7CuJ
	EDA25l9E71TFg4M93FEgkE6RfocQpak6QxcVMfFFyuD6iX/Mzro0OD0RkpPTTrCBG74xE4JBMMB
	wqZnPQhXJFzWPH4p9181fpiwo=
X-Google-Smtp-Source: AGHT+IHI4FgOoH6eOg0ztL2Lx7hiXdosqXiiUD+d8J9IOEiCubchzZoLqMtVD0Mmvo3sJz+QQ7r84CVnm0uFw++DJDA=
X-Received: by 2002:a05:6871:4009:b0:2c4:1b1c:42c3 with SMTP id
 586e51a60fabf-2d0b3a2a298mr929589fac.9.1744267791101; Wed, 09 Apr 2025
 23:49:51 -0700 (PDT)
MIME-Version: 1.0
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
 <20250305130634.1850178-6-jens.wiklander@linaro.org> <Z-JOPgcWlpTlskgd@sumit-X1>
 <CAHUa44GjpHT5Nqo+Ar5jNYNPV-YJQYpLTCf=7oJ1o0VjP-t0nA@mail.gmail.com>
 <Z-ucuPzwz4IqVTgb@sumit-X1> <CAHUa44FpsCVrbwj1=nsJVJFVJSF1kzKdWAkAMXRu6EdLrLvh8g@mail.gmail.com>
 <Z_To9V-JOKZ7ChhE@sumit-X1> <CAHUa44EGWuVPjoxpG-S66he=6dkvkwzxNewaGKVKXUxrO41ztg@mail.gmail.com>
 <Z_ZtDQQY4eouqBh8@sumit-X1>
In-Reply-To: <Z_ZtDQQY4eouqBh8@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 10 Apr 2025 08:49:39 +0200
X-Gm-Features: ATxdqUEvXiuy3pdj5yJylN_i-qNjZAR_HHoPy2N2W57yI_8PinKhMCxfS6kRFGI
Message-ID: <CAHUa44GFzG8dr1Kbapbjy77c-wJb4gQVVom24eLLueOK=gCq=A@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Queue-Id: D4D6344B31
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.42:from];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid,linaro.org:dkim,mail-oa1-f42.google.com:helo,mail-oa1-f42.google.com:rdns];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[209.85.160.42:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.160.42:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IKYHCBMNHSCWIQCONNXJNPKRS3DEUV3H
X-Message-ID-Hash: IKYHCBMNHSCWIQCONNXJNPKRS3DEUV3H
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 05/10] tee: implement restricted DMA-heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IKYHCBMNHSCWIQCONNXJNPKRS3DEUV3H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgOSwgMjAyNSBhdCAyOjUw4oCvUE0gU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0Br
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gT24gVHVlLCBBcHIgMDgsIDIwMjUgYXQgMDM6Mjg6NDVQ
TSArMDIwMCwgSmVucyBXaWtsYW5kZXIgd3JvdGU6DQo+ID4gT24gVHVlLCBBcHIgOCwgMjAyNSBh
dCAxMToxNOKAr0FNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAa2VybmVsLm9yZz4gd3JvdGU6DQo+
ID4gPg0KPiA+ID4gT24gVHVlLCBBcHIgMDEsIDIwMjUgYXQgMTA6MzM6MDRBTSArMDIwMCwgSmVu
cyBXaWtsYW5kZXIgd3JvdGU6DQo+ID4gPiA+IE9uIFR1ZSwgQXByIDEsIDIwMjUgYXQgOTo1OOKA
r0FNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4gPiA+ID4N
Cj4gPiA+ID4gPiBPbiBUdWUsIE1hciAyNSwgMjAyNSBhdCAxMTo1NTo0NkFNICswMTAwLCBKZW5z
IFdpa2xhbmRlciB3cm90ZToNCj4gPiA+ID4gPiA+IEhpIFN1bWl0LA0KPiA+ID4gPiA+ID4NCj4g
PiA+ID4gPg0KPiA+ID4gPiA+IDxzbmlwPg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPg0KPiA+ID4g
PiA+ID4gPg0KPiA+ID4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ID4gPiArI2luY2x1ZGUgInRl
ZV9wcml2YXRlLmgiDQo+ID4gPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gPiA+ICtzdHJ1Y3Qg
dGVlX2RtYV9oZWFwIHsNCj4gPiA+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3QgZG1hX2hlYXAgKmhl
YXA7DQo+ID4gPiA+ID4gPiA+ID4gKyAgICAgZW51bSB0ZWVfZG1hX2hlYXBfaWQgaWQ7DQo+ID4g
PiA+ID4gPiA+ID4gKyAgICAgc3RydWN0IHRlZV9yc3RtZW1fcG9vbCAqcG9vbDsNCj4gPiA+ID4g
PiA+ID4gPiArICAgICBzdHJ1Y3QgdGVlX2RldmljZSAqdGVlZGV2Ow0KPiA+ID4gPiA+ID4gPiA+
ICsgICAgIC8qIFByb3RlY3RzIHBvb2wgYW5kIHRlZWRldiBhYm92ZSAqLw0KPiA+ID4gPiA+ID4g
PiA+ICsgICAgIHN0cnVjdCBtdXRleCBtdTsNCj4gPiA+ID4gPiA+ID4gPiArfTsNCj4gPiA+ID4g
PiA+ID4gPiArDQo+ID4gPiA+ID4gPiA+ID4gK3N0cnVjdCB0ZWVfaGVhcF9idWZmZXIgew0KPiA+
ID4gPiA+ID4gPiA+ICsgICAgIHN0cnVjdCB0ZWVfcnN0bWVtX3Bvb2wgKnBvb2w7DQo+ID4gPiA+
ID4gPiA+ID4gKyAgICAgc3RydWN0IHRlZV9kZXZpY2UgKnRlZWRldjsNCj4gPiA+ID4gPiA+ID4g
PiArICAgICBzaXplX3Qgc2l6ZTsNCj4gPiA+ID4gPiA+ID4gPiArICAgICBzaXplX3Qgb2ZmczsN
Cj4gPiA+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3Qgc2dfdGFibGUgdGFibGU7DQo+ID4gPiA+ID4g
PiA+ID4gK307DQo+ID4gPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gPiA+ICtzdHJ1Y3QgdGVl
X2hlYXBfYXR0YWNobWVudCB7DQo+ID4gPiA+ID4gPiA+ID4gKyAgICAgc3RydWN0IHNnX3RhYmxl
IHRhYmxlOw0KPiA+ID4gPiA+ID4gPiA+ICsgICAgIHN0cnVjdCBkZXZpY2UgKmRldjsNCj4gPiA+
ID4gPiA+ID4gPiArfTsNCj4gPiA+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiA+ID4gK3N0cnVj
dCB0ZWVfcnN0bWVtX3N0YXRpY19wb29sIHsNCj4gPiA+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3Qg
dGVlX3JzdG1lbV9wb29sIHBvb2w7DQo+ID4gPiA+ID4gPiA+ID4gKyAgICAgc3RydWN0IGdlbl9w
b29sICpnZW5fcG9vbDsNCj4gPiA+ID4gPiA+ID4gPiArICAgICBwaHlzX2FkZHJfdCBwYV9iYXNl
Ow0KPiA+ID4gPiA+ID4gPiA+ICt9Ow0KPiA+ID4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ID4g
PiArI2lmICFJU19NT0RVTEUoQ09ORklHX1RFRSkgJiYgSVNfRU5BQkxFRChDT05GSUdfRE1BQlVG
X0hFQVBTKQ0KPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiBDYW4gdGhpcyBkZXBlbmRlbmN5
IHJhdGhlciBiZSBiZXR0ZXIgbWFuYWdlZCB2aWEgS2NvbmZpZz8NCj4gPiA+ID4gPiA+DQo+ID4g
PiA+ID4gPiBUaGlzIHdhcyB0aGUgZWFzaWVzdCB5ZXQgc29tZXdoYXQgZmxleGlibGUgc29sdXRp
b24gSSBjb3VsZCBmaW5kLiBJZg0KPiA+ID4gPiA+ID4geW91IGhhdmUgc29tZXRoaW5nIGJldHRl
ciwgbGV0J3MgdXNlIHRoYXQgaW5zdGVhZC4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4NCj4gPiA+
ID4gPiAtLS0gYS9kcml2ZXJzL3RlZS9vcHRlZS9LY29uZmlnDQo+ID4gPiA+ID4gKysrIGIvZHJp
dmVycy90ZWUvb3B0ZWUvS2NvbmZpZw0KPiA+ID4gPiA+IEBAIC01LDYgKzUsNyBAQCBjb25maWcg
T1BURUUNCj4gPiA+ID4gPiAgICAgICAgIGRlcGVuZHMgb24gSEFWRV9BUk1fU01DQ0MNCj4gPiA+
ID4gPiAgICAgICAgIGRlcGVuZHMgb24gTU1VDQo+ID4gPiA+ID4gICAgICAgICBkZXBlbmRzIG9u
IFJQTUIgfHwgIVJQTUINCj4gPiA+ID4gPiArICAgICAgIHNlbGVjdCBETUFCVUZfSEVBUFMNCj4g
PiA+ID4gPiAgICAgICAgIGhlbHANCj4gPiA+ID4gPiAgICAgICAgICAgVGhpcyBpbXBsZW1lbnRz
IHRoZSBPUC1URUUgVHJ1c3RlZCBFeGVjdXRpb24gRW52aXJvbm1lbnQgKFRFRSkNCj4gPiA+ID4g
PiAgICAgICAgICAgZHJpdmVyLg0KPiA+ID4gPg0KPiA+ID4gPiBJIHdhbnRlZCB0byBhdm9pZCB0
aGF0IHNpbmNlIHRoZXJlIGFyZSBwbGVudHkgb2YgdXNlIGNhc2VzIHdoZXJlDQo+ID4gPiA+IERN
QUJVRl9IRUFQUyBhcmVuJ3QgbmVlZGVkLg0KPiA+ID4NCj4gPiA+IFllYWgsIGJ1dCBob3cgdGhl
IHVzZXJzIHdpbGwgZmlndXJlIG91dCB0aGUgZGVwZW5kZW5jeSB0byBlbmFibGUgRE1BDQo+ID4g
PiBoZWFwcyB3aXRoIFRFRSBzdWJzeXN0ZW0uDQo+ID4NCj4gPiBJIGhvcGUsIHdpdGhvdXQgdG9v
IG11Y2ggZGlmZmljdWx0eS4gVGhleSBhcmUgYWZ0ZXIgYWxsIGxvb2tpbmcgZm9yIGENCj4gPiB3
YXkgdG8gYWxsb2NhdGUgbWVtb3J5IGZyb20gYSBETUEgaGVhcC4NCj4gPg0KPiA+ID4gU28gaXQn
cyBiZXR0ZXIgd2UgcHJvdmlkZSBhIGdlbmVyaWMga2VybmVsDQo+ID4gPiBLY29uZmlnIHdoaWNo
IGVuYWJsZXMgYWxsIHRoZSBkZWZhdWx0IGZlYXR1cmVzLg0KPiA+DQo+ID4gSSBkaXNhZ3JlZSwg
aXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIGNvbmZpZ3VyZSB3aXRob3V0IERNQUJVRl9IRUFQUyBp
ZiBkZXNpcmVkLg0KPg0KPiBJdCdzIGhhcmQgdG8gc2VlIGEgdXNlLWNhc2UgZm9yIHRoYXQgYWRk
aXRpb25hbCBjb21waWxlIHRpbWUgb3B0aW9uLiBJZg0KPiB5b3UgYXJlIHdvcnJpZWQgYWJvdXQg
a2VybmVsIHNpemUgdGhlbiB0aG9zZSBjYW4gYmUgYnVpbHQgYXMgbW9kdWxlcy4gT24NCj4gdGhl
IG90aGVyIGhhbmQgdGhlIGJlbmlmaXQgaXMgdGhhdCB3ZSBhdm9pZCBpZmRlZmVyeSBhbmQgcHJv
dmlkaW5nIHNhbmUNCj4gVEVFIGRlZmF1bHRzIHdoZXJlIGZlYXR1cmVzIGNhbiBiZSBkZXRlY3Rl
ZCBhbmQgZW5hYmxlZCBhdCBydW50aW1lDQo+IGluc3RlYWQuDQoNCk15IHByaW1hcnkgY29uY2Vy
biBpc24ndCBrZXJuZWwgc2l6ZSwgZXZlbiBpZiBpdCBzaG91bGRuJ3QgYmUNCmlycmVsZXZhbnQu
IEl0IGRvZXNuJ3Qgc2VlbSByaWdodCB0byBlbmFibGUgZmVhdHVyZXMgdGhhdCBhcmUgbm90DQph
c2tlZCBmb3IgY2FzdWFsbHkuIEluIHRoaXMgY2FzZSwgaXQncyBub3QgdW5yZWFzb25hYmxlIG9y
IHVuZXhwZWN0ZWQNCnRoYXQgRE1BQlVGX0hFQVBTIG11c3QgYmUgZXhwbGljaXRseSBlbmFibGVk
IGluIHRoZSBjb25maWcgaWYgYSBoZWFwDQppbnRlcmZhY2UgaXMgbmVlZGVkLiBJdCdzIHRoZSBz
YW1lIGFzIGJlZm9yZSB0aGlzIHBhdGNoIHNldC4NCg0KPg0KPiA+DQo+ID4gPg0KPiA+ID4gPiBU
aGlzIHNlZW1zIHRvIGRvIHRoZSBqb2I6DQo+ID4gPiA+ICtjb25maWcgVEVFX0RNQUJVRl9IRUFQ
DQo+ID4gPiA+ICsgYm9vbA0KPiA+ID4gPiArIGRlcGVuZHMgb24gVEVFID0geSAmJiBETUFCVUZf
SEVBUFMNCj4gPiA+ID4NCj4gPiA+ID4gV2UgY2FuIG9ubHkgdXNlIERNQUJVRl9IRUFQUyBpZiB0
aGUgVEVFIHN1YnN5c3RlbSBpcyBjb21waWxlZCBpbnRvIHRoZSBrZXJuZWwuDQo+ID4gPg0KPiA+
ID4gQWgsIEkgc2VlLiBTbyB3ZSBhcmVuJ3QgZXhwb3J0aW5nIHRoZSBETUEgaGVhcHMgQVBJcyBm
b3IgVEVFIHN1YnN5c3RlbQ0KPiA+ID4gdG8gdXNlLiBXZSBzaG91bGQgZG8gdGhhdCBzdWNoIHRo
YXQgdGhlcmUgaXNuJ3QgYSBoYXJkIGRlcGVuZGVuY3kgdG8NCj4gPiA+IGNvbXBpbGUgdGhlbSBp
bnRvIHRoZSBrZXJuZWwuDQo+ID4NCj4gPiBJIHdhcyBzYXZpbmcgdGhhdCBmb3IgYSBsYXRlciBw
YXRjaCBzZXQgYXMgYSBsYXRlciBwcm9ibGVtLiBXZSBtYXkNCj4gPiBzYXZlIHNvbWUgdGltZSBi
eSBub3QgZG9pbmcgaXQgbm93Lg0KPiA+DQo+DQo+IEJ1dCBJIHRoaW5rIGl0J3Mgbm90IGEgY29y
cmVjdCB3YXkgdG8ganVzdCByZXVzZSBpbnRlcm5hbCBBUElzIGZyb20gRE1BDQo+IGhlYXBzIHN1
YnN5c3RlbSB3aXRob3V0IGV4cG9ydGluZyB0aGVtLiBJdCBjYW4gYmUgc2VlbiBhcyBhIGludGVy
DQo+IHN1YnN5c3RlbSBBUEkgY29udHJhY3QgYnJlYWNoLiBJIGhvcGUgaXQgd29uJ3QgYmUgYW4g
aXNzdWUgd2l0aCBETUEgaGVhcA0KPiBtYWludGFpbmVycyByZWdhcmRpbmcgZXhwb3J0IG9mIHRo
b3NlIEFQSXMuDQoNCkZhaXIgZW5vdWdoLiBJJ2xsIGFkZCBhIHBhdGNoIGluIHRoZSBuZXh0IHBh
dGNoIHNldCBmb3IgdGhhdC4gSSBndWVzcw0KdGhlIHNhbWUgZ29lcyBmb3IgQ01BLg0KDQpDaGVl
cnMsDQpKZW5zDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
